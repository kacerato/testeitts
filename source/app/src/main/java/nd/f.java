package nd;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import nd.e;
import yd.C16181m;

public class f {

    public static final int f97958a = 8192;

    public final String a(File file, File baseFolder) {
        if (file == null) {
            return "";
        }
        if (baseFolder == null) {
            return file.getName();
        }
        String path = baseFolder.toURI().relativize(file.toURI()).getPath();
        return (path == null || path.isEmpty()) ? file.getName() : c(path);
    }

    public final void b(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        file.delete();
    }

    public final String c(String entryName) {
        String replace = entryName.replace(C16181m.f130232i, "/");
        while (replace.startsWith("/")) {
            replace = replace.substring(1);
        }
        return replace;
    }

    public final String d(String path) {
        return path.replace("//", "/");
    }

    public final boolean e(File tempFile, File destinationFile) throws IOException {
        if (destinationFile.exists() && !destinationFile.delete()) {
            return false;
        }
        if (tempFile.renameTo(destinationFile)) {
            return true;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(tempFile), 8192);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(destinationFile), 8192);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                            b(tempFile);
                            return true;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Exception unused) {
            b(destinationFile);
            return false;
        }
    }

    public final boolean f(ZipOutputStream zipOutputStream, File folder, File baseFolder, e.c listener) throws IOException {
        File[] listFiles = folder.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return false;
        }
        boolean z10 = false;
        for (File file : listFiles) {
            if (listener == null || listener.a(file)) {
                if (file.isDirectory()) {
                    if (!f(zipOutputStream, file, baseFolder, listener)) {
                    }
                    z10 = true;
                } else {
                    String a10 = a(file, baseFolder);
                    if (!a10.isEmpty()) {
                        if (!l(zipOutputStream, file, a10)) {
                        }
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }

    public boolean g(String sourcePath, String toLocation) {
        try {
            k(sourcePath, toLocation, true, null);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            System.out.println("Zip failed from " + sourcePath + " to " + toLocation);
            return false;
        }
    }

    public boolean h(String sourcePath, String toLocation, e.c listener) {
        try {
            k(sourcePath, toLocation, true, listener);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            System.out.println("Zip failed from " + sourcePath + " to " + toLocation);
            return false;
        }
    }

    public void i(String sourcePath, String toLocation, e.c listener) throws IOException {
        k(sourcePath, toLocation, true, listener);
    }

    public boolean j(String sourcePath, String toLocation) {
        try {
            k(sourcePath, toLocation, false, null);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            System.out.println("Zip failed from " + sourcePath + " to " + toLocation);
            return false;
        }
    }

    public final void k(String sourcePath, String toLocation, boolean includeSourceFolder, e.c listener) throws IOException {
        boolean l10;
        String d10 = d(sourcePath);
        String d11 = d(toLocation);
        File file = new File(d10);
        File file2 = new File(d11);
        File file3 = new File(d11 + ".part");
        try {
            if (!file.exists()) {
                throw new IOException("Source folder for backup was not found: " + d10);
            }
            if (listener != null && !listener.a(file)) {
                throw new IOException("Source folder was filtered out before the backup started.");
            }
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("Failed to create the backup output folder: " + parentFile.getAbsolutePath());
            }
            b(file3);
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(fileOutputStream));
                try {
                    if (file.isDirectory()) {
                        File parentFile2 = includeSourceFolder ? file.getParentFile() : file;
                        if (parentFile2 == null) {
                            parentFile2 = file;
                        }
                        l10 = f(zipOutputStream, file, parentFile2, listener);
                    } else {
                        l10 = l(zipOutputStream, file, a(file, file.getParentFile()));
                    }
                    zipOutputStream.close();
                    fileOutputStream.close();
                    if (!l10) {
                        b(file3);
                        throw new IOException("Backup zip was created without any files.");
                    }
                    if (e(file3, file2)) {
                        return;
                    }
                    b(file3);
                    b(file2);
                    throw new IOException("Failed to publish the generated backup zip.");
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
        } catch (IOException e10) {
            b(file3);
            throw e10;
        } catch (Exception e11) {
            b(file3);
            throw new IOException("Zip failed from " + d10 + " to " + d11 + ": " + e11.getMessage(), e11);
        }
    }

    public final boolean l(ZipOutputStream zipOutputStream, File file, String entryName) throws IOException {
        if (file == null || !file.exists() || file.isDirectory() || entryName == null || entryName.isEmpty()) {
            return false;
        }
        ZipEntry zipEntry = new ZipEntry(entryName);
        zipEntry.setTime(file.lastModified());
        zipOutputStream.putNextEntry(zipEntry);
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 8192);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 8192);
                    if (read == -1) {
                        bufferedInputStream.close();
                        zipOutputStream.closeEntry();
                        return true;
                    }
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
        } catch (Throwable th4) {
            zipOutputStream.closeEntry();
            throw th4;
        }
    }

    public boolean m(String sourcePath, String toLocation) {
        try {
            k(sourcePath, toLocation, false, null);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            System.out.println("Zip failed from " + sourcePath + " to " + toLocation);
            return false;
        }
    }
}
