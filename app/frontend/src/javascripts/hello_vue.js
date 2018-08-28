import Vue from 'vue'

new Vue({
  el: '#vue-app',
  data: {
    message: 'Hello Vue.js!!!!!'
  },
  methods: {
    hogehoge: function() {
      this.message = `${this.message}!`;
    }
  }
});
