import os, subprocess, glob, shutil

android_jar = r"C:\Users\donod\AppData\Local\Android\Sdk\platforms\android-36\android.jar"
d8_bat = r"C:\Users\donod\AppData\Local\Android\Sdk\build-tools\36.1.0\d8.bat"
work_dir = r"C:\Users\donod\Downloads\itsmaagic\work\build_w3"
classes_dir = os.path.join(work_dir, "classes")
dex_dir = os.path.join(work_dir, "dex")

for d in [classes_dir, dex_dir]:
    os.makedirs(d, exist_ok=True)

print("Testing environment...")
print("d8 exists:", os.path.exists(d8_bat))
print("android.jar exists:", os.path.exists(android_jar))
