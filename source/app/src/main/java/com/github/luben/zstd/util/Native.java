package com.github.luben.zstd.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import w2.C15883c;

public enum Native {
    ;

    private static final String nativePathOverride = "ZstdNativePath";
    private static final String libnameShort = "zstd-jni-1.5.5-4";
    private static final String libname = "libzstd-jni-1.5.5-4";
    private static final String errorMsg = "Unsupported OS/arch, cannot find " + resourceName() + " or load " + libnameShort + " from system libraries. Please try building from source the jar or providing " + libname + " in your system.";
    private static boolean loaded = false;

    public static synchronized void assumeLoaded() {
        synchronized (Native.class) {
            loaded = true;
        }
    }

    public static synchronized boolean isLoaded() {
        boolean z10;
        synchronized (Native.class) {
            z10 = loaded;
        }
        return z10;
    }

    private static String libExtension() {
        return (osName().contains("os_x") || osName().contains("darwin")) ? "dylib" : osName().contains("win") ? "dll" : "so";
    }

    public static synchronized void load() {
        synchronized (Native.class) {
            load(null);
        }
    }

    private static void loadLibrary(final String str) {
        AccessController.doPrivileged(new PrivilegedAction<Void>() {
            @Override
            public Void run() {
                System.loadLibrary(String.this);
                return null;
            }
        });
    }

    private static void loadLibraryFile(final String str) {
        AccessController.doPrivileged(new PrivilegedAction<Void>() {
            @Override
            public Void run() {
                System.load(String.this);
                return null;
            }
        });
    }

    private static String osArch() {
        return System.getProperty("os.arch");
    }

    private static String osName() {
        String replace = System.getProperty("os.name").toLowerCase().replace(C15883c.f126249O, '_');
        return replace.startsWith("win") ? "win" : replace.startsWith("mac") ? "darwin" : replace;
    }

    private static String resourceName() {
        return "/" + osName() + "/" + osArch() + "/" + libname + "." + libExtension();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bf A[Catch: all -> 0x001d, IOException -> 0x00cb, TryCatch #6 {IOException -> 0x00cb, blocks: (B:41:0x00ba, B:43:0x00bf, B:44:0x00c2, B:46:0x00c8), top: B:40:0x00ba }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c8 A[Catch: all -> 0x001d, IOException -> 0x00cb, TRY_LEAVE, TryCatch #6 {IOException -> 0x00cb, blocks: (B:41:0x00ba, B:43:0x00bf, B:44:0x00c2, B:46:0x00c8), top: B:40:0x00ba }] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013a A[Catch: all -> 0x001d, IOException -> 0x0148, TryCatch #9 {IOException -> 0x0148, blocks: (B:72:0x0135, B:74:0x013a, B:76:0x013f, B:78:0x0145), top: B:71:0x0135 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x013f A[Catch: all -> 0x001d, IOException -> 0x0148, TryCatch #9 {IOException -> 0x0148, blocks: (B:72:0x0135, B:74:0x013a, B:76:0x013f, B:78:0x0145), top: B:71:0x0135 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized void load(File file) {
        FileOutputStream fileOutputStream;
        Throwable th2;
        File file2;
        synchronized (Native.class) {
            if (loaded) {
                return;
            }
            String resourceName = resourceName();
            String property = System.getProperty(nativePathOverride);
            if (property != null) {
                loadLibraryFile(property);
                loaded = true;
                return;
            }
            try {
                Class.forName("org.osgi.framework.BundleEvent");
                loadLibrary(libname);
                loaded = true;
            } catch (Throwable unused) {
                InputStream resourceAsStream = Native.class.getResourceAsStream(resourceName);
                if (resourceAsStream == null) {
                    try {
                        loadLibrary(libnameShort);
                        loaded = true;
                        return;
                    } catch (UnsatisfiedLinkError e10) {
                        UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(e10.getMessage() + "\n" + errorMsg);
                        unsatisfiedLinkError.setStackTrace(e10.getStackTrace());
                        throw unsatisfiedLinkError;
                    }
                }
                FileOutputStream fileOutputStream2 = null;
                try {
                    file2 = File.createTempFile(libname, "." + libExtension(), file);
                } catch (IOException e11) {
                    e = e11;
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    fileOutputStream = null;
                    th2 = th3;
                    file2 = 0;
                }
                try {
                    file2.deleteOnExit();
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int read = resourceAsStream.read(bArr);
                                if (read == -1) {
                                    try {
                                        break;
                                    } catch (IOException unused2) {
                                        fileOutputStream2 = fileOutputStream;
                                    }
                                } else {
                                    fileOutputStream.write(bArr, 0, read);
                                }
                            }
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            try {
                                loadLibraryFile(file2.getAbsolutePath());
                            } catch (UnsatisfiedLinkError e12) {
                                try {
                                    loadLibrary(libnameShort);
                                    loaded = true;
                                    resourceAsStream.close();
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                    if (file2.exists()) {
                                        return;
                                    }
                                    file2.delete();
                                    return;
                                } catch (UnsatisfiedLinkError e13) {
                                    UnsatisfiedLinkError unsatisfiedLinkError2 = new UnsatisfiedLinkError(e12.getMessage() + "\n" + e13.getMessage() + "\n" + errorMsg);
                                    unsatisfiedLinkError2.setStackTrace(e13.getStackTrace());
                                    throw unsatisfiedLinkError2;
                                }
                            }
                            loaded = true;
                            try {
                                resourceAsStream.close();
                                if (fileOutputStream2 != null) {
                                }
                                if (file2.exists()) {
                                }
                            } catch (IOException unused3) {
                            }
                        } catch (IOException e14) {
                            e = e14;
                            fileOutputStream2 = file2;
                            try {
                                ExceptionInInitializerError exceptionInInitializerError = new ExceptionInInitializerError("Cannot unpack libzstd-jni-1.5.5-4: " + e.getMessage());
                                exceptionInInitializerError.setStackTrace(e.getStackTrace());
                                throw exceptionInInitializerError;
                            } catch (Throwable th4) {
                                FileOutputStream fileOutputStream3 = fileOutputStream2;
                                th2 = th4;
                                file2 = fileOutputStream3;
                                try {
                                    resourceAsStream.close();
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (file2 != 0 && file2.exists()) {
                                        file2.delete();
                                    }
                                } catch (IOException unused4) {
                                }
                                throw th2;
                            }
                        }
                    } catch (Throwable th5) {
                        th2 = th5;
                        resourceAsStream.close();
                        if (fileOutputStream != null) {
                        }
                        if (file2 != 0) {
                            file2.delete();
                        }
                        throw th2;
                    }
                } catch (IOException e15) {
                    e = e15;
                    fileOutputStream = fileOutputStream2;
                    fileOutputStream2 = file2;
                    ExceptionInInitializerError exceptionInInitializerError2 = new ExceptionInInitializerError("Cannot unpack libzstd-jni-1.5.5-4: " + e.getMessage());
                    exceptionInInitializerError2.setStackTrace(e.getStackTrace());
                    throw exceptionInInitializerError2;
                } catch (Throwable th6) {
                    fileOutputStream = fileOutputStream2;
                    th2 = th6;
                    resourceAsStream.close();
                    if (fileOutputStream != null) {
                    }
                    if (file2 != 0) {
                    }
                    throw th2;
                }
            }
        }
    }
}
