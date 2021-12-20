<template>

     <section id="section-images2">
        <h2  @click="clicouoi()" class="tituloImg">Filmes Top 1</h2>
        <div>
            <div id="selectSlide">
            <div class="slideOne">         
                <input @click="functionselectedItem1()" type="radio" class="btn-check slide-controller2"  autocomplete="off" name="slide2" id="opp1" checked />
                <label class="btn btn-outline-danger opcao1" for="opp1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                    </svg>
                </label>  

            </div>
            <div class="slideTwo">
                <input @click="functionselectedItem2()" type="radio" class=" btn-check slide-controller2"  autocomplete="off" name="slide2" id="opp2"  />
                <label class="btn btn-outline-danger" for="opp2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                    </svg>
                </label>
            </div>
            <div class="slide-show section-principal2" >
                
                <div class="slides-list teste " :class="{selectedItem1: selectedItem1, selectedItem2: selectedItem2}"  > 
                    <ul class="ul-lista">
                        <li class="slide li-lista" v-for="filme in firstbloco" :key="filme">
                            <img v-if="filme.tipo == 'filme'" class="img-lista" :src="filme.path">
                        </li>
                    </ul>
                    <ul>
                        <li class="slide li-lista">
                            <li class="slide li-lista" v-for="filme in secondbloco" :key="filme">
                            <img class="img-lista" :src="filme.path">
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
    /* bottom: -130px; */
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