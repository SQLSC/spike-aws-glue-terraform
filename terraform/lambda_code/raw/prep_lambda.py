import zipfile

zipfile.ZipFile("new_file.zip", mode="w").write("new_file.py")