Template.registerHelper 'User', ->
  Meteor.user()

Template.registerHelper 'prettyDate', (d) ->
  console.log d
  moment(d).format('Do MMM h:mm')

Template.registerHelper 'stations', ->
  Stations

Template.registerHelper 'companies', ->
  [
    {
      label: "GWR"
      value: "GWR"
    }
    {
      label: "Virgin"
      value: "Virgin"
    }
    {
      label: "South West Trains"
      value: "South West Trains"
    }
  ]
