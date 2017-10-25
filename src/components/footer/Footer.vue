<template>
  <!-- footer start -->
  <div class="footer clear">
    <a href="http://www.miitbeian.gov.cn" class="ft-12">&copy; {{ getYear }} - 粤ICP备15025692号</a>
  </div>
  <!-- footer end -->
</template>

<script type="text/javascript">
  export default {
    name: 'foots',
    data() {
        return {
          yea: null
        }
    },
    computed: {
      getYear(){
        return new Date().getFullYear()
      }
    },
    created() {

    },
    methods: {

    }
  };
</script>

<style>
  .footer {
    background: #2f2f2f;
    width: 100%;
    height: 80px;
    line-height: 80px;
    text-align: center;
  }

  .footer a {
    color: #fff;
  }

</style>
