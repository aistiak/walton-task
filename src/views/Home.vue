<template>
  <div class="home">
    <!-- <img alt="Vue logo" src="../assets/logo.png"> -->
    <!-- <component-1 /> -->
    <nav-bar/>
    <component-2 />
    <component-3 />
    <component-4 />
    <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'
// import Component_1 from '@/components/Component-1.vue'
export default {
  name: 'Home',
  components: {
    HelloWorld  ,
    'nav-bar' : () => import('@/components/Navbar.vue'),
    'component-1' : () => import('@/components/Component-1.vue'),
    'component-2' : () => import('@/components/Component-2.vue'),
    'component-3' : () => import('@/components/Component-3.vue'),
    'component-4' : () => import('@/components/Component-4.vue'),
  }
}
</script>

<style >
body{
  margin:0;
  padding: 0;
}
html{
    scroll-behavior: smooth;
}
.frame-container {
  /* border : 1px solid ; */
  height: 110vh;
}
</style>
