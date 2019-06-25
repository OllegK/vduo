import '@babel/polyfill';
import 'mutationobserver-shim';
import * as firebase from 'firebase';
import './plugins/bootstrap-vue';
import Vue from 'vue';
import App from './App.vue';
import './registerServiceWorker';

const config = {
  apiKey: 'AIzaSyBF7QuycOZpW0vDEL9CYshJL1Z5f8FafYc',
  authDomain: 'vduo200.firebaseapp.com',
  databaseURL: 'https://vduo200.firebaseio.com',
  projectId: 'vduo200',
  storageBucket: '',
  messagingSenderId: '368681663778',
  appId: '1:368681663778:web:cfc94eee9cefa222',
};

firebase.initializeApp(config);

const messaging = firebase.messaging();

messaging.usePublicVapidKey('BDMDbh8U2KyB7OfT7C43wHrgnQhQ6LMNMvWjsAv6oEvPmU5SHpCMczG7_2hjvkmzSGZwMd__nUWFow4W9eXOMdA'); // 1. Generate a new key pair

// Request Permission of Notifications
messaging.requestPermission().then(() => {
  console.log('Notification permission granted.');

  // Get Token
  messaging.getToken().then((token) => {
    console.log(token);
  });
}).catch((err) => {
  console.log('Unable to get permission to notify.', err);
});

Vue.config.productionTip = false;

new Vue({
  render: h => h(App),
}).$mount('#app');
