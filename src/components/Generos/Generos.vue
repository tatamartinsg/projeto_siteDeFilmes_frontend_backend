<template>
    <div>
        <h1 class="tituloImg">Você está na categoria: {{gender}}</h1>
        <my-search :fotos="data"></my-search>
        <!-- <h1 class="tituloImg"> {{gender}}</h1> -->
        <ul class="ul-lista">
            <li class="li-lista" v-for="info in data" :key="info">
                <a :href="'../../tv/id/'+info.id"><img v-if="info.status != 'em alta'" class="img-lista" :src="info.path"></a>
                <router-link :to="rotas" :id="info.id"></router-link>
            </li>
        </ul>
    </div>
</template>
<script>
import axios from 'axios'
import Search from '../Main/Search/Search.vue'
export default{
    props:['gender'],
    components:{
        'my-search': Search
    },
    data(){
        return{
            alldata: [],
            data: [],
        }
    },
    created(){
        const promiseCategory = axios.get(`http://localhost:8083/tv/all`)
        promiseCategory.then( response => {
            this.alldata = response.data.response
            const itensFilter = this.alldata.filter((item)=> item.gender.includes(this.gender))
            this.data = itensFilter

        })
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
.tituloImg{
    color: rgb(255, 255, 255);
    font-weight: bold;
    font-family: cursive;
    font-size: 25px;
    text-transform: uppercase;
    padding: 28px;
    /* -webkit-text-decoration-color: rgba(255, 0, 0, 0.4);
    text-decoration-color: rgba(255, 0, 0, 0.4); 
    text-decoration: underline;*/
}
</style>
