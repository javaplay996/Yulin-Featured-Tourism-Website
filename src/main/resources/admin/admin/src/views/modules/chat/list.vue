<template>
  <div class="main-content">
    <!-- 列表页 -->
    <div v-if="!showFlag" style="width: 100%;">
      <div>
        <el-table
		  :stripe='true'
		  :style='{"padding":"0","borderColor":"#c695ed #2adbcb #2adbcb #2adbcb","margin":"0 0 20px","borderRadius":"0px","borderWidth":"4px 1px 1px 1px","background":"none","width":"100%","borderStyle":"solid dashed dashed dashed","order":"4"}'
          :data="dataList"
          border
          v-loading="dataListLoading"
          style="width: 100%;"
        >
          <el-table-column :resizable='true' :sortable='false' prop="ask" :formatter="askFormat" header-align="center" align="center" sortable label="新消息"></el-table-column>
          <el-table-column
		    :resizable='true' :sortable='false'
            prop="allnode"
            header-align="center"
            align="center"
            sortable
            label="状态"
            width="150"
          >
            <template slot-scope="scope">
              <el-tag v-if="scope.row.isreply==1" type="success">未回复</el-tag>
              <el-tag v-if="scope.row.isreply==0" type="info">已回复</el-tag>
            </template>
          </el-table-column>
          <el-table-column
            header-align="center"
            align="center"
            width="150"
            label="操作"
          >
            <template slot-scope="scope">
              <el-button
                type="text"
				:style='{"border":"1px solid #1fbfae","cursor":"pointer","padding":"0 16px","margin":"3px 6px 3px 0","outline":"none","color":"#1fbfae","borderRadius":"20px","background":"#e9faf8","width":"auto","fontSize":"14px","height":"32px"}'
                size="small"
                @click="addOrUpdateHandler(scope.row)"
              >回复</el-button>
            </template>
          </el-table-column>
        </el-table>
		
        <el-pagination
          @size-change="sizeChangeHandle"
          @current-change="currentChangeHandle"
          :current-page="pageIndex"
          :page-sizes="[10, 20, 50, 100]"
          :page-size="pageSize"
          :total="totalPage"
          :layout="layouts.join()"
          prev-text="<"
          next-text=">"
          :hide-on-single-page="true"
          :style='{"padding":"8px 10px","margin":"20px 0 0","borderColor":"#2adbcb","whiteSpace":"nowrap","color":"#b35ff3","background":"#fff","borderWidth":"4px","width":"100%","lineHeight":"54px","borderStyle":"dotted dashed solid double","fontWeight":"500","order":"5","height":"54px"}'
        ></el-pagination>
      </div>
    </div>
    <!-- 添加/修改页面  将父组件的search方法传递给子组件-->
    <add-or-update v-else :parent="this" ref="addOrUpdate"></add-or-update>
  </div>
