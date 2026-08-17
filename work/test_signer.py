import os, subprocess

work_dir = r"C:\Users\donod\Downloads\itsmaagic\work\build_aab_helper"
classes_dir = os.path.join(work_dir, "classes")
dex_dir = os.path.join(work_dir, "dex")

# Let's inspect BouncyCastle classes in source or jars
print("Checking BouncyCastle signer...")
