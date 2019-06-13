import listgoods from './components/listgoods.vue';
import cart from './components/cart.vue';
import order from './components/order.vue';

const routes = [
    { path: '/goods', component: listgoods },
    { path: '/cart', component: cart },
    { path: '/order/:id', name: 'order', component: order }
];

export default routes;