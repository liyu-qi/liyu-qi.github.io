#!/bin/bash

# 进入 debs 目录，确保你运行脚本前已经处于仓库的根目录
cd debs

# 使用 dpkg-scanpackages 工具生成 Packages 文件
# 如果你已经包含了 dpkg 工具的 bin 路径在环境变量中，
# 则可以直接使用下面的命令；否则，你需要指定 dpkg 工具的完整路径

dpkg-scanpackages -m . /dev/null > Packages

# 如需要，可以压缩 Packages 文件产生 Packages.gz Packages.bz2
gzip -c9 Packages > Packages.gz
bzip2 -k Packages

# 返回到原始目录
cd -

# 脚本结束