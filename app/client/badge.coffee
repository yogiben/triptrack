@Badge =
  new: (name)->
    badge = _.findWhere @_badges, {name: name}
    swal
      title: badge.title
      text: badge.text
      type: "success"

  _badges: [
      {
        name: "gwr"
        title: "GWR Fan badge"
        text: "You've used the GWR at least once! Brunel would be proud"
      }
      {
        title: "Length of the UK"
        name: "uk_length"
        text: "You've travelled the length of the UK (874 miles) in trains"
      }
    ]
