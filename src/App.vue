<template>
<div>
    <div>
      <my-header> </my-header>
    </div>
    <div id="app">
      <my-main>
         <my-filmes></my-filmes>
      </my-main>
    </div>
</div>
  
  
</template>

<script>
import Header from './components/Header.vue'
import Main from './components/Main.vue'

export default {
  name: 'App',
  components: {
    'my-header': Header,
    'my-main': Main
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
