# app.rb
require_relative("lib/designer.rb")
require_relative("lib/programmer.rb")

# Designer
designer = Designer.new

designer.design_things
designer.select_typography
designer.select_colors

#Programmer
programmer = Programmer.new
programmer.program
