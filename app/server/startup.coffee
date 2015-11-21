if Meteor.isServer
  Meteor.startup ->
    # ServiceConfiguration.configurations.upsert { service: 'facebook' },
    #   service: 'facebook'
    #   appId: Meteor.settings.facebook.appId
    #   secret: Meteor.settings.facebook.secret
