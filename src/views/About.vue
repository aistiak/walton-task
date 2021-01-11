<template>
  <div class="about">
    <h1>This is an about page</h1>
    <my-loader/>
  </div>
</template>
<script>
// import MyLoader from '../components/MyLoader.vue'
export default {
  components : {
    'my-loader' : () => import('@/components/MyLoader.vue')
  
  },
  data(){
    return {
      
    }
  }
}
</script>
