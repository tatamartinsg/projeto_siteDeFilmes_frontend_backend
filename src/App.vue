<template>
<div>
    <div>
      <my-header :rotas="routes"> </my-header>
    </div>
    <div id="app">
      <transition name="page">
         <router-view :rotas="routes"></router-view>
      </transition>
    </div>
</div>
  
  
</template>

<script>
import { routes } from './routes.js'
import Header from './utils/Header/Header.vue'
// import Main from './components/Main.vue'

export default {
  name: 'App',
  components: {
    'my-header': Header
  },
  data(){
    return{
      routes
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 10%;
}


.carousel-inner{
  height: 100%;
}
.sr-only{
  display: none;
}

</style>
