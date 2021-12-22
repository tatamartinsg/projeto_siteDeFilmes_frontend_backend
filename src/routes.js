import Main from './components/Main/Main.vue'
import Render from './components/RenderID/Render.vue'
export const routes = [
    { path: '/', component: Main, titulo: 'Home' },
    { path: '/tv/id/:id', component: Render, props:true}
]