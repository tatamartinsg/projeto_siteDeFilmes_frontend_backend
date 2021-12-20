<template>
    <div class="div-principalRender">
        <div class="img-div">
            <img width="400px"  height="550px" :src="data[0].path"/> 
        </div>
        <div class="description">
            <h1 class="h1-titulo">{{data[0].name}}</h1>
            <p>{{data[0].description}}</p>
        </div>
        
        
    </div>
</template>
<script>
import axios from 'axios'
export default{
    props: ['id'],
    data(){
        return{
            data: []
        }
    },
    created(){
        const promiseId = axios.get(`http://localhost:8083/serie/${this.id}`)
        promiseId.then( response => {
            console.log(response.data.response)
            this.data = response.data.response

        })
    }
}
</script>
<style scoped>
/* .img-div, .description{
    display:inline-block;
} */
.h1-titulo, p{
    color: white;
}
.div-principalRender{
    display: flex;
}
</style>