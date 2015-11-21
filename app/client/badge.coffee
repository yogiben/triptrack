Badge =
  new: (name)->
    badge = @_badges
    swal
      title: "You just unlocked a badge!"
      text: "You've travelled 1000 miles with GWR"
      type: "success"

  _badges: [
      {
        name: "gwr"
        label: "GWR Fan badge"
        text: "You've used the GWR at least once! Brunel would be proud"
      }
      {
        label: "Length of the UK"
        name: "uk_length"
        text: "You've travelled the length of the UK (874 miles) in trains"
      }
    ]
