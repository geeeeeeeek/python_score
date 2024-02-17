<template>
  <div>
    <!--页面区域-->
    <div class="page-view">
      <div class="table-operations">
        <a-space>
          <a-button type="primary" @click="handleAdd">新增</a-button>
          <a-button @click="handleBatchDelete">批量删除</a-button>
        </a-space>
      </div>
      <a-table
        size="middle"
        rowKey="id"
        :loading="data.loading"
        :columns="columns"
        :data-source="data.dataList"
        :scroll="{ x: 'max-content' }"
        :row-selection="rowSelection"
        :pagination="{
          size: 'default',
          current: data.page,
          pageSize: data.pageSize,
          onChange: (current) => (data.page = current),
          showSizeChanger: false,
          showTotal: (total) => `共${total}条数据`,
        }"
      >
        <template #bodyCell="{ text, record, index, column }">
          <template v-if="column.key === 'operation'">
            <span>
              <a @click="handleEdit(record)">编辑</a>
              <a-divider type="vertical" />
              <a-popconfirm title="确定删除?" ok-text="是" cancel-text="否" @confirm="confirmDelete(record)">
                <a href="#">删除</a>
              </a-popconfirm>
            </span>
          </template>
        </template>
      </a-table>
    </div>

    <!--弹窗区域-->
    <div>
      <a-modal
        :visible="modal.visile"
        :forceRender="true"
        :title="modal.title"
        width="880px"
        ok-text="确认"
        cancel-text="取消"
        @cancel="handleCancel"
        @ok="handleOk"
      >
        <template #footer>
          <a-button key="back" @click="handleCancel">取消</a-button>
          <a-button key="submit" type="primary" :loading="submitting" @click="handleOk">确认</a-button>
        </template>
        <div style="padding-right: 16px; max-height: 480px; overflow-x: hidden; overflow-y: auto">
          <a-form ref="myform" :label-col="{ style: { width: '80px' } }" :model="modal.form" :rules="modal.rules">
            <a-row :gutter="24">
              <a-col span="12">
                <a-form-item label="姓名" name="title">
                  <a-input placeholder="请输入" v-model:value="modal.form.title" />
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="性别" name="sex">
                  <a-input placeholder="请输入" v-model:value="modal.form.sex" />
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="年龄" name="age">
                  <a-input placeholder="请输入" v-model:value="modal.form.age" />
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="对应老人" name="oldperson">
                  <a-input placeholder="请输入" v-model:value="modal.form.oldperson" />
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="与老人关系" name="relation">
                  <a-input placeholder="请输入" v-model:value="modal.form.relation" />
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="备注" name="remark">
                  <a-input placeholder="请输入" v-model:value="modal.form.remark" />
                </a-form-item>
              </a-col>
            </a-row>
          </a-form>
        </div>
      </a-modal>
    </div>
  </div>
</template>

