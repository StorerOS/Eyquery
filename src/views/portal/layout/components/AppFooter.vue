<template>
  <div v-if="showFooter" class="app-footer">
    <div class="bg-decoration" />
    <div class="app-footer__container">
      <div class="content-body">
        <div class="content-body__item login-container">
          <img src="@/assets/name_while.png" alt="logo" class="name">
          <div class="content__main">
            <div class="content__main__item">Sign up for free using your email address.</div>
            <div class="content__main__item"><el-button class="small-plain-btn">SIGN UP</el-button></div>
          </div>
        </div>
        <div class="content-body__item link-container">
          <div class="content__title">Resources</div>
          <div class="content__main">
            <div class="content__main__item"><div><el-link class="link-btn">Discord</el-link><svg-icon icon-class="Discord" /></div></div>
            <div class="content__main__item"><div><el-link class="link-btn">DOCS</el-link></div></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import settings from '@/settings'
import { getHostEnv } from '@/utils/index'
import { docsHostMap } from '@/utils/data-const'

export default {
  name: 'AppFooter',
  data() {
    return {
      settings,
      docsHostURL: docsHostMap[getHostEnv()]

    }
  },
  computed: {
    showFooter() {
      const bol = this.$route.meta.showFooter
      return bol || false
    }
  }
}
</script>

<style lang="scss" scoped>
@import "~@/styles/variables.scss";

$fontColor: #ffffff;
$backgroundColor: #000000;

.app-footer {
  @include regularFontFamily;
  padding-top: 88px;
  padding-bottom: 122px;
  color: $fontColor;
  background-color: $backgroundColor;
  position: relative;
  &__container {
    max-width:1065px;
    margin: 0px auto;
    position: relative;
    z-index: 2;
  }
  .content-body {
    display: flex;
    align-items: flex-start;
    justify-content: space-around;
  }
  .content__title {
    @include boldFontFamily;
    font-size: $fontSizeVeryLarge;
  }
  .content__main {
    margin-top: 15px;
    &__item {
      @include font-size-large;
      @include regularFontFamily;
      margin-bottom: 18px;
      &:last-of-type {
        margin-bottom: 0;
      }
      .svg-icon{
        font-size: 26px;
        margin-left: 10px;
      }
    }
  }
  .logo-container {
    display: flex;
    align-items: center;
  }
  .logo {
      width: 54px;
    }
  .name{
    width: 174px;
   }
  .login-container {
    margin-left: 23px;
  }
  .link-container {
    margin-left: 177px;

    .content__main__item {
      > div {
        display: flex;
      }
    }
  }
}
.bg-decoration {
  width: 1381px;
  height: 100%;
  background: 0px 0px url("~@/assets/footer_bg2.png") transparent no-repeat;
  background-size: cover;
  position: absolute;
  top: 0;
  left: 50%;
  transform: translate3d(-50%, 0, 0);
  z-index: 1;
}
.link-btn {
  @include font-size-large;
  @include regularFontFamily;
  color: #ffffff;
  display: inline-block;
}
.footer-an{
  position: absolute;
    bottom: 5px;
    left: 0;
    right: 0;
    margin: 0 auto;
    text-align: center;
    z-index: 999;
    border-top: 1px solid rgba(255, 255, 255, 0.3);
    /* max-width: 1340px; */
    box-shadow: inset 0px 3px 6px 1px rgb(255 255 255 / 20%);
    color: rgba(159, 159, 159, 1);
    &__content{
      justify-content: space-between;
      display: flex;
      max-width:1065px;
      margin:0 auto;
      padding:16px 128px;
    }
    .svg-icon{
      margin-right: 10px;
    }
    span{
      margin-right: 10px;
    }
}
</style>
