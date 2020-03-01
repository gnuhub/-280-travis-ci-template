#!/usr/bin/env bash
#set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

# 1 安装
function 1.install()
{
	echo "----------1.install----------"
	cd $CMD_PATH
	# 1.1 处理mac平台特有
	if [ "$(uname)" == "Darwin" ];then
		echo "----------1.1mac----------"
	fi
	# 1.2 linux
	if [ "$(uname)" == "Linux" ];then
		echo "----------1.2linux----------"
	fi
	# 1.3 通用
	echo "----------1.3linux mac----------"

}
# 2 配置
function 2.config()
{
	echo "----------2.config----------"
	cd $CMD_PATH
		# 1.1 处理mac平台特有
	if [ "$(uname)" == "Darwin" ];then
		echo "----------1.1mac----------"
	fi
	# 1.2 linux
	if [ "$(uname)" == "Linux" ];then
		echo "----------1.2linux----------"
	fi
	# 1.3 通用
	echo "----------1.3linux mac----------"
}
# 3 检查
function 3.check()
{
	echo "----------3.check----------"
	cd $CMD_PATH
		# 1.1 处理mac平台特有
	if [ "$(uname)" == "Darwin" ];then
		echo "----------1.1mac----------"
	fi
	# 1.2 linux
	if [ "$(uname)" == "Linux" ];then
		echo "----------1.2linux----------"
	fi
	# 1.3 通用
	echo "----------1.3linux mac----------"

}


1.install
2.config
3.check