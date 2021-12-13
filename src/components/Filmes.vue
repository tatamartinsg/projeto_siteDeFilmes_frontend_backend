<template>
    <div>
        
        <h2>Teste</h2>
        <!-- <input class="form-control mr-sm-2" type="search" placeholder="filtre por parte do título de uma série ou filme" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->

        <input type="search" class="filtro" @input="input = $event.target.value" placeholder="filtre por parte do título">
        <button @click="clicou()" class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> 
        <!-- <h3>{{fotos}}</h3>
        <h3>{{filtro}}</h3> -->
        <section class="section-principal"> 
            <ul class="ul-lista">
                <li class="li-lista" v-for="foto in fotosComFiltro" :key="foto">
                    <img class="img-lista" :src="foto.path">
                </li>
            </ul>
        </section>
        
    </div>
</template>
<script>
    import axios from 'axios'
    export default{
        data(){
            return{
                path:"",
                fotos: [],
                filtro: "",
                input: ""
            }
         
        },
        created(){
            console.log('entrou')
            let promise = axios.get('http://localhost:8081/tv')
            promise.then(response => {
                this.fotos = response.data.response
                console.log(this.fotos)
            })
                .catch(error => { console.log(error) })
        },
        methods:{
            clicou(){
                console.log(this.input)
                this.filtro = this.input
                console.log('deu', this.input, this.filtro)
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
        background: blue;
    }
    .ul-lista{
        display: inline-block;
        list-style-type: none;
    }
    .section-principal{
       
    }
    .li-lista{
        display: inline;
        width: 100%;
       
    }
    .li-lista:hover{
        
    }
</style>
