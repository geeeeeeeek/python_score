# Create your views here.
from rest_framework.decorators import api_view, authentication_classes

from myapp import utils
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Score
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import ScoreSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':

        scores = Score.objects.all().order_by('-create_time')

        serializer = ScoreSerializer(scores, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['GET'])
def detail(request):

    try:
        pk = request.GET.get('id', -1)
        score = Score.objects.get(pk=pk)
    except Score.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    if request.method == 'GET':
        serializer = ScoreSerializer(score)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    serializer = ScoreSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='创建失败')


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        score = Score.objects.get(pk=pk)
    except Score.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    serializer = ScoreSerializer(score, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='查询成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='更新失败')


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        Score.objects.filter(id__in=ids_arr).delete()
    except Score.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')
    return APIResponse(code=0, msg='删除成功')
