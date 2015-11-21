Template.accounts.events
  'click [data-at-state]': (e, t) ->
    state = $(e.currentTarget).data('at-state')
    AccountsTemplates.setState(state)

  'click [data-signup]': (e, t) ->
    system = $(e.currentTarget).data('signup')
    if system is 'facebook'
      Meteor.loginWithFacebook
        requestPermissions: Meteor.settings.public.facebook.permissions
      , (error) ->
        alert error if error
