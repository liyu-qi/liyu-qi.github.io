<?php
if (_FILES['file']['error'] === UPLOAD_ERR_OK) {file = _FILES['file']['tmp_name'];destination = '/path/to/destination/' . _FILES['file']['name'];
  move_uploaded_file(file, $destination);
  echo '文件上传成功！';
} else {
  echo '文件上传失败。';
}
?>
