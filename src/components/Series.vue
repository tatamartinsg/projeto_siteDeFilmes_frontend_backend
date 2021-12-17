<template>
    <div>
        <section>
            <!-- INPUT SEARCH -->
            <div class="input-group mb-3">
                <input type="search" class="form-control filtro" @input="input = $event.target.value" placeholder="Filtre por parte do título" aria-label="Recipient's username" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button @click="clicou()"  class="btn btn-outline-danger botao" type="submit">Search</button>
                </div>
            </div>

            <input type="radio" class="btn-check slide-controller checked" name="slide" id="op1"/>
            <label class="btn btn-secondary" for="op1">  1 </label>

            <input type="radio" class="btn-check slide-controller" name="slide" id="op2"/>
            <label class="btn btn-secondary" for="op2">2</label>
            
            <div class="slide-show section-principal" >
                <div class="slides-list" > 
                    <ul class="ul-lista">
                        <li class="slide li-lista" v-for="foto in fotosComFiltro" :key="foto">
                            <img v-if="foto.status == 'main'" class="img-lista" :src="foto.path">
                        </li>
                    </ul>
                    <ul>
                        <li class="slide" >
                        bbbbbbbbbbbbbbb
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <slide-flix></slide-flix>
        
        <!-- <section class="section-principal"> 
            <h2>Séries em alta</h2>
            <ul class="ul-lista">
                <li class="li-lista" v-for="foto in fotosComFiltro" :key="foto">
                    <img v-if="foto.status == 'main' " class="img-lista" :src="foto.path">
                </li>
            </ul>
        </section> -->
        
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
                input: ""
            }
         
        },
        methods:{
            clicou(){     
                this.filtro = this.input
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
            }
        }
    }
</script>
<style scoped>
    
    .img-lista{
        width: 150px;
        height: 220px;
        margin: 4px;
        transition: all 0.2s;
    }
    .img-lista:hover{
        transform: scale(1.06);
    }
    .ul-lista{
        display: inline-block;
        list-style-type: none;
        position: relative;
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
    .slide-controller:nth-child(1):checked ~ .slide-show .slides-list{
        --selected-item: 0;
    }
    .slide-controller:nth-child(2):checked ~ .slide-show .slides-list{
        --selected-item: 1;
    }
    .slide-controller:nth-child(3):checked ~ .slide-show .slides-list{
        --selected-item: 2;
    }
    .slide-controller:nth-child(4):checked ~ .slide-show .slides-list{
        --selected-item: 3;
    }

    .slide-show{
        overflow: hidden;
    }

    .slides-list{
        --selected-item: 0;
        --total-items: 4;
        list-style-type: none;
        margin: 10px 0;
        padding: 0;
        position: relative;
        left: calc(var(--selected-item) * -50%);
        width: calc(var(--total-items) * 50%);
        transition: left 1.2s cubic-bezier(0.680, -0.550, 0.265, 1.550);
        
        display: grid;
        grid-auto-flow: column;
        grid-auto-columns: 1fr;
    }

    .slide{
        width: 100%;
    }
</style>
