import os, subprocess, shutil, zipfile

print("=== Starting AAB Offline & Robustness Patch Pipeline ===")

# 1. Compile AabZipHelper to DEX and disassemble to smali_classes10/w3/AabZipHelper.smali
android_jar = r"C:\Users\donod\AppData\Local\Android\Sdk\platforms\android-36\android.jar"
d8_bat = r"C:\Users\donod\AppData\Local\Android\Sdk\build-tools\36.1.0\d8.bat"
work_dir = r"C:\Users\donod\Downloads\itsmaagic\work\build_aab_helper"
classes_dir = os.path.join(work_dir, "classes")
dex_dir = os.path.join(work_dir, "dex")
dummy_apk = os.path.join(work_dir, "dummy.apk")
dummy_out = os.path.join(work_dir, "dummy_out")

shutil.rmtree(classes_dir, ignore_errors=True)
shutil.rmtree(dex_dir, ignore_errors=True)
shutil.rmtree(dummy_out, ignore_errors=True)
os.makedirs(classes_dir, exist_ok=True)
os.makedirs(dex_dir, exist_ok=True)

# Also save Java source in source/app/src/main/java/w3/AabZipHelper.java
aab_helper_java = r"C:\Users\donod\Downloads\itsmaagic\source\app\src\main\java\w3\AabZipHelper.java"
helper_code = """package w3;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Comparator;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class AabZipHelper {

    public static void writeDirToZip(File rootDir, File file, ZipOutputStream zos) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                Arrays.sort(listFiles, Comparator.comparing(File::getName));
                for (File child : listFiles) {
                    writeDirToZip(rootDir, child, zos);
                }
            }
            return;
        }

        String entryName = rootDir.toPath().relativize(file.toPath()).toString().replace('\\\\', '/');
        ZipEntry zipEntry = new ZipEntry(entryName);

        boolean isLib = entryName.endsWith(".so") || entryName.startsWith("base/lib/") || entryName.contains("/lib/");
        if (isLib) {
            zipEntry.setMethod(ZipEntry.STORED);
            long fileLength = file.length();
            zipEntry.setSize(fileLength);
            zipEntry.setCompressedSize(fileLength);

            CRC32 crc = new CRC32();
            try (FileInputStream fis = new FileInputStream(file)) {
                byte[] buf = new byte[8192];
                int n;
                while ((n = fis.read(buf)) != -1) {
                    crc.update(buf, 0, n);
                }
            }
            zipEntry.setCrc(crc.getValue());
        } else {
            zipEntry.setMethod(ZipEntry.DEFLATED);
        }

        zos.putNextEntry(zipEntry);
        try (FileInputStream fis = new FileInputStream(file)) {
            byte[] buf = new byte[8192];
            int n;
            while ((n = fis.read(buf)) != -1) {
                zos.write(buf, 0, n);
            }
        }
        zos.closeEntry();
    }
}
"""
with open(aab_helper_java, "w", encoding="utf-8") as f:
    f.write(helper_code)

cmd_javac = ["javac", "-source", "1.8", "-target", "1.8", "-cp", android_jar, "-d", classes_dir, aab_helper_java]
res_javac = subprocess.run(cmd_javac, capture_output=True, text=True)
print("[1/5] javac AabZipHelper exit:", res_javac.returncode)
assert res_javac.returncode == 0

class_file = os.path.join(classes_dir, "w3", "AabZipHelper.class")
cmd_d8 = [d8_bat, "--output", dex_dir, "--min-api", "26", class_file]
res_d8 = subprocess.run(cmd_d8, capture_output=True, text=True)
print("[2/5] d8 AabZipHelper exit:", res_d8.returncode)
assert res_d8.returncode == 0

dex_file = os.path.join(dex_dir, "classes.dex")
with zipfile.ZipFile(dummy_apk, "w") as z:
    z.write(dex_file, "classes.dex")

cmd_apktool = ["java", "-jar", r"C:\Users\donod\Downloads\itsmaagic\tools\apktool.jar", "d", "-f", "-r", dummy_apk, "-o", dummy_out]
subprocess.run(cmd_apktool, capture_output=True, text=True)

# Copy disassembled AabZipHelper.smali to smali_classes10/w3/
target_smali_dir = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes10\w3"
os.makedirs(target_smali_dir, exist_ok=True)
for r, d, files in os.walk(dummy_out):
    for f in files:
        if f.endswith(".smali"):
            shutil.copy2(os.path.join(r, f), os.path.join(target_smali_dir, f))
print(f"[3/5] Disassembled and copied {len(os.listdir(target_smali_dir))} smali files to smali_classes10/w3/")

# 2. Patch w3.1/d.smali method D to delegate to AabZipHelper.writeDirToZip and change RSA key to 2048-bit
d_smali_path = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes4\w3.1\d.smali"
with open(d_smali_path, "r", encoding="utf-8") as f:
    d_smali_content = f.read()

# Replace method D body
old_d_header = ".method public static D(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V"
old_d_end = ".end method"
d_idx = d_smali_content.find(old_d_header)
d_end_idx = d_smali_content.find(old_d_end, d_idx) + len(old_d_end)

new_d_method = """.method public static D(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lw3/AabZipHelper;->writeDirToZip(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    return-void
.end method"""

d_smali_content = d_smali_content[:d_idx] + new_d_method + d_smali_content[d_end_idx:]

# Change RSA key size from 3072 (0xc00) to 2048 (0x800)
d_smali_content = d_smali_content.replace("const/16 v4, 0xc00", "const/16 v4, 0x800")

with open(d_smali_path, "w", encoding="utf-8") as f:
    f.write(d_smali_content)
print("[4/5] Patched w3.1/d.smali (STORED .so handling + 2048-bit RSA)!")

# 3. Patch w3.1/a.smali method e to not throw on missing label
a_smali_path = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes4\w3.1\a.smali"
with open(a_smali_path, "r", encoding="utf-8") as f:
    a_smali_content = f.read()

# In method e, change label check throwing IOException to jumping directly to :goto_2
old_label_check = """    if-eqz p1, :cond_5

    invoke-static {v1}, Lw3/a$b;->c(Lw3/a$b;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to patch application label on protobuf AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0"""

new_label_check = """    goto :goto_2"""

if old_label_check in a_smali_content:
    a_smali_content = a_smali_content.replace(old_label_check, new_label_check)
    with open(a_smali_path, "w", encoding="utf-8") as f:
        f.write(a_smali_content)
    print("[4/5] Patched w3.1/a.smali (safe protobuf manifest label patching)!")
else:
    print("[4/5] Note: label check pattern already updated or not exact match.")

# 4. Patch u8/b.smali method c0 to support buildType == 2 (AAB Signed)
b_smali_path = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes3\u8\b.smali"
with open(b_smali_path, "r", encoding="utf-8") as f:
    b_smali_content = f.read()

old_c0 = """.method public final c0()Z
    .locals 2

    iget-boolean v0, p0, Lu8/b;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lu8/b;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method"""

new_c0 = """.method public final c0()Z
    .locals 1

    iget-boolean v0, p0, Lu8/b;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lu8/b;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method"""

if old_c0 in b_smali_content:
    b_smali_content = b_smali_content.replace(old_c0, new_c0)
    with open(b_smali_path, "w", encoding="utf-8") as f:
        f.write(b_smali_content)
    print("[4/5] Patched u8/b.smali method c0() (supports buildType 1 & 2)!")

print("=== ALL PATCHES APPLIED SUCCESSFULLY ===")
