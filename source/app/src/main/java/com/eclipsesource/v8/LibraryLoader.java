package com.eclipsesource.v8;

import com.eclipsesource.v8.PlatformDetector;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class LibraryLoader {
    static final String SWT_LIB_DIR = ".j2v8";
    static final String DELIMITER = System.getProperty("line.separator");
    static final String SEPARATOR = System.getProperty("file.separator");

    LibraryLoader() {
    }

    public static String computeLibraryShortName(boolean withLinuxVendor) {
        String vendor = (withLinuxVendor && PlatformDetector.OS.isLinux()) ? PlatformDetector.Vendor.getName() : null;
        String os = PlatformDetector.OS.getName();
        String arch = PlatformDetector.Arch.getName();
        return "j2v8" + (vendor != null ? "-" + vendor : "") + "-" + os + "-" + arch;
    }

    public static String computeLibraryFullName(boolean withLinuxVendor) {
        return "lib" + computeLibraryShortName(withLinuxVendor) + "." + PlatformDetector.OS.getLibFileExtension();
    }

    static boolean tryLoad(boolean withLinuxVendor, StringBuffer message) {
        String libShortName = computeLibraryShortName(withLinuxVendor);
        String libFullName = computeLibraryFullName(withLinuxVendor);
        String ideLocation = System.getProperty("user.dir") + SEPARATOR + "jni" + SEPARATOR + libFullName;
        if (load(libFullName, message) || load(libShortName, message)) {
            return true;
        }
        if (new File(ideLocation).exists() && load(ideLocation, message)) {
            return true;
        }
        return false;
    }

    public static void loadLibrary(String tempDirectory) {
        String path;
        if (PlatformDetector.OS.isAndroid()) {
            System.loadLibrary("j2v8");
            return;
        }
        StringBuffer message = new StringBuffer();
        if (tryLoad(true, message) || tryLoad(false, message)) {
            return;
        }
        if (tempDirectory != null) {
            path = tempDirectory;
        } else {
            path = System.getProperty("java.io.tmpdir");
        }
        if (extract(path, true, message) || extract(path, false, message)) {
        } else {
            throw new UnsatisfiedLinkError("Could not load J2V8 library. Reasons: " + message.toString());
        }
    }

    static boolean load(String libName, StringBuffer message) {
        try {
            if (libName.indexOf(SEPARATOR) != -1) {
                System.load(libName);
                return true;
            }
            System.loadLibrary(libName);
            return true;
        } catch (UnsatisfiedLinkError e10) {
            if (message.length() == 0) {
                message.append(DELIMITER);
            }
            message.append('\t');
            message.append(e10.getMessage());
            message.append(DELIMITER);
            return false;
        }
    }

    static boolean extract(String libPath, boolean withLinuxVendor, StringBuffer message) {
        String libFullName = computeLibraryFullName(withLinuxVendor);
        return extract(libPath + SEPARATOR + libFullName, libFullName, message);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static boolean extract(String fileName, String mappedName, StringBuffer message) {
        FileOutputStream os = null;
        InputStream is = null;
        File file = new File(fileName);
        boolean extracted = false;
        try {
            if (file.exists()) {
                file.delete();
            }
            is = LibraryLoader.class.getResourceAsStream("/" + mappedName);
            if (is != null) {
                extracted = true;
                byte[] buffer = new byte[4096];
                os = new FileOutputStream(fileName);
                while (true) {
                    int read = is.read(buffer);
                    if (read == -1) {
                        break;
                    }
                    os.write(buffer, 0, read);
                }
                os.close();
                is.close();
                chmod("755", fileName);
                if (load(fileName, message)) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable th2) {
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e10) {
                    if (is != null) {
                        try {
                            is.close();
                        } catch (IOException e11) {
                            return extracted ? false : false;
                        }
                    }
                    if (extracted && file.exists()) {
                        file.delete();
                        return false;
                    }
                }
            }
            if (is != null) {
            }
            if (extracted) {
            }
        }
    }

    static void chmod(String permision, String path) {
        if (PlatformDetector.OS.isWindows()) {
            return;
        }
        try {
            Runtime.getRuntime().exec(new String[]{"chmod", permision, path}).waitFor();
        } catch (Throwable th2) {
        }
    }
}
