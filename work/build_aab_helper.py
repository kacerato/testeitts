import os, subprocess, shutil

android_jar = r"C:\Users\donod\AppData\Local\Android\Sdk\platforms\android-36\android.jar"
d8_bat = r"C:\Users\donod\AppData\Local\Android\Sdk\build-tools\36.1.0\d8.bat"
work_dir = r"C:\Users\donod\Downloads\itsmaagic\work\build_aab_helper"
classes_dir = os.path.join(work_dir, "classes")
dex_dir = os.path.join(work_dir, "dex")
smali_dir = os.path.join(work_dir, "smali")

for d in [classes_dir, dex_dir, smali_dir]:
    shutil.rmtree(d, ignore_errors=True)
    os.makedirs(d, exist_ok=True)

# Write AabZipHelper in Java
helper_src = os.path.join(work_dir, "AabZipHelper.java")
with open(helper_src, "w", encoding="utf-8") as f:
    f.write("""package w3;

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

        boolean isStored = entryName.endsWith(".so") || entryName.startsWith("base/lib/") || entryName.contains("/lib/");
        if (isStored) {
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
""")

cmd_javac = [
    "javac",
    "-source", "1.8",
    "-target", "1.8",
    "-cp", android_jar,
    "-d", classes_dir,
    helper_src
]
r = subprocess.run(cmd_javac, capture_output=True, text=True)
print("javac:", r.returncode, r.stderr)
assert r.returncode == 0

cmd_d8 = [
    d8_bat,
    "--output", dex_dir,
    "--min-api", "26",
    os.path.join(classes_dir, "w3", "AabZipHelper.class")
]
r = subprocess.run(cmd_d8, capture_output=True, text=True)
print("d8:", r.returncode, r.stderr)
assert r.returncode == 0

# Disassemble with baksmali
apktool_jar = r"C:\Users\donod\Downloads\itsmaagic\tools\apktool.jar"
cmd_bak = [
    "java", "-jar", apktool_jar,
    "empty-framework-dir"
]
# Use apktool or baksmali or d2j
print("DEX generated successfully:", os.listdir(dex_dir))
