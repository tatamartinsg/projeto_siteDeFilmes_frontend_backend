<template>
    <b-container>
        <hr />
  
        <b-carousel
            controls
            indicators
            width="500"
            height="480"
            :interval="2500"
            v-model="slide"
            class="b-carousel2"
        >
            <b-carousel-slide >
                <template v-slot:img>
                    <img class="d-block img-fluid w-100 allimgs" :src="fotos[status[0]].path" />
                </template>
            </b-carousel-slide>
            <b-carousel-slide >
                <template v-slot:img>
                    <img class="d-block img-fluid w-100 allimgs teste" :src="fotos[status[1]].path" />
                </template>
            </b-carousel-slide>
            <b-carousel-slide >
                <template v-slot:img>
                    <img class="d-block img-fluid w-100 allimgs" :src="fotos[status[2]].path" />
                </template>
            </b-carousel-slide>
            <b-carousel-slide >
                <template v-slot:img>
                    <img class="d-block img-fluid w-100 allimgs" :src="fotos[status[3]].path" />
                </template>
            </b-carousel-slide>
            <b-carousel-slide>
                <template v-slot:img>
                    <img class="d-block img-fluid w-100 allimgs" width="400px" height="480px" :src="fotos[status[4]].path" />
                </template>
            </b-carousel-slide> -->
            <!-- <b-carousel-slide caption="Blank image" img-blank style="background: lightskyblue;">
                <p>
                    My custom slide whitout eny image here!
                </p>
            </b-carousel-slide> -->
          
        </b-carousel>
  
    </b-container>
</template>

<script>
export default {
  name: 'Carousel',
  props:['fotos','status'],

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
    margin-bottom: 2%;
}
.carousel-inner, #__BVID__7___BV_inner_.carousel-inner{
    height: 100%;
}

.allimgs, .teste{
    height: fit-content;
    transform: scale(1.1);
}
* {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

</style>