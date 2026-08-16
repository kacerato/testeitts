package net.jpountz.util;

import com.eclipsesource.v8.Platform;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;

public enum b {
    ;

    private static boolean loaded = false;

    public static class a implements FilenameFilter {

        public final String f98113a = "liblz4-java-";

        @Override
        public boolean accept(File file, String str) {
            return str.startsWith("liblz4-java-") && !str.endsWith(".lck");
        }
    }

    public enum EnumC1885b {
        WINDOWS("win32", "so"),
        LINUX(Platform.LINUX, "so"),
        MAC("darwin", "dylib"),
        SOLARIS("solaris", "so");

        public final String libExtension;
        public final String name;

        EnumC1885b(String str, String str2) {
            this.name = str;
            this.libExtension = str2;
        }
    }

    public static String a() {
        return System.getProperty("os.arch");
    }

    public static void b() {
        File[] listFiles = new File(new File(System.getProperty("java.io.tmpdir")).getAbsolutePath()).listFiles(new a());
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!new File(file.getAbsolutePath() + ".lck").exists()) {
                    try {
                        file.delete();
                    } catch (SecurityException e10) {
                        System.err.println("Failed to delete old temp lib" + e10.getMessage());
                    }
                }
            }
        }
    }

    public static synchronized boolean c() {
        boolean z10;
        synchronized (b.class) {
            z10 = loaded;
        }
        return z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0104, code lost:
    
        if (r4.exists() == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x010a, code lost:
    
        if (r4.delete() != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0122, code lost:
    
        throw new java.lang.ExceptionInInitializerError("Cannot unpack liblz4-java / cannot delete a temporary lock file " + ((java.lang.Object) r4));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized void d() {
        File file;
        File file2;
        synchronized (b.class) {
            if (loaded) {
                return;
            }
            b();
            try {
                System.loadLibrary("lz4-java");
                loaded = true;
            } catch (UnsatisfiedLinkError unused) {
                String g10 = g();
                InputStream resourceAsStream = b.class.getResourceAsStream(g10);
                if (resourceAsStream == null) {
                    throw new UnsupportedOperationException("Unsupported OS/arch, cannot find " + g10 + ". Please try building from source.");
                }
                File file3 = null;
                try {
                    try {
                        file = File.createTempFile("liblz4-java-", "." + e().libExtension + ".lck");
                        try {
                            file2 = new File(file.getAbsolutePath().replaceFirst(".lck$", ""));
                        } catch (IOException e10) {
                            e = e10;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e11) {
                    e = e11;
                } catch (Throwable th3) {
                    th = th3;
                    file = null;
                }
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = resourceAsStream.read(bArr);
                            if (read == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, read);
                            }
                        }
                        fileOutputStream.close();
                        System.load(file2.getAbsolutePath());
                        loaded = true;
                        String str = System.getenv("LZ4JAVA_KEEP_TEMP_JNI_LIB");
                        String property = System.getProperty("lz4java.jnilib.temp.keep");
                        if ((str == null || !str.equals("true")) && (property == null || !property.equals("true"))) {
                            file2.deleteOnExit();
                        }
                        file.deleteOnExit();
                    } finally {
                    }
                } catch (IOException e12) {
                    e = e12;
                    throw new ExceptionInInitializerError("Cannot unpack liblz4-java: " + ((Object) e));
                } catch (Throwable th4) {
                    th = th4;
                    file3 = file2;
                    if (loaded) {
                        String str2 = System.getenv("LZ4JAVA_KEEP_TEMP_JNI_LIB");
                        String property2 = System.getProperty("lz4java.jnilib.temp.keep");
                        if ((str2 == null || !str2.equals("true")) && (property2 == null || !property2.equals("true"))) {
                            file3.deleteOnExit();
                        }
                        file.deleteOnExit();
                    } else if (file3 != null && file3.exists() && !file3.delete()) {
                        throw new ExceptionInInitializerError("Cannot unpack liblz4-java / cannot delete a temporary native library " + ((Object) file3));
                    }
                    throw th;
                }
            }
        }
    }

    public static EnumC1885b e() {
        String property = System.getProperty("os.name");
        if (property.contains("Linux")) {
            return EnumC1885b.LINUX;
        }
        if (property.contains("Mac")) {
            return EnumC1885b.MAC;
        }
        if (property.contains("Windows")) {
            return EnumC1885b.WINDOWS;
        }
        if (property.contains("Solaris") || property.contains("SunOS")) {
            return EnumC1885b.SOLARIS;
        }
        throw new UnsupportedOperationException("Unsupported operating system: " + property);
    }

    public static String g() {
        EnumC1885b e10 = e();
        return "/" + b.class.getPackage().getName().replace('.', '/') + "/" + e10.name + "/" + a() + "/liblz4-java." + e10.libExtension;
    }
}
