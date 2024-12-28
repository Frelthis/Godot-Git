extends AnimatedSprite2D
# too many comments for new people

func _ready():
	var FullSheet: SpriteFrames
	#load specific precreated sheet that needs separating
	FullSheet = load("res://Example sprite/NumberFrames.tres")
	#replace Nums with the Animations name created in your SpriteFrames
	for anim in FullSheet.get_frame_count("Nums"):
		var img = FullSheet.get_frame_texture("Nums", anim).get_image()
		#saved to Separated folder with just frame number name, if changed will overwrite iteself if not unique
		img.save_png("res://Separated/Number{name}.png".format({'name': anim}) )
