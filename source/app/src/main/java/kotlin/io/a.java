package kotlin.io;

import ag.C3625g;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.M;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;
import pf.D;

@Lf.j(name = "ByteStreamsKt")
public final class a {

    public static final class C1856a extends D {

        public int f95646b = -1;

        public boolean f95647c;

        public boolean f95648d;

        public final BufferedInputStream f95649e;

        public C1856a(BufferedInputStream bufferedInputStream) {
            this.f95649e = bufferedInputStream;
        }

        public final boolean b() {
            return this.f95648d;
        }

        public final int d() {
            return this.f95646b;
        }

        public final boolean e() {
            return this.f95647c;
        }

        public final void f() {
            if (this.f95647c || this.f95648d) {
                return;
            }
            int read = this.f95649e.read();
            this.f95646b = read;
            this.f95647c = true;
            this.f95648d = read == -1;
        }

        public final void g(boolean z10) {
            this.f95648d = z10;
        }

        public final void h(int i10) {
            this.f95646b = i10;
        }

        @Override
        public boolean hasNext() {
            f();
            return !this.f95648d;
        }

        public final void i(boolean z10) {
            this.f95647c = z10;
        }

        @Override
        public byte y() {
            f();
            if (this.f95648d) {
                throw new NoSuchElementException("Input stream is over.");
            }
            byte b10 = (byte) this.f95646b;
            this.f95647c = false;
            return b10;
        }
    }

    @Ef.f
    public static final BufferedInputStream a(InputStream inputStream, int i10) {
        M.p(inputStream, "<this>");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i10);
    }

    @Ef.f
    public static final BufferedOutputStream b(OutputStream outputStream, int i10) {
        M.p(outputStream, "<this>");
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i10);
    }

    public static BufferedInputStream c(InputStream inputStream, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 8192;
        }
        M.p(inputStream, "<this>");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i10);
    }

    public static BufferedOutputStream d(OutputStream outputStream, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 8192;
        }
        M.p(outputStream, "<this>");
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i10);
    }

    @Ef.f
    public static final BufferedReader e(InputStream inputStream, Charset charset) {
        M.p(inputStream, "<this>");
        M.p(charset, "charset");
        return new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
    }

    public static BufferedReader f(InputStream inputStream, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(inputStream, "<this>");
        M.p(charset, "charset");
        return new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
    }

    @Ef.f
    public static final BufferedWriter g(OutputStream outputStream, Charset charset) {
        M.p(outputStream, "<this>");
        M.p(charset, "charset");
        return new BufferedWriter(new OutputStreamWriter(outputStream, charset), 8192);
    }

    public static BufferedWriter h(OutputStream outputStream, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(outputStream, "<this>");
        M.p(charset, "charset");
        return new BufferedWriter(new OutputStreamWriter(outputStream, charset), 8192);
    }

    @Ef.f
    public static final ByteArrayInputStream i(String str, Charset charset) {
        M.p(str, "<this>");
        M.p(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        M.o(bytes, "getBytes(...)");
        return new ByteArrayInputStream(bytes);
    }

    public static ByteArrayInputStream j(String str, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(str, "<this>");
        M.p(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        M.o(bytes, "getBytes(...)");
        return new ByteArrayInputStream(bytes);
    }

    @InterfaceC14394D
    public static final long k(@NotNull InputStream inputStream, @NotNull OutputStream out, int i10) {
        M.p(inputStream, "<this>");
        M.p(out, "out");
        byte[] bArr = new byte[i10];
        int read = inputStream.read(bArr);
        long j10 = 0;
        while (read >= 0) {
            out.write(bArr, 0, read);
            j10 += read;
            read = inputStream.read(bArr);
        }
        return j10;
    }

    public static long l(InputStream inputStream, OutputStream outputStream, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        return k(inputStream, outputStream, i10);
    }

    @Ef.f
    public static final ByteArrayInputStream m(byte[] bArr) {
        M.p(bArr, "<this>");
        return new ByteArrayInputStream(bArr);
    }

    @Ef.f
    public static final ByteArrayInputStream n(byte[] bArr, int i10, int i11) {
        M.p(bArr, "<this>");
        return new ByteArrayInputStream(bArr, i10, i11);
    }

    @NotNull
    public static final D o(@NotNull BufferedInputStream bufferedInputStream) {
        M.p(bufferedInputStream, "<this>");
        return new C1856a(bufferedInputStream);
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] p(@NotNull InputStream inputStream) {
        M.p(inputStream, "<this>");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        l(inputStream, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        M.o(byteArray, "toByteArray(...)");
        return byteArray;
    }

    @InterfaceC14427o(message = "Use readBytes() overload without estimatedSize parameter", replaceWith = @InterfaceC14412g0(expression = "readBytes()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "2.3", warningSince = "1.3")
    public static final byte[] q(InputStream inputStream, int i10) {
        M.p(inputStream, "<this>");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(i10, inputStream.available()));
        l(inputStream, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        M.o(byteArray, "toByteArray(...)");
        return byteArray;
    }

    public static byte[] r(InputStream inputStream, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 8192;
        }
        return q(inputStream, i10);
    }

    @Ef.f
    public static final InputStreamReader s(InputStream inputStream, Charset charset) {
        M.p(inputStream, "<this>");
        M.p(charset, "charset");
        return new InputStreamReader(inputStream, charset);
    }

    public static InputStreamReader t(InputStream inputStream, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(inputStream, "<this>");
        M.p(charset, "charset");
        return new InputStreamReader(inputStream, charset);
    }

    @Ef.f
    public static final OutputStreamWriter u(OutputStream outputStream, Charset charset) {
        M.p(outputStream, "<this>");
        M.p(charset, "charset");
        return new OutputStreamWriter(outputStream, charset);
    }

    public static OutputStreamWriter v(OutputStream outputStream, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(outputStream, "<this>");
        M.p(charset, "charset");
        return new OutputStreamWriter(outputStream, charset);
    }
}
