import os, sys, subprocess, shutil, time

JADX_BAT = r"C:\Users\donod\Downloads\itsmaagic\tools\jadx\bin\jadx.bat"
BASE_APK = r"C:\Users\donod\Downloads\itsmaagic\extracted\bundle\base.apk"
OUT_DIR = r"C:\Users\donod\Downloads\itsmaagic\source\jadx_out"
FINAL_JAVA_DIR = r"C:\Users\donod\Downloads\itsmaagic\source\app\src\main\java"

print(f"[1/3] Launching JADX decompilation on {BASE_APK}...")
print(f"Destination temporary folder: {OUT_DIR}")
print(f"Threads: 12")

cmd = [
    JADX_BAT,
    "-d", OUT_DIR,
    "-j", "12",
    "--no-res",
    "--show-bad-code",
    "--escape-unicode",
    "--comments-level", "warn",
    "--log-level", "progress",
    BASE_APK
]

start_time = time.time()
p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, bufsize=1)

for line in iter(p.stdout.readline, ''):
    line_s = line.strip()
    if line_s:
        # print progress line
        if "progress" in line_s.lower() or "%" in line_s or "processing" in line_s.lower() or "error" in line_s.lower() or "info" in line_s.lower():
            print(f"[JADX] {line_s}", flush=True)

p.wait()
elapsed = time.time() - start_time
print(f"[2/3] JADX finished in {elapsed:.1f}s with exit code {p.returncode}")

# Move sources to source/app/src/main/java
jadx_sources = os.path.join(OUT_DIR, "sources")
if os.path.exists(jadx_sources):
    print(f"[3/3] Moving decompiled sources to {FINAL_JAVA_DIR}...")
    os.makedirs(FINAL_JAVA_DIR, exist_ok=True)
    for item in os.listdir(jadx_sources):
        src_item = os.path.join(jadx_sources, item)
        dst_item = os.path.join(FINAL_JAVA_DIR, item)
        if os.path.exists(dst_item):
            if os.path.isdir(dst_item):
                shutil.rmtree(dst_item)
            else:
                os.remove(dst_item)
        shutil.move(src_item, dst_item)
    print(f"Decompiled sources successfully organized in {FINAL_JAVA_DIR}")
else:
    print(f"Warning: {jadx_sources} not found. Checking {OUT_DIR}...")
    for item in os.listdir(OUT_DIR):
        print(" -", item)

print("ALL DECOMPILATION AND STRUCTURING TASKS COMPLETED!")
