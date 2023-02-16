
extends Node

class csv文件处理:

	func _ready():
		读取()

	func _process(delta):
		pass

	func 读取():
		var 文件 = FileAccess.open('res://resource/data/1.csv', FileAccess.READ)
		var content = 文件.get_as_text()
		print(content)
		return content
