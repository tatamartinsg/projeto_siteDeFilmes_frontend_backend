<template>
    <header>
      
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="#">
                <img src="../assets/logo.png" width="30" height="30" alt="">
            </a>
            <a class="navbar-brand" href="#">Home</a>
            <li class="navbar-brand dropdown" :class="{ active: isActiveGenero }" @click="dropdownClickGeneros()" @dblclick="dropagainGeneros()">
                <a href="javascript:void(0)" class="dropbtn">Gêneros</a>
                <div class="dropdown-content" :class="{ active: isActiveGenero }">
                    <a href="#">Drama</a>
                    <a href="#">Comédia</a>
                    <a href="#">Terror</a>
                </div>
            </li>
            <li class="navbar-brand dropdown" :class="{ active: isActiveCategoria }" @click="dropdownClickCategoria()" @dblclick="dropagainCategoria()">
                <a href="javascript:void(0)" class="dropbtn">Categorias</a>
                <div class="dropdown-content" :class="{ active: isActiveCategoria }">
                    <a href="#">Filmes</a>
                    <a href="#">Animes</a>
                    <a href="#">Séries</a>
                </div>
            </li>
            <a class="navbar-brand" href="#">Filmes</a>
            <a class="navbar-brand" href="#">Séries</a>
            
        </nav>
    </header>
</template>
<script>
    export default{
        data(){
            return{
                isActiveCategoria: false,
                isActiveGenero: false
            }
        },
        methods:{  
            dropdownClickCategoria(){
                this.isActiveCategoria = true
            },
            dropagainCategoria(){
                this.isActiveCategoria = false
            },
            dropdownClickGeneros(){
                this.isActiveGenero = true
            },
            dropagainGeneros(){
                this.isActiveGenero = false
            },
        }
    }
</script>
<style scoped>
    li a:hover, .dropdown:hover .dropbtn {
        background-color: rgb(255, 255, 255);
    }

    li.dropdown {
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
    }

    .dropdown-content a:hover {background-color: #f1f1f1;}

    .active{
        display: block;
        height: 140px;
    }
    /* .dropdown:hover .dropdown-content {
        display: block;
    } */
</style>