</template>
<script>
import AddOrUpdate from "./chat-add-or-update";
import { setInterval, clearInterval } from 'timers';
export default {
  data() {
    return {
	  layouts: ["total","prev","pager","next","sizes","jumper"],
      searchForm: {},
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      showFlag: false,
      dataListSelections: [],
      inter: null
    };
  },
  created() {
    var that = this;
    var inter = setInterval(function(){
        that.getDataList();
    },5000);
    this.inter = inter;
  },
  destroyed(){
    clearInterval(this.inter);
  },
  components: {
    AddOrUpdate
  },
  methods: {
    askFormat(row, column) {
      if (row.ask && row.ask.startsWith('upload/')) {
          return '[图片]'
      } else{
          return row.ask
      }
    },
    getDataList() {
      this.dataListLoading = true;
      this.$http({
        url: this.$api.chatpage,
        method: "get",
        params: {
          page: this.pageIndex,
          limit: this.pageSize,
          sort: 'id'
        }
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list;
          this.totalPage = data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 回复
    addOrUpdateHandler(row) {
      this.showFlag = true;
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(row.userid);
      });
    }
  }
};
</script>
<style lang="scss" scoped>
.table-content {
	background: transparent;
}
	
	.center-form-pv {
		.el-input {
		  width: auto;
		}
	  .el-date-editor.el-input {
	    width: auto;
	  }
	}
	
	// table
	.el-table /deep/ .el-table__header-wrapper thead {
				color: #999;
				font-weight: 500;
				width: 100%;
			}
	
	.el-table /deep/ .el-table__header-wrapper thead tr {
				background: #fff;
			}
	
	.el-table /deep/ .el-table__header-wrapper thead tr th {
				padding: 10px;
				color: #fff;
				background: linear-gradient(349deg, rgba(42,219,203,1) 0%, rgba(152,122,222,1) 100%);
				border-color: #2adbcb;
				border-width: 0 0px 1px 0;
				border-style: solid;
				text-align: left;
			}
	
	.el-table /deep/ .el-table__header-wrapper thead tr th .cell {
				padding: 0 10px;
				word-wrap: normal;
				word-break: break-all;
				white-space: normal;
				font-weight: bold;
				display: inline-block;
				vertical-align: middle;
				width: 100%;
				line-height: 24px;
				position: relative;
				text-overflow: ellipsis;
			}
	
	
	.el-table /deep/ .el-table__body-wrapper tbody {
				border: 0;
				width: 100%;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr {
				border: 0;
				background: none;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 12px 0;
				color: #666;
				background: none;
				border-color: #2adbcb;
				border-width: 0 1px 1px 0;
				border-style: dashed;
				text-align: left;
			}
	
		.el-table /deep/ .el-table__body-wrapper tbody tr.el-table__row--striped td {
		background: rgba(223,246,244,.6);
	}
		
	.el-table /deep/ .el-table__body-wrapper tbody tr:hover td {
				padding: 12px 0;
				color: #9531e2;
				background: #f2eff9;
				border-color: #2adbcb;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: left;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 12px 0;
				color: #666;
				background: none;
				border-color: #2adbcb;
				border-width: 0 1px 1px 0;
				border-style: dashed;
				text-align: left;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .cell {
				padding: 0 10px;
				overflow: hidden;
				word-break: break-all;
				white-space: normal;
				line-height: 24px;
				text-overflow: ellipsis;
			}
	
	// pagination
	.main-content .el-pagination /deep/ .el-pagination__total {
				margin: 0 10px 0 0;
				color: #999;
				font-weight: 400;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
			}
	
	.main-content .el-pagination /deep/ .btn-prev {
				border: 1px solid #999;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #999;
				background: #fff;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				min-width: 35px;
			}
	
	.main-content .el-pagination /deep/ .btn-next {
				border: 1px solid #999;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #999;
				background: #fff;
				display: inline-block;
				vertical-align: top;
				line-height: 28px;
				min-width: 35px;
			}
	
	.main-content .el-pagination /deep/ .btn-prev:disabled {
				border: 1px solid #999;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #999;
				background: #fff;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
			}
	
	.main-content .el-pagination /deep/ .btn-next:disabled {
				border: 1px solid #999;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #999;
				background: #fff;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
			}
	
	.main-content .el-pagination /deep/ .el-pager {
				padding: 0;
				margin: 0;
				display: inline-block;
				vertical-align: top;
			}
	
	.main-content .el-pagination /deep/ .el-pager .number {
				cursor: pointer;
				border: 1px solid #999;
				border-radius: 2px;
				padding: 0 4px;
				margin: 0 5px;
				color: #999;
				background: #fff;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				text-align: center;
				min-width: 30px;
			}
	
	.main-content .el-pagination /deep/ .el-pager .number:hover {
				cursor: pointer;
				border: 0;
				border-radius: 2px;
				padding: 0 4px;
				margin: 0 5px;
				color: #fff;
				background: linear-gradient(349deg, rgba(42,219,203,1) 0%, rgba(152,122,222,1) 100%);
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				text-align: center;
				min-width: 30px;
			}
	
	.main-content .el-pagination /deep/ .el-pager .number.active {
				cursor: default;
				border-radius: 2px;
				padding: 0 4px;
				margin: 0 5px;
				color: #fff;
				background: linear-gradient(349deg, rgba(42,219,203,1) 0%, rgba(152,122,222,1) 100%);
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				text-align: center;
				min-width: 30px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes {
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input {
				margin: 0 5px;
				width: 100px;
				position: relative;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__inner {
				border: 1px solid #999;
				cursor: pointer;
				border-radius: 3px;
				padding: 0 25px 0 8px;
				outline: 0;
				color: #999;
				background: #FFF;
				display: inline-block;
				width: 100%;
				font-size: 13px;
				text-align: center;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input span.el-input__suffix {
				top: 0;
				position: absolute;
				right: 0;
				height: 100%;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__suffix .el-select__caret {
				cursor: pointer;
				color: #999;
				width: 25px;
				font-size: 14px;
				text-align: center;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump {
				margin: 0 0 0 24px;
				color: #999;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump .el-input {
				border-radius: 3px;
				padding: 0 2px;
				margin: 0 2px;
				display: inline-block;
				width: 50px;
				font-size: 14px;
				position: relative;
				text-align: center;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump .el-input .el-input__inner {
				border: 1px solid #999;
				cursor: pointer;
				border-radius: 3px;
				padding: 0 3px;
				outline: 0;
				color: #999;
				background: #FFF;
				display: inline-block;
				width: 100%;
				font-size: 14px;
				text-align: center;
			}
</style>
