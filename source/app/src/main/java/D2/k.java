package D2;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.H;

@v2.c
@p
public final class k {

    public static final int f4777a = 2048;

    public static final class a extends Writer {

        public static final a f4778b = new a();

        @Override
        public void close() {
        }

        @Override
        public void flush() {
        }

        public String toString() {
            return "CharStreams.nullWriter()";
        }

        @Override
        public void write(int i10) {
        }

        @Override
        public void write(char[] cArr) {
            H.E(cArr);
        }

        @Override
        public void write(char[] cArr, int i10, int i11) {
            H.f0(i10, i11 + i10, cArr.length);
        }

        @Override
        public Writer append(@CheckForNull CharSequence charSequence) {
            return this;
        }

        @Override
        public void write(String str) {
            H.E(str);
        }

        @Override
        public Writer append(@CheckForNull CharSequence charSequence, int i10, int i11) {
            H.f0(i10, i11, charSequence == null ? 4 : charSequence.length());
            return this;
        }

        @Override
        public void write(String str, int i10, int i11) {
            H.f0(i10, i11 + i10, str.length());
        }

        @Override
        public Writer append(char c10) {
            return this;
        }
    }

    @InterfaceC15800a
    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new C2483a(appendable);
    }

    @I2.a
    public static long b(Readable readable, Appendable appendable) throws IOException {
        if (readable instanceof Reader) {
            return appendable instanceof StringBuilder ? c((Reader) readable, (StringBuilder) appendable) : d((Reader) readable, a(appendable));
        }
        H.E(readable);
        H.E(appendable);
        CharBuffer e10 = e();
        long j10 = 0;
        while (readable.read(e10) != -1) {
            u.b(e10);
            appendable.append(e10);
            j10 += e10.remaining();
            u.a(e10);
        }
        return j10;
    }

    @I2.a
    public static long c(Reader reader, StringBuilder sb2) throws IOException {
        H.E(reader);
        H.E(sb2);
        char[] cArr = new char[2048];
        long j10 = 0;
        while (true) {
            int read = reader.read(cArr);
            if (read == -1) {
                return j10;
            }
            sb2.append(cArr, 0, read);
            j10 += read;
        }
    }

    @I2.a
    public static long d(Reader reader, Writer writer) throws IOException {
        H.E(reader);
        H.E(writer);
        char[] cArr = new char[2048];
        long j10 = 0;
        while (true) {
            int read = reader.read(cArr);
            if (read == -1) {
                return j10;
            }
            writer.write(cArr, 0, read);
            j10 += read;
        }
    }

    public static CharBuffer e() {
        return CharBuffer.allocate(2048);
    }

    @I2.a
    @InterfaceC15800a
    public static long f(Readable readable) throws IOException {
        CharBuffer e10 = e();
        long j10 = 0;
        while (true) {
            long read = readable.read(e10);
            if (read == -1) {
                return j10;
            }
            j10 += read;
            u.a(e10);
        }
    }

    @InterfaceC15800a
    public static Writer g() {
        return a.f4778b;
    }

    @I2.a
    @C
    @InterfaceC15800a
    public static <T> T h(Readable readable, w<T> wVar) throws IOException {
        String b10;
        H.E(readable);
        H.E(wVar);
        x xVar = new x(readable);
        do {
            b10 = xVar.b();
            if (b10 == null) {
                break;
            }
        } while (wVar.a(b10));
        return wVar.getResult();
    }

    @InterfaceC15800a
    public static List<String> i(Readable readable) throws IOException {
        ArrayList arrayList = new ArrayList();
        x xVar = new x(readable);
        while (true) {
            String b10 = xVar.b();
            if (b10 == null) {
                return arrayList;
            }
            arrayList.add(b10);
        }
    }

    @InterfaceC15800a
    public static void j(Reader reader, long j10) throws IOException {
        H.E(reader);
        while (j10 > 0) {
            long skip = reader.skip(j10);
            if (skip == 0) {
                throw new EOFException();
            }
            j10 -= skip;
        }
    }

    public static String k(Readable readable) throws IOException {
        return l(readable).toString();
    }

    public static StringBuilder l(Readable readable) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (readable instanceof Reader) {
            c((Reader) readable, sb2);
        } else {
            b(readable, sb2);
        }
        return sb2;
    }
}
