package w3;

import androidx.annotation.RequiresApi;
import com.android.apksig.apk.ApkUtils;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import id.C13696a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.offlineApk.iyxan23.zipalignjava.InvalidZipException;
import yd.C16181m;

public class h {

    public static final String f126441a = "res/Ix.png";

    public static void a(File inputApk, File outputApk) throws IOException, InvalidZipException {
        if (outputApk.exists()) {
            outputApk.delete();
        }
        outputApk.createNewFile();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(inputApk, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c);
            try {
                fn.c.f(randomAccessFile, new FileOutputStream(outputApk), 4, false);
                randomAccessFile.close();
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    @RequiresApi(api = 26)
    public static void b(File zipFile, File inputApk, File outputApk, File jksFile, File pk8File, File certificateFile, String keystorePassword, String keyAlias, String keyPassword, String assetsPrefix, String appTitle, String packageId, File appIconFile) throws Exception {
        c(zipFile, inputApk, assetsPrefix, appTitle, packageId, appIconFile);
        a(inputApk, outputApk);
        C13696a.a(outputApk, inputApk);
        outputApk.delete();
        org.offlineApk.apksigner.a.e(new String[]{"sign", "--align-file-size", "--key", pk8File.getAbsolutePath(), "--cert", certificateFile.getAbsolutePath(), "--in", inputApk.getAbsolutePath(), "--out", outputApk.getAbsolutePath()});
    }

    @RequiresApi(api = 26)
    public static void c(File zipFile, File inputApk, String assetsPrefix, String appTitle, String packageId, File appIconFile) throws IOException {
        File file = new File(W7.b.f27306f.f2458a.b(N7.c.t()) + "/Builder/tempfiles/");
        if (file.exists()) {
            C13696a.g(file);
        }
        e(inputApk, file);
        if (appTitle != null && !appTitle.trim().isEmpty()) {
            i.f(new File(file, ApkUtils.ANDROID_MANIFEST_ZIP_ENTRY_NAME), appTitle);
        }
        if (packageId != null && !packageId.trim().isEmpty()) {
            j.i(new File(file, ApkUtils.ANDROID_MANIFEST_ZIP_ENTRY_NAME), packageId);
        }
        d(file, appIconFile);
        File file2 = new File(file, q.b.f72176a + assetsPrefix);
        if (!file2.exists() && !file2.mkdirs()) {
            throw new IOException("Failed to create directory: " + file2.getAbsolutePath());
        }
        e(zipFile, file2);
        inputApk.delete();
        inputApk.createNewFile();
        f(file, inputApk);
        if (file.exists()) {
            C13696a.g(file);
        }
    }

    public static void d(File tempDir, File appIconFile) throws IOException {
        if (appIconFile == null || !appIconFile.exists()) {
            return;
        }
        File file = new File(tempDir, f126441a);
        if (!file.exists()) {
            throw new FileNotFoundException("Offline launcher icon resource not found: res/Ix.png");
        }
        if (!C13696a.a(appIconFile, file)) {
            throw new IOException("Failed to replace offline launcher icon");
        }
    }

    public static void e(File zipFile, File destDir) throws IOException {
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(zipFile));
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return;
                }
                File file = new File(destDir, nextEntry.getName());
                if (nextEntry.isDirectory()) {
                    file.mkdirs();
                } else {
                    File parentFile = file.getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = zipInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, read);
                            }
                        } catch (Throwable th2) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                    fileOutputStream.close();
                }
            }
        } catch (Throwable th4) {
            try {
                zipInputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    @RequiresApi(api = 26)
    public static void f(File sourceDir, File zipFile) throws IOException {
        if (zipFile.exists()) {
            zipFile.delete();
        }
        zipFile.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(zipFile);
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(fileOutputStream);
            try {
                g(sourceDir, sourceDir, zipOutputStream);
                zipOutputStream.close();
                fileOutputStream.close();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @RequiresApi(api = 26)
    public static void g(File rootDir, File file, ZipOutputStream zos) throws IOException {
        ZipEntry zipEntry;
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    g(rootDir, file2, zos);
                }
                return;
            }
            return;
        }
        String replace = rootDir.toPath().relativize(file.toPath()).toString().replace(C16181m.f130232i, "/");
        if (replace.equals("resources.arsc")) {
            long length = file.length();
            CRC32 crc32 = new CRC32();
            byte[] bArr = new byte[4096];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    } else {
                        crc32.update(bArr, 0, read);
                    }
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            fileInputStream.close();
            zipEntry = new ZipEntry(replace);
            zipEntry.setMethod(0);
            zipEntry.setSize(length);
            zipEntry.setCompressedSize(length);
            zipEntry.setCrc(crc32.getValue());
        } else {
            zipEntry = new ZipEntry(replace);
        }
        zos.putNextEntry(zipEntry);
        FileInputStream fileInputStream2 = new FileInputStream(file);
        try {
            byte[] bArr2 = new byte[4096];
            while (true) {
                int read2 = fileInputStream2.read(bArr2);
                if (read2 == -1) {
                    fileInputStream2.close();
                    zos.closeEntry();
                    return;
                }
                zos.write(bArr2, 0, read2);
            }
        } catch (Throwable th4) {
            try {
                fileInputStream2.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }
}
