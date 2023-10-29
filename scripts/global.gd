extends Node

var debug_mode = false
var version = "alpha.1.50"
# rules for version
# - every time you commit it goes up by one
#    - if it is a small hotfix then just the end number
#    - if it is a bigger update the second last number
var current_level = 1
var score := "0.0"
var local_name := ""
var local_color := Color()
