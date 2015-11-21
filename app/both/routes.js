Router.route('/', {
  name: 'home'
});

Router.route('/journey/:_id', {
  name: 'journeyDetail'
});

Router.route('/journeys', {
  name: 'journeys'
});


Router.route('/recent', {
  name: 'recent'
});

Router.route('/accounts', {
  name: 'accounts'
});


Router.route('/products/:_id', {
  name: 'products.show'
});

Router.route('/users/:_id', {
  name: 'users.show'
});

Router.route('/notifications', {
  name: 'notifications'
});

Router.route('/profile', {
  name: 'profile'
});
