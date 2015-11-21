Meteor.startup(function() {
  // ServiceConfiguration.configurations.remove({service: 'meteor-developer'});
});

Accounts.onCreateUser(function(options, user) {
  user.profile = options.profile;
  return user;
});
