package wb;

import Ic.C2635n;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.CubemapConfig;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Enumeration;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

public class C15983e {

    public static final String f127394a = "cf.bin";

    public static void a(ZipOutputStream zos, String entryName, File src) throws IOException {
        ZipEntry zipEntry = new ZipEntry(entryName);
        zipEntry.setTime(src.lastModified());
        zos.putNextEntry(zipEntry);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(src));
        try {
            byte[] bArr = new byte[65536];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    bufferedInputStream.close();
                    zos.closeEntry();
                    return;
                }
                zos.write(bArr, 0, read);
            }
        } catch (Throwable th2) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void b(InputStream in2, byte[] buffer) throws IOException {
        do {
        } while (in2.read(buffer) != -1);
    }

    public static ZipEntry c(ZipFile zf2, String name) {
        String o10 = o(name);
        Enumeration<? extends ZipEntry> entries = zf2.entries();
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            String name2 = nextElement.getName();
            if (name.equals(name2) || o10.equals(o(name2))) {
                return nextElement;
            }
        }
        return null;
    }

    public static boolean d(InputStream zipIn, String name) throws IOException {
        if (zipIn == null) {
            throw new NullPointerException("zipIn == null");
        }
        if (name == null || name.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        String o10 = o(name);
        o10.contains("/");
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(zipIn));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return false;
                }
                if (nextEntry.isDirectory()) {
                    zipInputStream.closeEntry();
                } else if (o10.equals(o(nextEntry.getName()))) {
                    zipInputStream.close();
                    return true;
                }
            } catch (Throwable th2) {
                try {
                    zipInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static boolean e(InputStream zipIn, String[] faces) throws IOException {
        if (zipIn == null) {
            throw new NullPointerException("zipIn == null");
        }
        if (faces == null || faces.length == 0) {
            throw new IllegalArgumentException("faces is empty");
        }
        int length = faces.length;
        boolean[] zArr = new boolean[length];
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(zipIn));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                if (nextEntry.isDirectory()) {
                    zipInputStream.closeEntry();
                } else {
                    String o10 = o(nextEntry.getName());
                    for (int i10 = 0; i10 < faces.length; i10++) {
                        if (o(faces[i10]).equals(o10)) {
                            zArr[i10] = true;
                        }
                    }
                }
            } catch (Throwable th2) {
                try {
                    zipInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        zipInputStream.close();
        for (int i11 = 0; i11 < length; i11++) {
            if (!zArr[i11]) {
                return false;
            }
        }
        return true;
    }

    public static boolean f(InputStream zipIn, String[] primaryFaces, String[] fallbackFaces) throws IOException {
        if (zipIn == null) {
            throw new NullPointerException("zipIn == null");
        }
        if (primaryFaces == null || primaryFaces.length == 0) {
            throw new IllegalArgumentException("primaryFaces is empty");
        }
        if (fallbackFaces == null || fallbackFaces.length != primaryFaces.length) {
            throw new IllegalArgumentException("fallbackFaces is invalid");
        }
        int length = primaryFaces.length;
        boolean[] zArr = new boolean[length];
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(zipIn));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                if (nextEntry.isDirectory()) {
                    zipInputStream.closeEntry();
                } else {
                    String o10 = o(nextEntry.getName());
                    for (int i10 = 0; i10 < primaryFaces.length; i10++) {
                        if (!zArr[i10]) {
                            String o11 = o(primaryFaces[i10]);
                            String o12 = o(fallbackFaces[i10]);
                            if (o11.equals(o10) || o12.equals(o10)) {
                                zArr[i10] = true;
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                try {
                    zipInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        zipInputStream.close();
        for (int i11 = 0; i11 < length; i11++) {
            if (!zArr[i11]) {
                return false;
            }
        }
        return true;
    }

    public static CubemapConfig g(File cubemapFile) throws IOException {
        if (cubemapFile == null) {
            throw new NullPointerException("cubemapFile == null");
        }
        if (!cubemapFile.exists() || cubemapFile.length() == 0) {
            return null;
        }
        ZipFile zipFile = new ZipFile(cubemapFile);
        try {
            ZipEntry entry = zipFile.getEntry(f127394a);
            if (entry == null) {
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    String name = nextElement.getName();
                    if (f127394a.equals(name) || f127394a.equals(o(name))) {
                        entry = nextElement;
                        break;
                    }
                }
            }
            if (entry == null) {
                zipFile.close();
                return null;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(entry));
            try {
                byte[] k10 = k(bufferedInputStream);
                bufferedInputStream.close();
                zipFile.close();
                if (k10 == null || k10.length == 0) {
                    return null;
                }
                return CubemapConfig.b(C2635n.c(k10));
            } finally {
            }
        } catch (Throwable th2) {
            try {
                zipFile.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static CubemapConfig h(InputStream zipIn) throws IOException {
        byte[] bArr;
        if (zipIn == null) {
            throw new NullPointerException("zipIn == null");
        }
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(zipIn));
        try {
            byte[] bArr2 = new byte[65536];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    bArr = null;
                    break;
                }
                String name = nextEntry.getName();
                if (f127394a.equals(name) || f127394a.equals(o(name))) {
                    break;
                }
                b(zipInputStream, bArr2);
                zipInputStream.closeEntry();
            }
            bArr = l(zipInputStream, bArr2);
            zipInputStream.closeEntry();
            if (bArr != null && bArr.length != 0) {
                CubemapConfig b10 = CubemapConfig.b(C2635n.c(bArr));
                zipInputStream.close();
                return b10;
            }
            zipInputStream.close();
            return null;
        } catch (Throwable th2) {
            try {
                zipInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static Bitmap i(InputStream zipIn, String name) throws IOException {
        if (zipIn == null) {
            throw new NullPointerException("zipIn == null");
        }
        if (name == null || name.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        String o10 = o(name);
        boolean contains = o10.contains("/");
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(zipIn));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return null;
                }
                if (nextEntry.isDirectory()) {
                    zipInputStream.closeEntry();
                } else {
                    String o11 = o(nextEntry.getName());
                    boolean equals = o10.equals(o11);
                    if (!equals && !contains) {
                        int lastIndexOf = o11.lastIndexOf(47);
                        if (lastIndexOf >= 0) {
                            o11 = o11.substring(lastIndexOf + 1);
                        }
                        equals = o10.equals(o11);
                    }
                    if (equals) {
                        Bitmap decodeStream = BitmapFactory.decodeStream(zipInputStream);
                        zipInputStream.closeEntry();
                        zipInputStream.close();
                        return decodeStream;
                    }
                    zipInputStream.closeEntry();
                }
            } catch (Throwable th2) {
                try {
                    zipInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void j(ZipOutputStream zos, String name, byte[] data) throws IOException {
        CRC32 crc32 = new CRC32();
        crc32.update(data);
        ZipEntry zipEntry = new ZipEntry(name);
        zipEntry.setMethod(0);
        zipEntry.setSize(data.length);
        zipEntry.setCrc(crc32.getValue());
        zos.putNextEntry(zipEntry);
        zos.write(data);
        zos.closeEntry();
    }

    public static byte[] k(InputStream in2) throws IOException {
        byte[] bArr = new byte[65536];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = in2.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static byte[] l(InputStream in2, byte[] buffer) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = in2.read(buffer);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(buffer, 0, read);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
    
        r4 = new java.io.File(r3, r12.getName() + ".tmp");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized void m(File output, CubemapConfig cubemapConfig) {
        synchronized (C15983e.class) {
            try {
                if (output == null) {
                    throw new NullPointerException("output == null");
                }
                if (cubemapConfig == null) {
                    throw new NullPointerException("cubemapConfig == null");
                }
                if (output.exists() && output.isDirectory()) {
                    throw new RuntimeException(new IOException("Output path is a directory: " + ((Object) output)));
                }
                File parentFile = output.getParentFile();
                if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                    throw new RuntimeException(new IOException("Failed to create directories: " + ((Object) parentFile)));
                }
                File file = new File(output.getName() + ".tmp");
                if (file.exists() && !file.delete()) {
                    throw new RuntimeException(new IOException("Failed to delete stale temp file: " + ((Object) file)));
                }
                try {
                    byte[] a10 = C2635n.a(cubemapConfig.q());
                    try {
                        if (output.exists()) {
                            ZipFile zipFile = new ZipFile(output);
                            try {
                                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                                try {
                                    byte[] bArr = new byte[65536];
                                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                                    while (entries.hasMoreElements()) {
                                        ZipEntry nextElement = entries.nextElement();
                                        if (!f127394a.equals(nextElement.getName())) {
                                            ZipEntry zipEntry = new ZipEntry(nextElement.getName());
                                            zipEntry.setTime(nextElement.getTime());
                                            zipOutputStream.putNextEntry(zipEntry);
                                            BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(nextElement));
                                            while (true) {
                                                try {
                                                    int read = bufferedInputStream.read(bArr);
                                                    if (read == -1) {
                                                        break;
                                                    } else {
                                                        zipOutputStream.write(bArr, 0, read);
                                                    }
                                                } catch (Throwable th2) {
                                                    try {
                                                        bufferedInputStream.close();
                                                    } catch (Throwable th3) {
                                                        th2.addSuppressed(th3);
                                                    }
                                                    throw th2;
                                                }
                                            }
                                            bufferedInputStream.close();
                                            zipOutputStream.closeEntry();
                                        }
                                    }
                                    j(zipOutputStream, f127394a, a10);
                                    zipOutputStream.close();
                                    zipFile.close();
                                } catch (Throwable th4) {
                                    try {
                                        zipOutputStream.close();
                                    } catch (Throwable th5) {
                                        th4.addSuppressed(th5);
                                    }
                                    throw th4;
                                }
                            } catch (Throwable th6) {
                                try {
                                    zipFile.close();
                                } catch (Throwable th7) {
                                    th6.addSuppressed(th7);
                                }
                                throw th6;
                            }
                        } else {
                            ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                            try {
                                j(zipOutputStream2, f127394a, a10);
                                zipOutputStream2.close();
                            } finally {
                            }
                        }
                        try {
                            Files.move(file.toPath(), output.toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                        } catch (AtomicMoveNotSupportedException unused) {
                            Files.move(file.toPath(), output.toPath(), StandardCopyOption.REPLACE_EXISTING);
                        }
                    } catch (Throwable th8) {
                        try {
                            Files.deleteIfExists(file.toPath());
                        } catch (IOException unused2) {
                        }
                        throw th8;
                    }
                } catch (Exception e10) {
                    throw new RuntimeException("Failed to save cubemap config to " + ((Object) output), e10);
                }
            } finally {
            }
        }
    }

    public static synchronized void n(File zipfile, File textureFile) throws IOException {
        synchronized (C15983e.class) {
            try {
                if (zipfile == null) {
                    throw new NullPointerException("zipfile == null");
                }
                if (textureFile == null) {
                    throw new NullPointerException("textureFile == null");
                }
                if (!textureFile.isFile()) {
                    throw new FileNotFoundException("textureFile not found or not a file: " + ((Object) textureFile));
                }
                String name = textureFile.getName();
                File parentFile = zipfile.getParentFile();
                if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                    throw new IOException("Failed to create directories: " + ((Object) parentFile));
                }
                File file = new File(zipfile.getParentFile(), zipfile.getName() + ".tmp");
                if (file.exists() && !file.delete()) {
                    throw new IOException("Failed to delete stale temp file: " + ((Object) file));
                }
                if (zipfile.exists()) {
                    ZipFile zipFile = new ZipFile(zipfile);
                    try {
                        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                        try {
                            byte[] bArr = new byte[65536];
                            Enumeration<? extends ZipEntry> entries = zipFile.entries();
                            while (entries.hasMoreElements()) {
                                ZipEntry nextElement = entries.nextElement();
                                if (!name.equals(nextElement.getName())) {
                                    ZipEntry zipEntry = new ZipEntry(nextElement.getName());
                                    zipEntry.setTime(nextElement.getTime());
                                    if (nextElement.isDirectory()) {
                                        zipOutputStream.putNextEntry(zipEntry);
                                        zipOutputStream.closeEntry();
                                    } else {
                                        zipOutputStream.putNextEntry(zipEntry);
                                        BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(nextElement));
                                        while (true) {
                                            try {
                                                int read = bufferedInputStream.read(bArr);
                                                if (read == -1) {
                                                    break;
                                                } else {
                                                    zipOutputStream.write(bArr, 0, read);
                                                }
                                            } catch (Throwable th2) {
                                                try {
                                                    bufferedInputStream.close();
                                                } catch (Throwable th3) {
                                                    th2.addSuppressed(th3);
                                                }
                                                throw th2;
                                            }
                                        }
                                        bufferedInputStream.close();
                                        zipOutputStream.closeEntry();
                                    }
                                }
                            }
                            a(zipOutputStream, name, textureFile);
                            zipOutputStream.close();
                            zipFile.close();
                        } finally {
                        }
                    } catch (Throwable th4) {
                        try {
                            zipFile.close();
                        } catch (Throwable th5) {
                            th4.addSuppressed(th5);
                        }
                        throw th4;
                    }
                } else {
                    ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                    try {
                        a(zipOutputStream2, name, textureFile);
                        zipOutputStream2.close();
                    } finally {
                    }
                }
                if (zipfile.exists() && !zipfile.delete()) {
                    throw new IOException("Failed to delete old zip: " + ((Object) zipfile));
                }
                if (!file.renameTo(zipfile)) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(zipfile);
                            try {
                                byte[] bArr2 = new byte[65536];
                                while (true) {
                                    int read2 = fileInputStream.read(bArr2);
                                    if (read2 == -1) {
                                        break;
                                    } else {
                                        fileOutputStream.write(bArr2, 0, read2);
                                    }
                                }
                                fileOutputStream.close();
                                fileInputStream.close();
                            } catch (Throwable th6) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th7) {
                                    th6.addSuppressed(th7);
                                }
                                throw th6;
                            }
                        } catch (Throwable th8) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th9) {
                                th8.addSuppressed(th9);
                            }
                            throw th8;
                        }
                    } finally {
                        if (!file.delete()) {
                            file.deleteOnExit();
                        }
                    }
                }
            } finally {
            }
        }
    }

    public static String o(String name) {
        if (name == null) {
            return null;
        }
        while (name.startsWith("./")) {
            name = name.substring(2);
        }
        return name;
    }
}
