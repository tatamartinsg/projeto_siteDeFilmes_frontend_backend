<template>
    <header>
        <div class="pos-f-t div-header" :class="{teste: isActive}">
        <div :class="{ collapse: isActive}" id="navbarToggleExternalContent">
            <div class="bg-danger p-4" :class="{teste: isActive}">     
                <nav class="navbar navbar-expand-lg bg-li">
                    <a href="#" class="navbar-brand text-white">Home</a>
                    <ul class="navbar-nav">
                        <li class="nav-item"> <a href="#" class="nav-link text-white">Categorias</a> </li>
                    </ul>
                    <div class="dropdown" >
                        <button class="btn btn-danger dropdown-toggle" @click="clicouDropdown()" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gêneros
                        </button>
                        <div class="dropdown-menu" :class="{ dropdownClick: isActiveDropdown }" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Comédia</a>
                            <a class="dropdown-item" href="#">Drama</a>
                            <a class="dropdown-item" href="#">Ação</a>
                        </div>
                    </div>
                </nav>
                <span class="text-white spannav">Toggleable via the navbar brand.</span>
            </div>
        </div>
        <nav class="navbar navbar-dark bg-dark">
            <button class="navbar-toggler" @click="clicou()" @dblclick="clicoudnv()" type="button" aria-label="Toggle navigation" style="margin-left: 1%;">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
    </div>
    </header>
</template>
<script>
    export default{
        data(){
            return{
                isActiveDropdown: false,
                isActive: false
            }
        },
        methods:{  
            clicou(){
                this.isActive =! this.isActive
            },
            clicouDropdown(){
                this.isActiveDropdown =! this.isActiveDropdown
            }
        }
    }
</script>
<style scoped>
    li a:hover, .dropdown:hover .dropbtn {
        background-color: none;
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
        box-shadow: 0 4px 2px 2px rgb(32, 31, 31);
    }
    #navbarToggleExternalContent{
        border-bottom:  2px solid rgb(72 53 53);
    }
   .teste{
       transform: scale(1.01);
   }
</style>
