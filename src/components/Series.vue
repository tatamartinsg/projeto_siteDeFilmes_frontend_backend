<template>
    <div>
        {{entrou()}}
      
        <section class="search">
            <div class="input-group mb-3">
                    <input type="search" class="form-control filtro" @input="input = $event.target.value" placeholder="Filtre por parte do título" aria-label="Recipient's username" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button @click="clicou()"  class="btn btn-outline-danger botao" type="submit">Search</button>
                    </div>
            </div>
            <div class="imageSearch" :class="{someImages: isActiveSearch}">
                <ul class="ul-lista">
                        <li class="slide li-lista teste2" v-for="foto in fotosComFiltro" :key="foto">
                            <img clas v-if="foto.status == 'intrigantes'" class="img-lista teste2" :src="foto.path">
                        </li>
                </ul>
            </div>
        </section>
        <section id="section-images" :class="{someImages: isActive}">
        <h2 class="tituloImg">Séries intrigantes</h2>
        <div id="selectSlide">
            <div class="slideOne">         
                <input @click="functionselectedItem1()" type="radio" class="opcao1 btn-check slide-controller"  autocomplete="off" name="slide" id="op1" checked />
                <label class="btn btn-outline-danger opcao1" for="op1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                    </svg>
                </label>  

            </div>
            <div class="slideTwo">
                <input @click="functionselectedItem2()" type="radio" class="opcao2 btn-check slide-controller"  autocomplete="off" name="slide" id="op2"  />
                <label class="btn btn-outline-danger" for="op2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                    </svg>
                </label>
            </div>
        </div>
        {{seila()}}
        <div>
            <!-- <div class="slide-show section-principal" >
                <div class="slides-list" > 
                    <ul class="ul-lista">
                        <li class="slide li-lista" v-for="foto in fotosComFiltro" :key="foto">
                            <img v-if="foto.status == 'intrigantes'" class="img-lista" :src="foto.path">
                        </li>
                    </ul>
                    <ul>
                        <li class="slide" >
                        bbbbbbbbbbbbbbb
                        </li>
                    </ul>
                </div>
            </div> -->
             <div class="slide-show section-principal" >
                <div class="slides-list teste " :class="{selectedItem1: selectedItem1, selectedItem2: selectedItem2}"  > 
                    <ul class="ul-lista">
                        <li class="slide li-lista" v-for="(fotoBloco1) in firstBloco" :key="fotoBloco1">
                            <img class="img-lista" :src="fotoBloco1.path">
                        </li>
                    </ul>
                    <ul>
                        <li class="slide li-lista" v-for="(fotoBloco2) in secondBloco" :key="fotoBloco2">
                            <img class="img-lista" :src="fotoBloco2.path">
                        </li>
                    </ul>
                    
                </div>
            </div>
        </div>
            <!-- INPUT SEARCH -->
            
            <!-- <input type="radio" class="slide-controller checked opcao2" name="slide" id="op2" checked/>
            <label class=" opcao2" for="op2">2</label>
            <input type="radio" class="slide-controller " name="slide" id="op1"/>
            <label class="" for="op1">  1 </label> -->
           

            
            
           
        <slide-flix></slide-flix>
        
        <!-- <section class="section-principal"> 
            <h2>Séries em alta</h2>
            <ul class="ul-lista">
                <li class="li-lista" v-for="foto in fotosComFiltro" :key="foto">
                    <img v-if="foto.status == 'main' " class="img-lista" :src="foto.path">
                </li>
            </ul>
        </section> -->
        </section>
    </div>
</template>
<script>
    import SlideFlix from './SlideFlix.vue'

    export default{
        components:{
            'slide-flix': SlideFlix
        },
        props: ['fotos'],
        data(){
            return{
                input: "",
                filtro: "",
                newFotos: [],
                firstBloco:[],
                secondBloco:[],
                selectedItem1: true,
                selectedItem2: false,
                isActive: false,
                isActiveSearch: true,
                teste:"",
                teste2: []
            }
         
        },
        methods:{
            seila(){     
                this.filtro = this.input
                if(this.input == "" || this.input == 'undefined'){
                    this.isActiveSearch = true
                    this.isActive = false
                }else{
                    this.isActive = true
                    this.isActiveSearch = false
                }
                
            },
            functionselectedItem1(){
                this.selectedItem1 = true;
                this.selectedItem2 = false;
            },
            functionselectedItem2(){
                this.selectedItem1 = false;
                this.selectedItem2 = true;
            },
            entrou(){
                  this.newFotos = this.fotos.filter((serie) => {
                    return serie.status == 'intrigantes'
                });
                this.secondBloco = this.newFotos.splice(7,14)
                this.firstBloco = this.newFotos.splice(0,7)
            }
        
        },
        computed:{
            fotosComFiltro() {
                if(this.filtro) {
                    let exp = new RegExp(this.filtro.trim(), 'i');
                    return this.fotos.filter(foto => exp.test(foto.name));
                } else {
                    return this.fotos;
                }
            },
            
        },

    }
</script>
<style scoped>
@import url('https://fonts.googleapis.com/css2?family=EB+Garamond&display=swap');
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
    /* .ul-lista:hover{
        left: 200px;
    } */
    .li-lista{
        display: inline;
        width: 100%;
       
    }
    .div-input{
        margin: 30px;
        padding: 5px;
    }
    .input-group{
        width: 600px;
        height: 45px;
        margin: 0 auto;
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


    /* ================> SLIDE DAS IMAGENS  */
        html, body{
        margin: 0;
        min-height: 300px;
    }
    li{
        color: beige;
    }

    body{
        text-align: center;
    }
    html, body{
  margin: 0;
}

body{
  text-align: center;
}

.slide-controller:nth-child(1):checked ~ .slide-show .slides-list{--selected-item: 0;}
.slide-controller:nth-child(2):checked ~ .slide-show .slides-list{--selected-item: 1;}

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
</style>
