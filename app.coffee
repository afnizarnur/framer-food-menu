app = Framer.Importer.load("imported/food-menu@2x")

# When button Lihat Menu clicked
app.btn_menu.onMouseDown ->
	app.bg_lihat.animate
		opacity: 0.9
		options:
			curve: Bezier.easeInOut
			time: .2
	app.text_lihat.animate
		scale: .97
		options:
			curve: Bezier.easeInOut
			time: .1

# When button lihat menu released
app.btn_menu.onMouseUp ->
	app.bg_lihat.animate
		opacity: 1
		options:
			curve: Bezier.easeInOut
			time: .1
	app.text_lihat.animate
		scale: 1
		options: 
			curve: Bezier.easeInOut
			time: .1

# Set menu position
app.menu.y = Screen.height
app.menu.visible = true
app.menu.z = 1
	
overlay = new Layer
	backgroundColor: "black"
	width: Screen.width
	height: Screen.height
	opacity: 0
	visible: false
	z: 0

overlay.on Events.Click, ->
	app.menu.animate
		y: Screen.height
		curve: "spring(400, 35, 0)"
		options:
			time: .45
	overlay.animate 
		opacity: 0
		curve: "spring(400, 35, 0)"
	# Still problem in the animation
# 	overlay.visible = false

app.btn_menu.on Events.Click, ->
	overlay.visible = true
	overlay.animate 
		opacity: .5
		curve: "spring(400, 35, 0)"
	app.menu.animate
		y: 352
		curve: "spring(400, 35, 0)"
		options:
			time: .45
	