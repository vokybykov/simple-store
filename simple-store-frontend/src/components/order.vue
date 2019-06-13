<template>
    <div class="row">
        <div class="col-md-9">
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
        </div>
        <div class="col-md-3 text-center">
            <h6>Статус заказа: {{status}}</h6>
            <button class="btn btn-danger" v-if="status=='Новый'" @click="makePayment()">Оплатить</button>
        </div>
    </div>
</template>

<script>
    import Vue from "vue";
    import axios from 'axios';

    export default {
        name: "order",
        data () {
            return {
                status: '',
                goods: [],
                errors: []
            }
        },
        mounted() {
            this.goods = JSON.parse(sessionStorage.getItem('cart'));
            axios.get('http://simple-store-backend/controllers/getOrderStatus.php', { params: { id: this.$route.params.id } })
                .then(response => {
                    console.log(response.data);
                    let responseData = response.data;
                    this.status = responseData[0].status;
                }).catch(e => {
                    this.errors.push(e);
            });
        },
        methods: {
            makePayment() {
                axios.post('http://simple-store-backend/controllers/payment.php', JSON.stringify(this.$route.params.id))
                    .then((response) => {
                        console.log(response.data);
                        let responseData = response.data
                        if(responseData.code === 200) {
                            this.status = responseData.status[0].status;
                            console.log(this.status);
                        }
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

    h6 {
        margin-bottom: 5%;
    }

    button {
        margin-left: 3%;
    }

    .navbar-dark {
        margin-bottom: 5%;
    }

    .list-group {
        max-width: 70%;
        margin-bottom: 3%;
        margin-left: 3%;
    }
</style>