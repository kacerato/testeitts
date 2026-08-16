package kotlin.io;

import Xf.InterfaceC3312m;
import ag.C3625g;
import com.jme3.audio.openal.AL;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import pf.C14985q;

@t0({"SMAP\nFileReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,294:1\n1#2:295\n*E\n"})
public class m extends k {
    public static List A(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        return z(file, charset);
    }

    public static final P0 B(ArrayList arrayList, String it) {
        M.p(it, "it");
        arrayList.add(it);
        return P0.f98194a;
    }

    @NotNull
    public static final String C(@NotNull File file, @NotNull Charset charset) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String m10 = w.m(inputStreamReader);
            b.a(inputStreamReader, null);
            return m10;
        } finally {
        }
    }

    public static String D(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        return C(file, charset);
    }

    @Ef.f
    public static final InputStreamReader E(File file, Charset charset) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    public static InputStreamReader F(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    public static final <T> T G(@NotNull File file, @NotNull Charset charset, @NotNull Mf.l<? super InterfaceC3312m<String>, ? extends T> block) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        M.p(block, "block");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), 8192);
        try {
            T invoke = block.invoke(w.i(bufferedReader));
            J.d(1);
            b.a(bufferedReader, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }

    public static Object H(File file, Charset charset, Mf.l block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(file, "<this>");
        M.p(charset, "charset");
        M.p(block, "block");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), 8192);
        try {
            Object invoke = block.invoke(w.i(bufferedReader));
            J.d(1);
            b.a(bufferedReader, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }

    public static final void I(@NotNull File file, @NotNull byte[] array) {
        M.p(file, "<this>");
        M.p(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(array);
            P0 p02 = P0.f98194a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    public static final void J(@NotNull File file, @NotNull String text, @NotNull Charset charset) {
        M.p(file, "<this>");
        M.p(text, "text");
        M.p(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            L(fileOutputStream, text, charset);
            P0 p02 = P0.f98194a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    public static void K(File file, String str, Charset charset, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        J(file, str, charset);
    }

    public static void L(@NotNull OutputStream outputStream, @NotNull String text, @NotNull Charset charset) {
        M.p(outputStream, "<this>");
        M.p(text, "text");
        M.p(charset, "charset");
        if (text.length() < 16384) {
            byte[] bytes = text.getBytes(charset);
            M.o(bytes, "getBytes(...)");
            outputStream.write(bytes);
            return;
        }
        CharsetEncoder u10 = u(charset);
        CharBuffer allocate = CharBuffer.allocate(8192);
        M.m(u10);
        ByteBuffer o10 = o(8192, u10);
        int i10 = 0;
        int i11 = 0;
        while (i10 < text.length()) {
            int min = Math.min(8192 - i11, text.length() - i10);
            int i12 = i10 + min;
            char[] array = allocate.array();
            M.o(array, "array(...)");
            text.getChars(i10, i12, array, i11);
            allocate.limit(min + i11);
            i11 = 1;
            if (!u10.encode(allocate, o10, i12 == text.length()).isUnderflow()) {
                throw new IllegalStateException("Check failed.");
            }
            outputStream.write(o10.array(), 0, o10.position());
            if (allocate.position() != allocate.limit()) {
                allocate.put(0, allocate.get());
            } else {
                i11 = 0;
            }
            allocate.clear();
            o10.clear();
            i10 = i12;
        }
    }

    @Ef.f
    public static final OutputStreamWriter M(File file, Charset charset) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    public static OutputStreamWriter N(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    public static final void h(@NotNull File file, @NotNull byte[] array) {
        M.p(file, "<this>");
        M.p(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            fileOutputStream.write(array);
            P0 p02 = P0.f98194a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    public static final void i(@NotNull File file, @NotNull String text, @NotNull Charset charset) {
        M.p(file, "<this>");
        M.p(text, "text");
        M.p(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            L(fileOutputStream, text, charset);
            P0 p02 = P0.f98194a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    public static void j(File file, String str, Charset charset, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        i(file, str, charset);
    }

    @Ef.f
    public static final BufferedReader k(File file, Charset charset, int i10) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), i10);
    }

    public static BufferedReader l(File file, Charset charset, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), i10);
    }

    @Ef.f
    public static final BufferedWriter m(File file, Charset charset, int i10) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), i10);
    }

    public static BufferedWriter n(File file, Charset charset, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), i10);
    }

    @NotNull
    public static ByteBuffer o(int i10, @NotNull CharsetEncoder encoder) {
        M.p(encoder, "encoder");
        ByteBuffer allocate = ByteBuffer.allocate(i10 * ((int) Math.ceil(encoder.maxBytesPerChar())));
        M.o(allocate, "allocate(...)");
        return allocate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [byte[], java.lang.Object] */
    public static final void p(@NotNull File file, int i10, @NotNull Mf.p<? super byte[], ? super Integer, P0> action) {
        M.p(file, "<this>");
        M.p(action, "action");
        ?? r22 = new byte[Vf.u.w(i10, 512)];
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(r22);
                if (read <= 0) {
                    P0 p02 = P0.f98194a;
                    b.a(fileInputStream, null);
                    return;
                }
                action.invoke(r22, Integer.valueOf(read));
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    b.a(fileInputStream, th2);
                    throw th3;
                }
            }
        }
    }

    public static final void q(@NotNull File file, @NotNull Mf.p<? super byte[], ? super Integer, P0> action) {
        M.p(file, "<this>");
        M.p(action, "action");
        p(file, 4096, action);
    }

    public static final void r(@NotNull File file, @NotNull Charset charset, @NotNull Mf.l<? super String, P0> action) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        M.p(action, "action");
        w.h(new BufferedReader(new InputStreamReader(new FileInputStream(file), charset)), action);
    }

    public static void s(File file, Charset charset, Mf.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        r(file, charset, lVar);
    }

    @Ef.f
    public static final FileInputStream t(File file) {
        M.p(file, "<this>");
        return new FileInputStream(file);
    }

    public static CharsetEncoder u(@NotNull Charset charset) {
        M.p(charset, "<this>");
        CharsetEncoder newEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return newEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    @Ef.f
    public static final FileOutputStream v(File file) {
        M.p(file, "<this>");
        return new FileOutputStream(file);
    }

    @Ef.f
    public static final PrintWriter w(File file, Charset charset) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new PrintWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), 8192));
    }

    public static PrintWriter x(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(file, "<this>");
        M.p(charset, "charset");
        return new PrintWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), 8192));
    }

    @NotNull
    public static final byte[] y(@NotNull File file) {
        M.p(file, "<this>");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new OutOfMemoryError("File " + ((Object) file) + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i10 = (int) length;
            byte[] bArr = new byte[i10];
            int i11 = i10;
            int i12 = 0;
            while (i11 > 0) {
                int read = fileInputStream.read(bArr, i12, i11);
                if (read < 0) {
                    break;
                }
                i11 -= read;
                i12 += read;
            }
            if (i11 > 0) {
                bArr = Arrays.copyOf(bArr, i12);
                M.o(bArr, "copyOf(...)");
            } else {
                int read2 = fileInputStream.read();
                if (read2 != -1) {
                    f fVar = new f(AL.AL_FREQUENCY);
                    fVar.write(read2);
                    a.l(fileInputStream, fVar, 0, 2, null);
                    int size = fVar.size() + i10;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + ((Object) file) + " is too big to fit in memory.");
                    }
                    byte[] c10 = fVar.c();
                    byte[] copyOf = Arrays.copyOf(bArr, size);
                    M.o(copyOf, "copyOf(...)");
                    bArr = C14985q.v0(c10, copyOf, i10, 0, fVar.size());
                }
            }
            b.a(fileInputStream, null);
            return bArr;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                b.a(fileInputStream, th2);
                throw th3;
            }
        }
    }

    @NotNull
    public static final List<String> z(@NotNull File file, @NotNull Charset charset) {
        M.p(file, "<this>");
        M.p(charset, "charset");
        final ArrayList arrayList = new ArrayList();
        r(file, charset, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                P0 B10;
                B10 = m.B(ArrayList.this, (String) obj);
                return B10;
            }
        });
        return arrayList;
    }
}
