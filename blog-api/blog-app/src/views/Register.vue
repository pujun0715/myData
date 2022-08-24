<template>
  <div id="register" v-title data-title="注册 - 码神之路">
    <!--<video preload="auto" class="me-video-player" autoplay="autoplay" loop="loop">
          <source src="../../static/vedio/sea.mp4" type="video/mp4">
      </video>-->

    <div class="me-login-box me-login-box-radius">
      <h1>码神之路 注册</h1>

      <el-form ref="userForm" :model="userForm" :rules="rules">
        <el-form-item prop="account">
          <el-input placeholder="用户名" v-model="userForm.account"></el-input>
        </el-form-item>

        <el-form-item label="头像" style="text-align: left">
          <!-- <el-input v-show="true" v-model="userForm.avatar"></el-input> -->
          <el-upload class="image" name="image" action="http://123.56.220.192:80/api/upload" :show-file-list="false"
            :on-success="handleAvatarSuccess">
            <img v-if="userForm.avatar" :src="userForm.avatar" class="avatar">
            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
          </el-upload>

        </el-form-item>
        <el-form-item prop="nickname">
          <el-input placeholder="昵称" v-model="userForm.nickname"></el-input>
        </el-form-item>

        <el-form-item prop="password">
          <el-input placeholder="密码" type="password" v-model="userForm.password"></el-input>
        </el-form-item>


        <el-form-item size="small" class="me-login-button">
          <el-button type="primary" @click.native.prevent="register('userForm')">注册</el-button>
        </el-form-item>
      </el-form>



    </div>
  </div>
</template>

<script>
import { register1 } from '@/api/login'
import request from '@/request'
export default {
  name: 'Register1',
  data() {
    return {

      userForm: {
        account: '',
        nickname: '',
        password: '',
        avatar: ''
      },

      rules: {
        account: [
          { required: true, message: '请输入用户名', trigger: 'blur' },
          { max: 10, message: '不能大于10个字符', trigger: 'blur' }
        ],
        nickname: [
          { required: true, message: '请输入昵称', trigger: 'blur' },
          { max: 10, message: '不能大于10个字符', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' },
          { max: 10, message: '不能大于10个字符', trigger: 'blur' }
        ],
        avatar: [
          { required: true, message: '请输入头像', trigger: 'blur' },
          { max: 10, message: '不能大于10个字符', trigger: 'blur' }
        ],

      }

    }
  },
  methods: {
    /*文件上传相关*/
    //文件上传成功的钩子函数
    handleAvatarSuccess(res, file) {
      this.$message({
        type: 'success',
        message: '图片上传成功',
        duration: 1000
      });
      //console.log(file);
      if (file.response.code === 200) {
        this.userForm.avatar = res.data; //将返回的文件储存路径赋值picture字段
        //console.log(this.userForm.avatar)
      }
    },


    register(formName) {

      let that = this
      this.$refs[formName].validate((valid) => {
        if (valid) {

          register1(that.userForm).then(data => {




            that.$message({ message: '注册成功 请登录', type: 'success', showClose: true });
            that.$router.replace({ path: '/login' })
          }).catch((error) => {
            if (error !== 'error') {
              that.$message({ message: error, type: 'error', showClose: true });
            }
          })

        } else {
          return false;
        }
      });

    }

  }
}
</script>

<style scoped>
.avatar-uploader .el-upload {
  border: 1px dashed #6f1414;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}

.avatar-uploader .el-upload:hover {
  border-color: #409EFF;
}

.avatar-uploader-icon {
  font-size: 28px;
  color: #296dcd;
  width: 120px;
  height: 120px;
  line-height: 178px;
  text-align: center;
}

.avatar {
  width: 120px;
  height: 120px;
  display: block;
}

#login {
  min-width: 100%;
  min-height: 100%;
}

.me-video-player {
  background-color: transparent;
  width: 100%;
  height: 100%;
  object-fit: fill;
  display: block;
  position: absolute;
  left: 0;
  z-index: 0;
  top: 0;
}

.me-login-box {
  position: absolute;
  width: 300px;
  height: 400px;
  background-color: white;
  margin-top: 150px;
  margin-left: -180px;
  left: 50%;
  padding: 30px;
}

.me-login-box-radius {
  border-radius: 10px;
  box-shadow: 0px 0px 1px 1px rgba(161, 159, 159, 0.1);
}

.me-login-box h1 {
  text-align: center;
  font-size: 24px;
  margin-bottom: 20px;
  vertical-align: middle;
}

.me-login-design {
  text-align: center;
  font-family: 'Open Sans', sans-serif;
  font-size: 18px;
}

.me-login-design-color {
  color: #5FB878 !important;
}

.me-login-button {
  text-align: center;
}

.me-login-button button {
  width: 100%;
}
</style>
