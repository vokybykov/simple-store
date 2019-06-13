<template>
    <div>

        <ul v-if="goods.length" class="list-group list-group-flush">
            <li v-for="(good, index) in goods"
                v-model="goods"
                class="list-group-item"
                :key="good.id">
                <div class="view">
                    <label>{{ good.title }}</label>
                    <p>{{ good.price }} Р.</p>
                </div>
            </li>
        </ul>

        <button class="btn btn-danger" @click="makeOrder()">Заказать</button>

    </div>
</template>

<script>
    import Vue from "vue";
    import axios from 'axios';

    export default {
        name: "cart",
        data () {
            return {
                goods: [],
                errors: []
            }
        },
        mounted() {
            this.goods = JSON.parse(sessionStorage.getItem('cart'));
        },
        methods: {
            makeOrder() {
                axios.post('http://simple-store-backend/controllers/createOrder.php', JSON.stringify(this.goods))
                    .then((response) => {
                        console.log(response.data);
                        let responseData = response.data;
                        let idOrder = responseData['idOrder'];
                        this.$router.push({ name: 'order', params: { id: idOrder } });
                    }).catch((error) => {
                        console.log(error);
                    });
            }
        },

        computed: {

        }
    }
</script>

<style scoped>
    p {
        float: right;
    }

    button {
        margin-left: 3%;
    }

    .navbar-dark {
        margin-bottom: 5%;
    }

    .list-group {
        max-width: 50%;
        margin-bottom: 3%;
        margin-left: 3%;
    }
</style>