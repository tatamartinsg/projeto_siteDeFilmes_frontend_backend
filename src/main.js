import Vue from 'vue'
import App from './App.vue'
import bootstrap from './bootstrap.js'
import {BootstrapVue} from 'bootstrap-vue'

Vue.config.productionTip = false
Vue.use(bootstrap)
Vue.use(BootstrapVue)

new Vue({
  render: h => h(App),
}).$mount('#app')
