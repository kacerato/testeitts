package If;

import Xf.InterfaceC3312m;
import Xf.K;
import ag.C3625g;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nPathReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathReadWrite.kt\nkotlin/io/path/PathsKt__PathReadWriteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,331:1\n1#2:332\n1#2:334\n66#3:333\n1342#4,2:335\n*S KotlinDebug\n*F\n+ 1 PathReadWrite.kt\nkotlin/io/path/PathsKt__PathReadWriteKt\n*L\n212#1:334\n212#1:333\n212#1:335,2\n*E\n"})
public class r {
    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path A(Path path, Iterable<? extends CharSequence> lines, Charset charset, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        M.p(options, "options");
        Path write = Files.write(path, lines, charset, (OpenOption[]) Arrays.copyOf(options, options.length));
        M.o(write, "write(...)");
        return write;
    }

    public static Path B(Path path, InterfaceC3312m lines, Charset charset, OpenOption[] options, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        M.p(options, "options");
        Path write = Files.write(path, K.l0(lines), charset, (OpenOption[]) Arrays.copyOf(options, options.length));
        M.o(write, "write(...)");
        return write;
    }

    public static Path C(Path path, Iterable lines, Charset charset, OpenOption[] options, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        M.p(options, "options");
        Path write = Files.write(path, lines, charset, (OpenOption[]) Arrays.copyOf(options, options.length));
        M.o(write, "write(...)");
        return write;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final void D(@NotNull Path path, @NotNull CharSequence text, @NotNull Charset charset, @NotNull OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(text, "text");
        M.p(charset, "charset");
        M.p(options, "options");
        OutputStream newOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        try {
            if (text instanceof String) {
                M.m(newOutputStream);
                kotlin.io.m.L(newOutputStream, (String) text, charset);
            } else {
                CharsetEncoder u10 = kotlin.io.m.u(charset);
                CharBuffer asReadOnlyBuffer = text instanceof CharBuffer ? ((CharBuffer) text).asReadOnlyBuffer() : CharBuffer.wrap(text);
                int min = Math.min(text.length(), 8192);
                M.m(u10);
                ByteBuffer o10 = kotlin.io.m.o(min, u10);
                while (asReadOnlyBuffer.hasRemaining()) {
                    if (u10.encode(asReadOnlyBuffer, o10, true).isError()) {
                        throw new IllegalStateException("Check failed.");
                    }
                    newOutputStream.write(o10.array(), 0, o10.position());
                    o10.clear();
                }
            }
            P0 p02 = P0.f98194a;
            kotlin.io.b.a(newOutputStream, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                kotlin.io.b.a(newOutputStream, th2);
                throw th3;
            }
        }
    }

    public static void E(Path path, CharSequence charSequence, Charset charset, OpenOption[] openOptionArr, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        D(path, charSequence, charset, openOptionArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final OutputStreamWriter F(Path path, Charset charset, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset);
    }

    public static OutputStreamWriter G(Path path, Charset charset, OpenOption[] options, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final void a(Path path, byte[] array) throws IOException {
        M.p(path, "<this>");
        M.p(array, "array");
        Files.write(path, array, StandardOpenOption.APPEND);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path b(Path path, InterfaceC3312m<? extends CharSequence> lines, Charset charset) throws IOException {
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        Path write = Files.write(path, K.l0(lines), charset, StandardOpenOption.APPEND);
        M.o(write, "write(...)");
        return write;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path c(Path path, Iterable<? extends CharSequence> lines, Charset charset) throws IOException {
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        Path write = Files.write(path, lines, charset, StandardOpenOption.APPEND);
        M.o(write, "write(...)");
        return write;
    }

    public static Path d(Path path, InterfaceC3312m lines, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        Path write = Files.write(path, K.l0(lines), charset, StandardOpenOption.APPEND);
        M.o(write, "write(...)");
        return write;
    }

    public static Path e(Path path, Iterable lines, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        Path write = Files.write(path, lines, charset, StandardOpenOption.APPEND);
        M.o(write, "write(...)");
        return write;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final void f(@NotNull Path path, @NotNull CharSequence text, @NotNull Charset charset) throws IOException {
        M.p(path, "<this>");
        M.p(text, "text");
        M.p(charset, "charset");
        D(path, text, charset, StandardOpenOption.APPEND);
    }

    public static void g(Path path, CharSequence charSequence, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        f(path, charSequence, charset);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final BufferedReader h(Path path, Charset charset, int i10, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new BufferedReader(new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset), i10);
    }

    public static BufferedReader i(Path path, Charset charset, int i10, OpenOption[] options, int i11, Object obj) throws IOException {
        if ((i11 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new BufferedReader(new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset), i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final BufferedWriter j(Path path, Charset charset, int i10, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new BufferedWriter(new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset), i10);
    }

    public static BufferedWriter k(Path path, Charset charset, int i10, OpenOption[] options, int i11, Object obj) throws IOException {
        if ((i11 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new BufferedWriter(new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset), i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final void l(Path path, Charset charset, Mf.l<? super String, P0> action) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(action, "action");
        BufferedReader newBufferedReader = Files.newBufferedReader(path, charset);
        M.o(newBufferedReader, "newBufferedReader(...)");
        try {
            Iterator<String> it = kotlin.io.w.i(newBufferedReader).iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
            P0 p02 = P0.f98194a;
            J.d(1);
            kotlin.io.b.a(newBufferedReader, null);
            J.c(1);
        } finally {
        }
    }

    public static void m(Path path, Charset charset, Mf.l action, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(action, "action");
        BufferedReader newBufferedReader = Files.newBufferedReader(path, charset);
        M.o(newBufferedReader, "newBufferedReader(...)");
        try {
            Iterator<String> it = kotlin.io.w.i(newBufferedReader).iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
            P0 p02 = P0.f98194a;
            J.d(1);
            kotlin.io.b.a(newBufferedReader, null);
            J.c(1);
        } finally {
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final InputStream n(Path path, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(options, "options");
        InputStream newInputStream = Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        M.o(newInputStream, "newInputStream(...)");
        return newInputStream;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final OutputStream o(Path path, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(options, "options");
        OutputStream newOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        M.o(newOutputStream, "newOutputStream(...)");
        return newOutputStream;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final byte[] p(Path path) throws IOException {
        M.p(path, "<this>");
        byte[] readAllBytes = Files.readAllBytes(path);
        M.o(readAllBytes, "readAllBytes(...)");
        return readAllBytes;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final List<String> q(Path path, Charset charset) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        List<String> readAllLines = Files.readAllLines(path, charset);
        M.o(readAllLines, "readAllLines(...)");
        return readAllLines;
    }

    public static List r(Path path, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(charset, "charset");
        List<String> readAllLines = Files.readAllLines(path, charset);
        M.o(readAllLines, "readAllLines(...)");
        return readAllLines;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String s(@NotNull Path path, @NotNull Charset charset) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0)), charset);
        try {
            String m10 = kotlin.io.w.m(inputStreamReader);
            kotlin.io.b.a(inputStreamReader, null);
            return m10;
        } finally {
        }
    }

    public static String t(Path path, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        return s(path, charset);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final InputStreamReader u(Path path, Charset charset, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset);
    }

    public static InputStreamReader v(Path path, Charset charset, OpenOption[] options, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(options, "options");
        return new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length)), charset);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T> T w(Path path, Charset charset, Mf.l<? super InterfaceC3312m<String>, ? extends T> block) throws IOException {
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(block, "block");
        BufferedReader newBufferedReader = Files.newBufferedReader(path, charset);
        try {
            M.m(newBufferedReader);
            T invoke = block.invoke(kotlin.io.w.i(newBufferedReader));
            J.d(1);
            kotlin.io.b.a(newBufferedReader, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }

    public static Object x(Path path, Charset charset, Mf.l block, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(path, "<this>");
        M.p(charset, "charset");
        M.p(block, "block");
        BufferedReader newBufferedReader = Files.newBufferedReader(path, charset);
        try {
            M.m(newBufferedReader);
            Object invoke = block.invoke(kotlin.io.w.i(newBufferedReader));
            J.d(1);
            kotlin.io.b.a(newBufferedReader, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final void y(Path path, byte[] array, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(array, "array");
        M.p(options, "options");
        Files.write(path, array, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path z(Path path, InterfaceC3312m<? extends CharSequence> lines, Charset charset, OpenOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(lines, "lines");
        M.p(charset, "charset");
        M.p(options, "options");
        Path write = Files.write(path, K.l0(lines), charset, (OpenOption[]) Arrays.copyOf(options, options.length));
        M.o(write, "write(...)");
        return write;
    }
}
