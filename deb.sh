#!/var/jb/usr/bin/bash
echo "bilibili@玩游戏的李子-"
echo "开始删除"
rm -r Packages
rm -r Packages.bz2
rm -r Packages.gz
echo "删除成功"

echo "开始打包"
dpkg-scanpackages --multiversion debs >> Packages
cat Packages | bzip2 > Packages.bz2
cat Packages | gzip > Packages.gz
echo "打包成功"

echo "开始推送"
git add .
echo "上传状态"
git status
git commit -m "updata"
git push
echo "推送完成"