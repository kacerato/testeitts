import subprocess, os, shutil

unsigned_apk = r"C:\Users\donod\Downloads\itsmaagic\ITsMagic_Rebuilt_unsigned.apk"
signed_apk = r"C:\Users\donod\Downloads\itsmaagic\ITsMagic_2.0_Rebuilt.apk"
keystore = r"C:\Users\donod\Downloads\itsmaagic\tools\debug.keystore"

print("[1/2] Copying unsigned APK to target...")
shutil.copy2(unsigned_apk, signed_apk)

print("[2/2] Signing with jarsigner...")
cmd = [
    "jarsigner",
    "-sigalg", "SHA256withRSA",
    "-digestalg", "SHA-256",
    "-keystore", keystore,
    "-storepass", "android",
    "-keypass", "android",
    signed_apk,
    "androiddebugkey"
]

with open(r"C:\Users\donod\Downloads\itsmaagic\work\sign.log", "w") as log_file:
    p = subprocess.Popen(cmd, stdout=log_file, stderr=subprocess.STDOUT)
    p.wait()

print(f"Jarsigner exited with code {p.returncode}")
if p.returncode == 0:
    print(f"Signed APK successfully generated: {signed_apk} ({os.path.getsize(signed_apk)/(1024*1024):.2f} MB)")
