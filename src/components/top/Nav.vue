<template>

  <div class="navbar navbar-inverse navbar-static-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <router-link :to="{ path : '/'}" class="navbar-brand logo">GetCodeing</router-link>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <template v-for="item in list">
            <li>
              <router-link :to="{ path: item.src}">
                {{ item.title }}
              </router-link>
            </li>
          </template>
        </ul>
      </div>
    </div>
  </div>
  </div>
</template>

<script type="text/javascript">

  import foots from '@/components/footer/Footer.vue'

  export default {
    data() {
      return {
          list: [],
      }
    },
    methods: {
      handleOpen(key, keyPath) {

      },
      handleClose(key, keyPath) {

      }
    },
    created() {
      this.$getData('api/user/postuser').then((res) => {
        console.log(JSON.parse(res).Table);
        this.list = JSON.parse(res).Table;
      });
    },
    components: {
      foots,
    }
  }
</script>


<style>
  .nav-left {
    width: 100%;
    height: 190px;
    background: #1abc9c;
    border: #16a085;
  }

  .nav-left .logo {
    text-align: center;
    height: 190px;
    line-height: 190px;
    background: #1abc9c;
    color: #fff;
  }

</style>
