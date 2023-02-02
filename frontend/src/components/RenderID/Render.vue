<template>
    <div >
        <div class="div-principalRender">
            <div class="img-div">
                <img :class="{classImgEmAlta: classImgEmAlta}" class="img-id" width="400px"  height="550px" :src="data[0].path"/> 
            </div>
            <div class="description" >
                <h1 :class="{classTitle: classTitle}" class="h1-titulo" >{{data[0].name}}</h1>
                <p>{{data[0].description}}</p>
                <p class="p-categoria">Gêneros: {{data[0].gender}}</p>
                <div class="div-video" >
                    <iframe v-if="((data[0].url_video != 'no video') && (isEmAlta == false))" class="video" align="center" width="540" height="300" :src="data[0].url_video" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            
            </div>
        </div>
        <div id="div-emalta" class="div-video" :class="{classVideo: classVideo}">
            <p>Não sei o que colocar aqui ainda</p>
             <iframe v-if="data[0].url_video != 'no video'" class="video" align="center" width="540" height="300" :src="data[0].url_video" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default{
    props: ['id'],
    data(){
        return{
            data: [],
            classTitle: false,
            classImgEmAlta: false,
            classVideo: true,
            isEmAlta: false
        }
    },
    created(){
        console.log('id',this.id)
        const promiseId = axios.get(`http://localhost:8083/tv/id/${this.id}`)
        promiseId.then( response => {
            this.data = response.data.response
            this.verifyStatusEmAlta()

           

        })
        
    },
    methods:{
        verifyStatusEmAlta(){
             if(this.data[0].status == 'em alta'){
                this.classImgEmAlta = true;
                this.classVideo = false;
                this.isEmAlta = true;
            }
        }
    }
}
</script>
<style scoped>
/* .img-div, .description{
    display:inline-block;
} */
.classTitle{
    text-align: center;
}
.classVideo{
    display: none;
}
.classImgEmAlta{
    width: 650px;
    height: 400px;
}
.h1-titulo, p{
    color: white;
    padding-left: 0;
}
.h1-titulo{
    padding: 20px;
    text-align: center;
}   
.div-principalRender{
    display: flex;
    width: 80%;
    margin: 10px auto;
}
div.description{
    margin: 2px 45px auto;
    text-align: justify;
}
.img-id{
    border-radius: 20px;
    box-shadow: 1px 1px 1px 4px #fdf4f4;
    transition: all 0.5s;
}
.img-id:hover{
    transform: scale(1.06);
}
.p-categoria{
    padding-top: 20px;

}
.video{
    transition: all 0.5s;
}
.div-video iframe{
     border-radius: 20px;
    
}
.video:hover{
    transform: scale(1.06);
    box-shadow: 1px 1px 10px 4px #1b1717;
}
.div-video{
    text-align: center;
}
#div-emalta{
    margin: 50px;
}

</style>