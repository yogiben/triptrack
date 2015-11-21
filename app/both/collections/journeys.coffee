@Journeys = new Mongo.Collection 'journeys'

Journeys.attachSchema new SimpleSchema
  departure:
    type: String
  destination:
    type: String
  company:
    type: String
  startTime:
    type: Date
    defaultValue: new Date()
  owner:
    type: String
    autoValue: ->
      Meteor.userId() if @isInsert
