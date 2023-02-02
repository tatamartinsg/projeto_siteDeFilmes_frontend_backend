<template>
    <header>
        <div class="pos-f-t div-header" :class="{teste: isActive}">
        <div :class="{ collapse: isActive}" id="navbarToggleExternalContent">
            <div class=" div-third" :class="{teste: isActive}">     
                <nav class="navbar navbar-expand-lg bg-li">
                     <div  v-for="rota in rotas" :key="rota">
                        <router-link class="home navbar-brand text-white" :to="rota.path">{{rota.titulo}}</router-link>
                    </div>
                     <div class="dropdown" >
                        <button class="mudaCorBotao btn btn-danger dropdown-toggle" @click="clicouDropdownCategorias()" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Categorias
                        </button>
                        <div class="dropdown-menu" :class="{ dropdownClick: isActiveDropdownCategorias }" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="/tv/animes">Animes</a>
                            <router-link :to="rotas" :category="animes"></router-link>
                            <!-- <a class="dropdown-item" href="#">Documentários</a> -->
                            <a class="dropdown-item" href="/tv/filmes">Filmes</a>
                            <router-link :to="rotas" :category="filmes"></router-link>

                            <a class="dropdown-item" href="/tv/series">Séries</a>
                            <router-link :to="rotas" :category="series"></router-link>
                        </div>
                    </div>
                    <div class="dropdown" >
                        <button class="mudaCorBotao btn btn-danger dropdown-toggle" @click="clicouDropdown()" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gêneros
                        </button>
                        <div class="dropdown-menu" :class="{ dropdownClick: isActiveDropdown }" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="/tv/genero/ação">Ação</a>
                            <router-link :to="rotas" :gender="ação"></router-link>

                            <a class="dropdown-item" href="/tv/genero/adolescente">Adolescente</a>
                            <router-link :to="rotas" :gender="adolescente"></router-link>
                            
                            <a class="dropdown-item" href="/tv/genero/aventura">Aventura</a>
                            <router-link :to="rotas" :gender="aventura"></router-link>
                            
                            <a class="dropdown-item" href="/tv/genero/comédia">Comédia</a>
                            <router-link :to="rotas" :gender="comédia"></router-link>
                            
                            <a class="dropdown-item" href="/tv/genero/drama">Drama</a>
                            <router-link :to="rotas" :gender="drama"></router-link>

                            <a class="dropdown-item" href="/tv/genero/família">Família</a>
                            <router-link :to="rotas" :gender="família"></router-link>

                            <a class="dropdown-item" href="/tv/genero/horror">Horror</a>
                            <router-link :to="rotas" :gender="horror"></router-link>

                            <a class="dropdown-item" href="/tv/genero/infantil">Infantil</a>
                            <router-link :to="rotas" :gender="infantil"></router-link>

                            <a class="dropdown-item" href="/tv/genero/medicina">Medicina</a>
                             <router-link :to="rotas" :gender="medicina"></router-link>

                            <a class="dropdown-item" href="/tv/genero/policial">Policial</a>
                             <router-link :to="rotas" :gender="policial"></router-link>

                            <a class="dropdown-item" href="/tv/genero/romance">Romance</a>
                             <router-link :to="rotas" :gender="romance"></router-link>

                            <a class="dropdown-item" href="/tv/genero/terror">Terror</a>
                             <router-link :to="rotas" :gender="terror"></router-link>
                        </div>
                    </div>
                </nav>
                <!-- <span class="text-white spannav">Toggleable via the navbar brand.</span> -->
            </div>
        </div>
        <nav class="navbar navbar-dark bg-dark" id="navheaderblack">
            <button class="navbar-toggler" @click="clicou()" @dblclick="clicoudnv()" type="button" aria-label="Toggle navigation" style="margin-left: 1%;">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
    </div>
    </header>
</template>
<script>
    export default{
        props:{
            rotas:{
                type: Array,
                required: true
            }
        },
        data(){
            return{
                isActiveDropdown: false,
                isActiveDropdownCategorias: false,
                isActive: false
            }
        },
        methods:{  
            clicou(){
                this.isActive =! this.isActive
            },
            clicouDropdown(){
                this.isActiveDropdown =! this.isActiveDropdown
            },
            clicouDropdownCategorias(){
                this.isActiveDropdownCategorias =! this.isActiveDropdownCategorias
            }
        }
    }
</script>
<style scoped>
    li a:hover, .dropdown:hover .dropbtn {
        background-color: none;
    }
    .navbar{
        justify-content: flex-start;
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
    #navbarToggleExternalContent{
        transition: all .2s;
    }
    /* .collapse:active, #navbarToggleExternalContent:active{
        transition: scale(1.2);
    } */
    .dropdownClick{
        display: block;
    }
    /* .dropdown:hover .dropdown-content {
        display: block;
    } */
    .spannav{
        opacity: 0.6;
    }
    .div-header{
         transition: all .2s;
        /* box-shadow: 0 4px 2px 2px rgb(32, 31, 31); */
    }
    #navbarToggleExternalContent{
        border-bottom:  2px solid rgb(72 53 53);
    }
   .teste{
       transform: scale(1.01);
   }
   .div-third{
       padding-left: 20px;
       background: rgb(160, 15, 15);
   }
   header{
       position: fixed;
       top: 0;
       left: 0;
       width: 100%;
       z-index: 99;
   }
   #navheaderblack{
       position: relative;
       box-shadow: 0 4px 2px 2px rgb(34, 34, 34);
       top: -6px;
   }
   .mudaCorBotao{
       background: rgb(160, 15, 15);
       border: 0;
   }
   .navbar-toggler{
       margin-top: 5px;
   }
   .navbar-brand{
       margin-right: 5px;
   }

</style>
