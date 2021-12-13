<template>
  <div>
    <my-header> </my-header>
    <my-carousel></my-carousel>
    <div id="app">
      <my-filmes> </my-filmes>
    </div>
  </div>
  
</template>

<script>
import Filmes from './components/Filmes.vue'
import Header from './components/Header.vue'
import Carousel from './components/Carousel/Carousel.vue'
export default {
  name: 'App',
  components: {
    'my-filmes': Filmes,
    'my-header': Header,
    'my-carousel': Carousel
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
  margin-top: 60px;
}
</style>
