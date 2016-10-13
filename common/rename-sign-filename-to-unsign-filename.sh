#! /bin/sh
for oldname in $1
do
	newname=`echo $oldname| sed 's/[a á à ả ã ạ]/a/g; s/[ă ắ ằ ẳ ẵ ặ]/a/g; s/[â ấ ầ ẩ ẫ ậ]/a/g; s/[o ó ò ỏ õ ọ]/o/g; s/[ô ố ồ ổ ỗ ộ]/o/g; s/[ơ ớ ờ ở ỡ ợ]/o/g; s/[e é è ẻ ẽ ẹ]/e/g; s/[ê ế ề ể ễ ệ]/e/g; s/[u ú ù ủ ũ ụ]/u/g; s/[ư ứ ừ ử ữ ự]/u/g; s/[i í ì ỉ ĩ ị]/i/g; s/[y ý ỳ ỷ ỹ ỵ]/y/g; s/đ/d/g'`
	echo $newname
done
