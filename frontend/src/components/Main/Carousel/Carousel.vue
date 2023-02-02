<template>
    <b-container>
        <hr />
  
        <b-carousel
            controls
            indicators
            width="500"
            height="480"
            :interval="250000"
            v-model="slide"
            class="b-carousel2"
        >
            <b-carousel-slide v-for="(tamanho) in status" :key=tamanho>
                <template v-slot:img>
                    <a :href="'tv/id/'+fotos[tamanho].id">
                        <img :src="fotos[tamanho].path" class="d-block img-fluid w-100 allimgs">
                    </a>
                    <router-link :to="rotas" :id="fotos[tamanho].id"></router-link> -->
                </template>
            </b-carousel-slide>
        
        </b-carousel>
    </b-container>
</template>

<script>
export default {
  name: 'Carousel',
  props:['fotos','status', 'rotas'],

  data () {
    return {
        slide: 3,
        src: 'https://picsum.photos/2048/960/?image=12',
    }
  },

  methods: {

  }
}
</script>
<style scoped>

    .container{
        margin-bottom: 3%;
        width: 60%;
    }
    .carousel-inner, #__BVID__7___BV_inner_.carousel-inner{
        height: 100%;
    }
    .carousel-item{
        transition: all 1s; 
    }

    .allimgs, .teste{
        height: fit-content;
        transform: scale(1.06);
    }
    .b-carousel2{
        transition: all 2s;
    }
    .active{
        transform: scale(1.1);
    }
    * {
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }

</style>