<template>

    <section class="search">
        <div class="input-group mb-3">
                <input type="search" class="form-control filtro" @input="input = $event.target.value" placeholder="Filtre por parte do título" aria-label="Recipient's username" aria-describedby="basic-addon2">
        </div>
        <div class="imageSearch" :class="{someImages: isActiveSearch}">
            <p class="p-search">Você está buscando por: "{{input}}"</p>
            <ul class="ul-lista">
                <li class="slide li-lista teste2" v-for="foto in fotosComFiltro" :key="foto">
                    
                    <a :href="'../../tv/id/'+foto.id"><img clas v-if="foto.status != 'em alta'" class="img-lista teste2" :src="foto.path"></a>
                    <router-link :to="rotas" :id="foto.id"></router-link>
                </li>
            </ul>
        </div>
        {{seila()}}
    </section>
</template>
<script>
    export default{
        props: ['fotos'],
        data(){
            return{
                input: "",
                filtro:"",
                isActive: false,
                isActiveSearch: true
            }
        },
        methods:{
            seila(){     
                this.filtro = this.input
                if(this.input == "" || this.input == 'undefined'){
                    this.isActiveSearch = true
                }else{
                    this.isActiveSearch = false
                }
            },
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
.input-group{
        width: 600px;
        height: 45px;
        margin: 0 auto;
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
.p-search{
    color: aliceblue;
}
</style>