<script setup lang="ts">
  import { FormInstance, message, SelectProps } from 'ant-design-vue';
  import { createApi, listApi, updateApi, deleteApi } from '/@/api/family';
  import { listApi as listClassificationApi } from '/@/api/classification';
  import { listApi as listTagApi } from '/@/api/tag';
  import { BASE_URL } from '/@/store/constants';

  const columns = reactive([
    {
      title: '序号',
      dataIndex: 'index',
      key: 'index',
      width: 60,
    },
    {
      title: '姓名',
      dataIndex: 'title',
      key: 'title',
    },
    {
      title: '性别',
      dataIndex: 'sex',
      key: 'sex',
    },
    {
      title: '年龄',
      dataIndex: 'age',
      key: 'age',
    },
    {
      title: '对应老人',
      dataIndex: 'oldperson',
      key: 'oldperson',
    },
    {
      title: '与老人关系',
      dataIndex: 'relation',
      key: 'relation',
    },
    {
      title: '备注',
      dataIndex: 'remark',
      key: 'remark',
    },
    {
      title: '操作',
      dataIndex: 'action',
      key: 'operation',
      align: 'center',
      fixed: 'right',
      width: 140,
    },
  ]);

  const beforeUpload = (file: File) => {
    // 改封面文件名
    const fileName = new Date().getTime().toString() + '.' + file.type.substring(6);
    const copyFile = new File([file], fileName);
    console.log(copyFile);
    modal.form.imageFile = copyFile;
    return false;
  };

  // 文件列表
  const fileList = ref<any[]>([]);

  const submitting = ref<boolean>(false);

  // 页面数据
  const data = reactive({
    dataList: [],
    loading: false,
    keyword: '',
    selectedRowKeys: [] as any[],
    pageSize: 10,
    page: 1,
  });

  // 弹窗数据源
  const modal = reactive({
    visile: false,
    editFlag: false,
    title: '',
    cData: [],
    tagData: [{}],
    form: {
      id: undefined,
      title: undefined,
      classification: undefined,
      sex: undefined,
      age: undefined,
      oldperson: undefined,
      relation: undefined,
      remark: undefined,
      status: undefined,
    },
    rules: {
      title: [{ required: true, message: '请输入', trigger: 'change' }],
    },
  });

  const myform = ref<FormInstance>();

  onMounted(() => {
    getDataList();
  });

  const getDataList = () => {
    data.loading = true;
    listApi({
      keyword: data.keyword,
    })
      .then((res) => {
        data.loading = false;
        console.log(res);
        res.data.forEach((item: any, index: any) => {
          item.index = index + 1;
        });
        data.dataList = res.data;
      })
      .catch((err) => {
        data.loading = false;
        console.log(err);
      });
  };

  const getCDataList = () => {
    listClassificationApi({}).then((res) => {
      modal.cData = res.data;
    });
  };
  const getTagDataList = () => {
    listTagApi({}).then((res) => {
      res.data.forEach((item, index) => {
        item.index = index + 1;
      });
      modal.tagData = res.data;
    });
  };

  const onSearchChange = (e: Event) => {
    data.keyword = e?.target?.value;
    console.log(data.keyword);
  };

  const onSearch = () => {
    getDataList();
  };

  const rowSelection = ref({
    onChange: (selectedRowKeys: (string | number)[], selectedRows: DataItem[]) => {
      console.log(`selectedRowKeys: ${selectedRowKeys}`, 'selectedRows: ', selectedRows);
      data.selectedRowKeys = selectedRowKeys;
    },
  });

  const handleAdd = () => {
    resetModal();
    modal.visile = true;
    modal.editFlag = false;
    modal.title = '新增';
    // 重置
    for (const key in modal.form) {
      modal.form[key] = undefined;
    }
    modal.form.cover = undefined;
  };
  const handleEdit = (record: any) => {
    resetModal();
    modal.visile = true;
    modal.editFlag = true;
    modal.title = '编辑';
    // 重置
    for (const key in modal.form) {
      modal.form[key] = undefined;
    }
    for (const key in record) {
      if (record[key]) {
        modal.form[key] = record[key];
      }
    }
    // if (modal.form.cover) {
    //   modal.form.coverUrl = BASE_URL + modal.form.cover;
    //   modal.form.cover = undefined;
    // }
  };

  const confirmDelete = (record: any) => {
    console.log('delete', record);
    deleteApi({ ids: record.id })
      .then((res) => {
        getDataList();
      })
      .catch((err) => {
        message.error(err.msg || '操作失败');
      });
  };

  const handleBatchDelete = () => {
    console.log(data.selectedRowKeys);
    if (data.selectedRowKeys.length <= 0) {
      console.log('hello');
      message.warn('请勾选删除项');
      return;
    }
    deleteApi({ ids: data.selectedRowKeys.join(',') })
      .then((res) => {
        message.success('删除成功');
        data.selectedRowKeys = [];
        getDataList();
      })
      .catch((err) => {
        message.error(err.msg || '操作失败');
      });
  };

  const handleOk = () => {
    myform.value
      ?.validate()
      .then(() => {
        const formData = new FormData();
        if (modal.editFlag) {
          formData.append('id', modal.form.id);
        }
        formData.append('title', modal.form.title || '');
        formData.append('sex', modal.form.sex || '');
        formData.append('age', modal.form.age || '');
        formData.append('oldperson', modal.form.oldperson || '');
        formData.append('relation', modal.form.relation || '');
        formData.append('remark', modal.form.remark || '');
        if (modal.form.classification) {
          formData.append('classification', modal.form.classification);
        }
        if (modal.form.status) {
          formData.append('status', modal.form.status);
        }
        if (modal.editFlag) {
          submitting.value = true;
          updateApi(
            {
              id: modal.form.id,
            },
            formData,
          )
            .then((res) => {
              submitting.value = false;
              hideModal();
              getDataList();
            })
            .catch((err) => {
              submitting.value = false;
              console.log(err);
              message.error(err.msg || '操作失败');
            });
        } else {
          submitting.value = true;
          createApi(formData)
            .then((res) => {
              submitting.value = false;
              hideModal();
              getDataList();
            })
            .catch((err) => {
              submitting.value = false;
              console.log(err);
              message.error(err.msg || '操作失败');
            });
        }
      })
      .catch((err) => {
        console.log('不能为空');
      });
  };

  const handleCancel = () => {
    hideModal();
  };

  // 恢复表单初始状态
  const resetModal = () => {
    myform.value?.resetFields();
    fileList.value = [];
  };

  // 关闭弹窗
  const hideModal = () => {
    modal.visile = false;
  };
</script>

<style scoped lang="less">
  .page-view {
    min-height: 100%;
    background: #fff;
    padding: 24px;
    display: flex;
    flex-direction: column;
  }

  .table-operations {
    margin-bottom: 16px;
    text-align: right;
  }

  .table-operations > button {
    margin-right: 8px;
  }
</style>
