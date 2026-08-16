package com.google.ai.edge.litertlm;

import ag.C3617K;
import ag.C3639v;
import ag.P;
import com.eclipsesource.v8.Platform;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class NativeLibraryLoader {

    @NotNull
    public static final NativeLibraryLoader f59866a = new NativeLibraryLoader();

    @NotNull
    public static final String f59867b = "litertlm_jni";

    public static final boolean f59868c;

    static {
        f59868c = System.getProperty("com.google.ai.edge.litertlm.NativeLibraryLoader.DEBUG") != null;
    }

    public final String a() {
        String property = System.getProperty("os.arch", "");
        M.m(property);
        String lowerCase = property.toLowerCase(Locale.ROOT);
        M.o(lowerCase, "toLowerCase(...)");
        return M.g(lowerCase, "amd64") ? "x86_64" : lowerCase;
    }

    public final long b(InputStream src, File dstFile) {
        FileOutputStream fileOutputStream = new FileOutputStream(dstFile);
        try {
            byte[] bArr = new byte[1048576];
            int read = src.read(bArr);
            long j10 = 0;
            while (read >= 0) {
                fileOutputStream.write(bArr, 0, read);
                j10 += read;
                read = src.read(bArr);
            }
            kotlin.io.b.a(fileOutputStream, null);
            return j10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                kotlin.io.b.a(fileOutputStream, th2);
                throw th3;
            }
        }
    }

    public final File c() {
        String property = System.getProperty("java.io.tmpdir");
        M.m(property);
        File file = new File(property);
        String str = "litertlm_native_libraries-" + System.currentTimeMillis() + "-";
        for (int i10 = 0; i10 < 1000; i10++) {
            File file2 = new File(file, str + i10);
            if (file2.mkdir()) {
                return file2;
            }
        }
        throw new IllegalStateException("Could not create a temporary directory (tried to make " + str + "*) to extract LiteRT-LM native libraries.");
    }

    public final String d(InputStream resource, String resourceName, String extractToDirectory) {
        File file = new File(extractToDirectory, resourceName);
        file.deleteOnExit();
        String file2 = file.toString();
        M.o(file2, "toString(...)");
        g("extracting native library to: " + file2);
        g("copied " + b(resource, file) + " bytes to " + file2);
        return file2;
    }

    public final boolean e() {
        try {
            nativeCheckLoaded();
            return true;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        }
    }

    public final void f() {
        if (e()) {
            g("Skip loading as the native library is loaded already.");
            return;
        }
        if (j(f59867b)) {
            g("Loaded litertlm_jni from library path.");
            return;
        }
        String mapLibraryName = System.mapLibraryName(f59867b);
        M.o(mapLibraryName, "mapLibraryName(...)");
        String B22 = C3617K.B2(mapLibraryName, ".dylib", ".so", false, 4, null);
        String str = "com/google/ai/edge/litertlm/jni/" + B22;
        if (i(str, B22)) {
            g("Loaded litertlm_jni from JAR: " + str);
            return;
        }
        String str2 = "com/google/ai/edge/litertlm/jni/" + h() + "-" + a() + "/" + B22;
        if (i(str2, B22)) {
            g("Loaded litertlm_jni from JAR: " + str2);
            return;
        }
        throw new UnsatisfiedLinkError("Failed to load native library litertlm_jni. Tried system path, " + str + ", and " + str2);
    }

    public final void g(String msg) {
        if (f59868c) {
            System.err.println("com.google.ai.edge.litertlm.NativeLibraryLoader: " + msg);
        }
    }

    public final String h() {
        String property = System.getProperty("os.name", "");
        M.m(property);
        String lowerCase = property.toLowerCase(Locale.ROOT);
        M.o(lowerCase, "toLowerCase(...)");
        return P.p3(lowerCase, Platform.LINUX, false, 2, null) ? Platform.LINUX : (P.p3(lowerCase, "os x", false, 2, null) || P.p3(lowerCase, "darwin", false, 2, null)) ? "darwin" : P.p3(lowerCase, Platform.WINDOWS, false, 2, null) ? Platform.WINDOWS : new C3639v("\\s").q(lowerCase, "");
    }

    public final boolean i(String resourcePath, String libName) {
        g("Attempting to extract from: " + resourcePath);
        ClassLoader classLoader = NativeLibraryLoader.class.getClassLoader();
        InputStream resourceAsStream = classLoader != null ? classLoader.getResourceAsStream(resourcePath) : null;
        if (resourceAsStream == null) {
            g("Resource not found: " + resourcePath);
            return false;
        }
        try {
            File c10 = c();
            c10.deleteOnExit();
            String canonicalPath = c10.getCanonicalPath();
            M.o(canonicalPath, "getCanonicalPath(...)");
            System.load(d(resourceAsStream, libName, canonicalPath));
            return true;
        } catch (IOException e10) {
            g("Failed to extract " + resourcePath + ": " + ((Object) e10));
            return false;
        } catch (UnsatisfiedLinkError e11) {
            g("Failed to load extracted library from " + resourcePath + ": " + ((Object) e11));
            return false;
        }
    }

    public final boolean j(String libName) {
        try {
            System.loadLibrary(libName);
            return true;
        } catch (UnsatisfiedLinkError e10) {
            g("System.loadLibrary(" + libName + ") failed: " + e10.getMessage());
            return false;
        }
    }

    public final native void nativeCheckLoaded();
}
