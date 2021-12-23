<template>
    <section id="section-imagesAnime">
        <h2 class="tituloImg">Animes Mais Assistidos</h2>
        <div>
            <div id="selectSlide">
                <div class="slideOne">         
                    <input @click="functionselectedItem1()" type="radio" class="btn-check slide-controller2"  autocomplete="off" name="slideAnime" id="slideAnime1" checked />
                    <label class="btn btn-outline-danger opcao1" for="slideAnime1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                        </svg>
                    </label>  
                </div>
                <div class="slideTwo">
                    <input @click="functionselectedItem2()" type="radio" class="opcao2 btn-check slide-controller"  autocomplete="off" name="slideAnime" id="slideAnime2"  />
                    <label class="btn btn-outline-danger" for="slideAnime2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                        </svg>
                    </label>
                </div>
            </div>
            <div>
                <div class="slide-show section-principal" >
                    <div class="slides-list teste " :class="{selectedItem1: selectedItem1, selectedItem2: selectedItem2}"  > 
                        <ul class="ul-lista">
                            <li class="slide li-lista" v-for="(fotoBloco1) in firstbloco" :key="fotoBloco1">
                                <a :href="'tv/id/'+fotoBloco1.id"><img v-if="fotoBloco1.status == 'mais assistidos'" class="img-lista" :src="fotoBloco1.path"></a>
                                <router-link :to="rotas" :id="fotoBloco1.id"></router-link>
                            </li>
                        </ul>
                        <ul>
                            <li class="slide li-lista" v-for="(fotoBloco2) in secondbloco" :key="fotoBloco2">
                                <a :href="'tv/id/'+fotoBloco2.id"> <img v-if="fotoBloco2.status == 'mais assistidos'" class="img-lista" :src="fotoBloco2.path"></a>                   
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
export default{
    props: ['firstbloco', 'secondbloco'],
    data(){
        return{
            selectedItem1: true,
            selectedItem2: false,
        }
    },
    methods:{
        
        functionselectedItem1(){
            this.selectedItem1 = true;
            this.selectedItem2 = false;
        },
        functionselectedItem2(){
            this.selectedItem1 = false;
            this.selectedItem2 = true;
        },
    
    }
}
</script>
<style scoped>
.tituloImg{
        text-align: left;
        color: rgb(255, 255, 255);
        margin-left: 25px;
        padding:0px;
        font-weight: bold;
        font-family: cursive;
        font-size: 25px;
        text-transform: uppercase;
        /* -webkit-text-decoration-color: rgba(255, 0, 0, 0.4);
        text-decoration-color: rgba(255, 0, 0, 0.4); 
        text-decoration: underline;*/
}
.botao{
        height: 45px;
    }
.btn-danger, .btn-outline-danger:hover,.btn-check:checked + .btn-outline-danger, .btn-check:active + .btn-outline-danger, .btn-outline-danger:active, .btn-outline-danger.active, .btn-outline-danger.dropdown-toggle.show {
    background-color: rgb(124, 9, 9);
    border: black;
}
.bi{
    font-size: 20px;
}
.slide-controller2:nth-child(1):checked ~ .slide-show .slides-list{--selected-item: 0;}
.slide-controller2:nth-child(2):checked ~ .slide-show .slides-list{--selected-item: 1;}

.slide-show{
  overflow: hidden;
}
.selectedItem1{
    --selected-item: 0;
}
.selectedItem2{
    --selected-item: 1;
}
.slides-list{
  /* --selected-item: 0; */
  --total-items: 2;
  list-style-type: none;
  margin: 10px 0;
  padding: 0;
  position: relative;
  left: calc(var(--selected-item) * -100%);
  width: calc(var(--total-items) * 100%);
  transition: left 1.2s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  
  display: grid;
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
#selectSlide{
    position: relative;
}
.slideOne, .slideTwo{
    position: absolute;
    bottom: -130px;
    z-index: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 5%;
    padding: 0;
    text-align: center;

}
.slideOne{
    left: 0;
}
.slideTwo{
    right: 0;
}

.someImages{
    display: none;
}
.img-lista{
    width: 150px;
    height: 220px;
    margin: 4px;
    transition: all 0.2s;
}
.img-lista:hover{
    transform: scale(1.06);
    border: 3px solid blanchedalmond;
}
.ul-lista{
    display: inline-block;
    list-style-type: none;
    position: relative;
    padding-right: 50px;
    padding-left: 40px;
}
.li-lista{
    display: inline;
    width: 100%;
    
}
</style>