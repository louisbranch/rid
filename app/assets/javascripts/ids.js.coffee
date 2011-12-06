$ printTemplate = ->
  if $("#print_template").length
    $("#print_template").click ->
      window.print()
      false
