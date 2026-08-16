package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UncheckedIOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.Arrays;
import java.util.List;
import java.util.zip.ZipFile;
import org.eclipse.jdt.internal.core.JavaElement;

public class C6169Ww {

    public static final boolean f45580a = System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik");

    public static final boolean f45581b = true;

    public static boolean a(String str) {
        String f10 = C10656zq0.f(str);
        if (f10.equals("module-info.class")) {
            return false;
        }
        return f10.endsWith(".class");
    }

    public static boolean b(Path path) {
        return a(path.getFileName().toString());
    }

    public static boolean c(Path path) {
        String f10 = C10656zq0.f(path.getFileName().toString());
        if (f10.startsWith("classes") && f10.endsWith(".dex")) {
            String a10 = AbstractC4281a.a(f10, 4, 7);
            if (a10.isEmpty()) {
                return true;
            }
            char charAt = a10.charAt(0);
            if (a10.length() == 1) {
                return '2' <= charAt && charAt <= '9';
            }
            if (charAt >= '1' && '9' >= charAt) {
                for (int i10 = 1; i10 < a10.length(); i10++) {
                    char charAt2 = a10.charAt(i10);
                    if (charAt2 < '0' || '9' < charAt2) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean d(Path path) {
        return C10656zq0.f(path.getFileName().toString()).endsWith(".dex");
    }

    public static boolean e(Path path) {
        return C10656zq0.f(path.getFileName().toString()).endsWith(".jar");
    }

    public static boolean f(Path path) {
        return C10656zq0.f(path.getFileName().toString()).endsWith(".java");
    }

    public static boolean g(Path path) {
        return C10656zq0.f(path.getFileName().toString()).endsWith(".zip");
    }

    public static List<String> h(Path path) throws IOException {
        return Files.readAllLines(path);
    }

    public static String i(Path path) throws IOException {
        return a(path, StandardCharsets.UTF_8);
    }

    public static byte[] j(Path path) {
        try {
            return Files.readAllBytes(path);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    public static String b(String str) {
        char c10 = File.separatorChar;
        if (c10 == '/') {
            return str.replace(JavaElement.JEM_ESCAPE, '/');
        }
        if (f45581b || c10 == '\\') {
            return str.replace('/', JavaElement.JEM_ESCAPE);
        }
        throw new AssertionError();
    }

    public static boolean a(Path path) {
        String f10 = C10656zq0.f(path.getFileName().toString());
        return f10.endsWith(".apk") || f10.endsWith(".jar") || f10.endsWith(".zip") || f10.endsWith(".aar");
    }

    public static String a(Path path, Charset charset) throws IOException {
        return new String(Files.readAllBytes(path), charset);
    }

    public static void a(Path path, OutputStream outputStream, ByteDataView byteDataView) {
        C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
        try {
            OpenOption[] openOptionArr = {StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE};
            if (path == null) {
                if (!f45581b && outputStream == null) {
                    throw new AssertionError();
                }
            } else {
                outputStream = Files.newOutputStream(path, openOptionArr);
                if (outputStream != null) {
                    c8950pe.f51581b.addFirst(outputStream);
                }
            }
            outputStream.write(byteDataView.getBuffer(), byteDataView.getOffset(), byteDataView.getLength());
            c8950pe.close();
        } catch (Throwable th2) {
            try {
                c8950pe.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static Path a(Path path, String str) throws IOException {
        Files.writeString(path, str, StandardCharsets.UTF_8, new OpenOption[0]);
        return path;
    }

    public static Path a(Path path, List<String> list) throws IOException {
        Files.write(path, list, new OpenOption[0]);
        return path;
    }

    public static Path a(Path path, String... strArr) throws IOException {
        Files.write(path, Arrays.asList(strArr), new OpenOption[0]);
        return path;
    }

    public static void a(C5094Ef0 c5094Ef0, Path path) {
        if (path == null || g(path) || e(path)) {
            return;
        }
        if (Files.exists(path, new LinkOption[0]) && Files.isDirectory(path, new LinkOption[0])) {
            return;
        }
        c5094Ef0.error(new StringDiagnostic("Invalid output: " + ((Object) path) + "\nOutput must be a .zip or .jar archive or an existing directory"));
    }

    public static void a(Path path, OutputStream outputStream, byte[] bArr) throws IOException {
        a(path, outputStream, ByteDataView.of(bArr));
    }

    public static ZipFile a(File file, Charset charset) {
        if (!f45580a) {
            return new ZipFile(file, charset);
        }
        if (Charset.defaultCharset() == StandardCharsets.UTF_8) {
            return new ZipFile(file);
        }
        throw new RuntimeException("R8 can run on dex only with UTF_8 as the default charset, but the charset used is " + ((Object) Charset.defaultCharset()));
    }
}
