<template>
		<div class="container">
			<div class="card-deck"  v-if="goods.length">
				<div v-for="(good, index) in goods"
					 v-model="goods"
					 class="card"
					 :key="good.id">
					<img :src=good.image class="card-img-top" alt="">
					<div class="card-body">
						<h5 class="card-title">{{ good.title }}</h5>
						<p class="card-text">{{ good.price }} р./шт.</p>
					</div>
					<div class="card-footer text-center">
						<button v-if="!good.inCart" @click="addToCart(index, good)" class="btn btn-primary">В корзину</button>
						<button v-if="good.inCart" class="btn btn-danger"><router-link to='/cart'>В корзине</router-link></button>
					</div>
				</div>
			</div>
			<p v-else>
				Список товаров пуст
			</p>
		</div>
</template>

<script>
import Vue from "vue";
import axios from 'axios';

export default {
	name: "app",
	components: {
	},
    data () {
        return {
            goods: [],
			errors: []
        }
    },
    mounted() {
		axios.get('http://simple-store-backend/controllers/getAllGoods.php')
		.then(response => {
		    console.log(response.data);
			let responseData = response.data;
			this.goods = responseData['records'];
			this.goods.map(good => {
                good.inCart = false;
			});
            let goodsInCart = JSON.parse(sessionStorage.getItem('cart'));
            this.goods.map(good => {
                goodsInCart.forEach(goodInCart => {
                    if(good.id == goodInCart.id) {
                        good.inCart = true;
					}
				});
			});
		}).catch(e => {
			this.errors.push(e);
		});
	},
	methods: {
		addToCart(index, good) {
            console.log(this.goods[index]);
            let postData = {idGood: good.id, idUser: 1 };
            axios.post('http://simple-store-backend/controllers/addGoodToCart.php', JSON.stringify(postData))
                .then((response) => {
                    this.addGoodToSessionStorage(good, index);
                }).catch((error) => {
                console.log(error);
            });
		},
        addGoodToSessionStorage(good, index) {
            let goodsInCart = JSON.parse(sessionStorage.getItem('cart'));

            if(goodsInCart == null) {
                let emptyArray = [];
                emptyArray.push(good);
                sessionStorage.setItem('cart', JSON.stringify(emptyArray));
            } else {
                goodsInCart.push(good);
                sessionStorage.setItem('cart', JSON.stringify(goodsInCart));
            }
            good.inCart = true;
            Vue.set(this.goods, index, good);
		}
	},
		
	computed: {

	}
};
</script>

<style>
#app {
	font-family: Verdana;
	color: navy;
}

a, a:hover {
	color: #fff !important;
	text-decoration: none;
}

.navbar-dark {
	margin-bottom: 5%;
}

.card {
	min-width: 250px;
	margin-bottom: 3% !important;
}

.card-img-top {
    padding: 15px;
}

.card-footer {
	background-color: transparent;
}

</style>