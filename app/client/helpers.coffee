Template.registerHelper 'User', ->
  Meteor.user()

Template.registerHelper 'prettyDate', (d) ->
  console.log d
  moment(d).format('Do MMM h:mm')
