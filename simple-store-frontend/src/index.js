import Vue from "vue";
import App from "./components/App.vue";
import routes from './routes'
import VueRouter from 'vue-router'

Vue.config.productionTip = false;

Vue.use(VueRouter);

const router = new VueRouter({routes});

router.replace({ path: '/goods', redirect: '/' })

new Vue({
  render: h => h(App),
  router: router,
}).$mount('#app');