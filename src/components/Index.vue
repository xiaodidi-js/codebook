<template>
  <div class="index-con">
    <div id="ww">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-lg-offset-2 centered">
            <img src="../../static/images/user.png" alt="Stanley">
            <h1 class="thisname">Hi, I am Stanley!</h1>
            <p class="thisdesc">Hello everybody. Welcome to my blog!</p>
          </div>
        </div>
      </div>
    </div>

    <div class="container pt">
      <div class="row mt centered">
        <template v-for="item in list">
          <div class="col-lg-4">
            <router-link class="zoom green block" :to="{ path: '/pages/news', query: { id: item.id }}">
              <img class="img-responsive" :src="item.article_picture" alt="" />
            </router-link>
            <p>{{ item.article_title }}</p>
          </div>
        </template>
      </div>
    </div>

  </div>
</template>

<script type="text/javascript">
  import ElCheckbox from "../../node_modules/element-ui/packages/checkbox/src/checkbox";
  import ElRadio from "../../node_modules/element-ui/packages/radio/src/radio";
  import userinfo from '@/components/user/userinfo.vue'

  export default {
    name: 'index',
    data () {
      return {
        list: [],
        activeName: 'first',
      }
    },
    created() {
      this.$getData("api/article/getAricle").then((res) => {
        this.list = JSON.parse(res).Table;
      });
    },
    methods: {
      handleClick(row) {
        console.log(row);
      },
      ready() {

      }
    },
    components: {
      ElRadio,
      ElCheckbox,
      userinfo

    }
  }
</script>

<style>

  .centered {
    padding: 50px;
  }
  .centered .thisname {
    font-family: 'Montserrat', sans-serif;
    font-weight: bold;
  }

  .centered .thisdesc {
    color: #555;
    font-family: 'Montserrat', sans-serif;
  }

</style>
