<template>
  <div class="home">
    <!-- <img alt="Vue logo" src="../assets/logo.png"> -->
    <nav-bar/>
    <component-1 />
    <component-2 />
    <component-3 />
    <component-4 />
    <component-5 />
    <component-6 />
    <component-7 />
    <component-8 />
    <component-9 />
    <component-10 />
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
    'component-5' : () => import('@/components/Component-5.vue'),
    'component-6' : () => import('@/components/Component-6.vue'),
    'component-7' : () => import('@/components/Component-7.vue'),
    'component-8' : () => import('@/components/Component-8.vue'),
    'component-9' : () => import('@/components/Component-9.vue'),
    'component-10' : () => import('@/components/Component-10.vue'),
  }
}
</script>

<style >
body{
  margin:0;
  padding: 0;
  background : #000000 ;
}
html{
    scroll-behavior: smooth;
}
.frame-container {
  /* border : 1px solid ; */
  height: 110vh;
}
</style>
