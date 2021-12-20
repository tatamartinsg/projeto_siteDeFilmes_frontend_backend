import Main from './src/components/Main.vue'
import Render from './src/components/Render.vue'
export const routes = [
    { path: '/tv', component: Main, titulo: 'Home' },
    { path: '/serie/:id', component: Render, props:true}
]