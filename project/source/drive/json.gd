
# 以下代码由 ChatGPT 生成并进行调整

extends Node

func 写入(文件路径: String, 数据: Dictionary):
	var 文件 = FileAccess.open(文件路径, FileAccess.WRITE)
	var json字符串数据 = JSON.stringify(数据)
	文件.store_string(json字符串数据)
	文件.close()

func 读取(文件路径: String) -> Dictionary:
	var 文件 = FileAccess.open(文件路径, FileAccess.READ)
	var json字符串数据 = 文件.get_as_text()
	var 数据 = JSON.parse_string(json字符串数据)
	文件.close()
	return 数据
