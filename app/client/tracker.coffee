Template.body.helpers exampleMapOptions: ->
  if GoogleMaps.loaded()
    return {
      center: new (google.maps.LatLng)(-37.8136, 144.9631)
      zoom: 8
    }

Meteor.startup ->
  GoogleMaps.load();

Tracker.autorun ->
  Meteor.subscribe 'myJourneys'

  if Journeys.find({owner: Meteor.userId()}).count()
    Session.set 'myJourneys', Journeys.find({owner: Meteor.userId()}).count()
  else
    Session.set 'myJourneys', 0

  if Journeys.find({owner: Meteor.userId()}).count()
    distances = _.pluck _.map Journeys.find().fetch(), 'distance'
    myDist =_.reduce Journeys.find().fetch(), (memo, num) ->
      memo = memo | 0
      memo + num
    Session.set 'myDist', myDist
  else
    Session.set 'myDistance', 0
