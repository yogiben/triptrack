AppController = RouteController.extend({
  layoutTemplate: 'appLayout',
  onBeforeAction: function(){
    var routeName = this.route.getName();
    if (!Meteor.user() && !Meteor.loggingIn() && routeName !== 'accounts'){
      this.redirect('accounts');
    } else if (Meteor.user() && routeName == 'accounts') {
      this.redirect('home');
    } else {
      this.next();
    }
  }
});

HomeController = AppController.extend({});

JourneyDetailController = AppController.extend({
  data: function(){
    return Journeys.findOne(this.params._id)
  }
});

JourneysController = AppController.extend({});

// TrendingController = AppController.extend({});
//
// RecentController = AppController.extend({});
//
// ProductsShowController = AppController.extend({});
//
// UsersShowController = AppController.extend({});

NotificationsController = AppController.extend({});

ProfileController = AppController.extend({});

AccountsController = AppController.extend({
  layoutTemplate: "accountsLayout"
});
