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
