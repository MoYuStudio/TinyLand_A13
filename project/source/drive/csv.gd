
# 以下代码由 ChatGPT 生成并进行调整
# 目前读取正常,写入格式有误

extends Node

func 读取(文件路径: String) -> Array:
	var 文件 = FileAccess.open(文件路径, FileAccess.READ)
	var csv数据 = []
	var 行 = ""
	while !文件.eof_reached():
		行 = 文件.get_line()
		csv数据.append(行.split(","))
	文件.close()
	return csv数据

func 写入(文件路径: String, 数据: Array) -> void:
	var 文件 = FileAccess.open(文件路径, FileAccess.WRITE)
	for 行 in 数据:
		文件.store_line(行.join(","))
	文件.close()
