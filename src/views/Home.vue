<template>
  <div class="home">
    <!-- <img alt="Vue logo" src="../assets/logo.png"> -->
    <nav-bar/>
    <component-1 />
    <!-- <my-loader/> -->
    <component-2 />
    <component-3 />
    <component-4 />
    <component-5 />
    <component-8 />
    <component-9 />
    <component-10 />
    <!-- <component-6 /> -->
    <!-- <component-7 /> -->
    <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'
import Component1 from '../components/Component-1'
// import Component_1 from '@/components/Component-1.vue'
export default {
  name: 'Home',
  components: {
    HelloWorld  ,
    'nav-bar'     : () => import('@/components/Navbar.vue'),
    'my-loader'   : () => import('@/components/MyLoader.vue') ,
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
  },
  mounted(){
  },
}
</script>

<style >
::-webkit-scrollbar{
  display:none;
}
body{
  margin:0;
  padding: 0;
  background : #000000 ;
  
}
html,body{
    scroll-behavior: smooth;
}
.frame-container {
  /* border : 1px solid ; */
  height: 110vh;
}
</style>
<style >
.home {
  overflow-y: scroll;
  height: 100vh;
  /* scroll-snap-points-y: repeat(100vh); */
  /* scroll-snap-type: mandatory;
  scroll-snap-type: y mandatory; */
}
.frame-container {
  /* scroll-snap-align: start; */
}
.text > p {
    color : #7F7F7F ;
    font-weight: bold;
}
</style>
