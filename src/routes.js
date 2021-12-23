import Main from './components/Main/Main.vue'
import Render from './components/RenderID/Render.vue'
import Category from './components/Category/Category.vue'
import Genero from './components/Generos/Generos.vue'
export const routes = [
    { path: '/', component: Main, titulo: 'Home' },
    { path: '/tv/id/:id', component: Render, props: true },
    { path: '/tv/:category', component: Category, props: true },
    { path:'/tv/genero/:gender', component: Genero, props: true}
]