import Vue from 'vue'
import App from './App.vue'
import bootstrap from './bootstrap.js'
import {BootstrapVue} from 'bootstrap-vue'
import VueRouter from 'vue-router'
import {routes} from '../routes.js'

Vue.config.productionTip = false
Vue.use(bootstrap)
Vue.use(BootstrapVue)
Vue.use(VueRouter)

const router = new VueRouter({
  routes,
  mode: 'history'
})

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
