<template>
    <div  :class="{loading:loading}" >
        <div :class="{time:time}">
            <div >
                <my-carousel :rotas="rotas[1].path" :fotos="fotos" :status="index"></my-carousel>
            </div>
            <!-- <external-slide> </external-slide> -->
            <my-search :fotos="fotos"></my-search>
            <my-filmes :rotas="rotas[1].path" :firstbloco="filmes.firstbloco" :secondbloco="filmes.secondbloco"></my-filmes>

            <my-series :rotas="rotas[1].path" :firstbloco="series.firstbloco" :secondbloco="series.secondbloco"></my-series>

            <my-animes :rotas="rotas[1].path" :firstbloco="animes.firstbloco" :secondbloco="animes.secondbloco"></my-animes>
        </div>
    </div>
</template>
<script>
    import axios from 'axios'
    import Carousel from './Carousel/Carousel.vue'
    // import SlideCenter from '../SlideCenter.vue'
    import SlideSerie from './Slide/SlideSérie.vue'
    import Search from './Search/Search.vue'
    import SlideFilme from './Slide/SlideFilme.vue'
    import SlideAnimes from './Slide/SlideAnime.vue'

    export default{
        props:{
            rotas:{
                type:Array
            }
        },
        components:{
            'my-carousel': Carousel,
            // 'external-slide': SlideCenter,
            'my-series': SlideSerie,
            'my-search': Search,
            'my-filmes': SlideFilme,
            'my-animes': SlideAnimes
        },
        data(){
            return{
                path:"",
                fotos: [],
                filtro: "",
                input: "",
                index: [],
                fotosSeries: [],
                fotosFilmes: [],
                fotosAnimes: [],
                series: {
                    firstbloco:[],
                    secondbloco:[]
                },
                filmes: {
                    firstbloco:[],
                    secondbloco:[]
                },
                animes:{
                    firstbloco:[],
                    secondbloco:[]
                },
                time: true,
                loading: true
            }
         
        },
        created(){

            setTimeout(()=>{
                this.time = false;
                this.loading = false;
            },1000)
            let promiseAll = axios.get('http://localhost:8083/tv/all')
            promiseAll.then( responseAll => {
                this.fotos = responseAll.data.response
                for(var i = 0; i< this.fotos.length; i++){
                    if(this.fotos[i].status == 'em alta'){
                        this.index.push(i)
                    }
                 }
                  //FILTRA SÉRIES 
                this.searchSerie()

                 //FILTRA FILMES
                this.searchFilme()
             
                //FILTRA ANIMES
                this.searchAnimes()
                //divide em blocos
                this.shareInBlocks()
                
                
            })
            
        },
        methods:{
            searchSerie(){
                this.fotosSeries = this.fotos.filter((serieintrigante)=>{
                    return serieintrigante.status == 'intrigantes' && serieintrigante.category == 'série'
                });
            },
            searchFilme(){
                 this.fotosFilmes = this.fotos.filter((filme) => {
                    return filme.category == 'filme'
                });
            },
            searchAnimes(){
                this.fotosAnimes = this.fotos.filter((animes)=>{
                    return animes.category == 'anime'
                })
            },
            shareInBlocks(){
                if(this.fotosSeries.length > 7){
                    this.series.firstbloco = this.fotosSeries.slice(0,7)
                    this.series.secondbloco = this.fotosSeries.slice(7,14)
                }
                if(this.fotosFilmes.length > 7){
                    this.filmes.firstbloco = this.fotosFilmes.slice(0,7)
                    this.filmes.secondbloco = this.fotosFilmes.slice(7,14)
                }
                if(this.fotosAnimes.length > 7){
                    this.animes.firstbloco = this.fotosAnimes.slice(0,7)
                    this.animes.secondbloco = this.fotosAnimes.slice(7,14)
                }
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
    .time{
        display: none;
    }
    .loading{
        animation: is-rotating 1s infinite;
        border: 6px solid #c2b7b7;
        border-radius: 50%;
        border-top-color: #be3636;
        height: 50px;
        width: 50px;
        margin: 0 auto;
    }
    @keyframes is-rotating {
        to {
            transform: rotate(1turn);
        }
    }
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
    .img-div{
        border-radius: 20px;
        box-shadow: 1px 1px 1px 4px #fdf4f4;
    }
</style>
