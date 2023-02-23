
# ChatGPT
# 目前读取正常,写入格式有误

# 在Godot 4.0中读写csv文件的通用模块

extends Node

# 读取CSV文件
func read_csv_file(file_path: String) -> Array:
	var file = FileAccess.open(file_path, FileAccess.READ)
	var csv_data = []
	var line = ""
	while !file.eof_reached():
		line = file.get_line()
		csv_data.append(line.split(","))
	file.close()
	return csv_data

# 写入CSV文件
func write_csv_file(file_path: String, data: Array) -> void:
	var file = FileAccess.open(file_path, FileAccess.WRITE)
	for row in data:
		file.store_line(row.join(","))
	file.close()
