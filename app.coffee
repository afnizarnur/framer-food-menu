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

# Set menu position and prop
app.menu.y = Screen.height
app.menu.visible = true
app.menu.z = 1

overlay = new Layer
	backgroundColor: "black"
	width: Screen.width
	height: Screen.height
	opacity: 0
	index: 0

app.btn_menu.on Events.Click, ->
	overlay.z = 1
	overlay.animate 
		opacity: .5
		curve: "spring(400, 35, 0)"

	app.menu.animate
		y: 352
		curve: "spring(400, 35, 0)"
		options:
			time: .45

overlay.states.show = 
	overlay.animate
		visible: false
		opacity: 0
		curve: "spring(400, 35, 0)"

overlay.onClick ->
	overlay.stateCycle()
	

# overlay.on Events.Click, ->
# 	app.menu.animate
# 		y: Screen.height
# 		curve: "spring(400, 35, 0)"
# 		options:
# 			time: .45
# 	
# 	overlay.animate 
# 		visible: false
# 		opacity: 0
# 		curve: "spring(400, 35, 0)"
		
app.pesan.opacity
	
	