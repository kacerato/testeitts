package ij;

import android.content.Context;
import ij.s;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import org.bouncycastle.util.w;
import w2.C15883c;

public class m {

    public static final Long f92335l = 0L;

    public final k f92336a;

    public final s.a f92337b;

    public final byte[] f92338c;

    public final u f92339d;

    public String f92340e;

    public int f92341f;

    public String f92342g;

    public InputStream f92343h;

    public Long f92344i;

    public long f92345j = 0;

    public Long f92346k;

    public class a extends InputStream {
        public a() {
        }

        @Override
        public int read() throws IOException {
            return -1;
        }
    }

    public class b extends InputStream {

        public final InputStream f92348b;

        public final Long f92349c;

        public b(InputStream inputStream, Long l10) {
            this.f92348b = inputStream;
            this.f92349c = l10;
        }

        @Override
        public void close() throws IOException {
            if (m.this.f92344i == null || m.this.f92344i.longValue() - 1 <= m.this.f92345j) {
                if (this.f92348b.available() > 0) {
                    throw new IOException("Stream closed with extra content in pipe that exceeds content length.");
                }
                this.f92348b.close();
            } else {
                throw new IOException("Stream closed before limit fully read, Read: " + m.this.f92345j + " ContentLength: " + ((Object) m.this.f92344i));
            }
        }

        @Override
        public int read() throws IOException {
            int read = this.f92348b.read();
            if (read > -1) {
                m.b(m.this);
                if (this.f92349c != null && m.this.f92345j >= this.f92349c.longValue()) {
                    throw new IOException("Absolute Read Limit exceeded: " + ((Object) this.f92349c));
                }
            }
            return read;
        }
    }

    public static class c extends InputStream {

        public final InputStream f92351b;

        public c(InputStream inputStream) {
            this.f92351b = inputStream;
        }

        @Override
        public int available() throws IOException {
            return this.f92351b.available();
        }

        @Override
        public void close() throws IOException {
            this.f92351b.close();
        }

        @Override
        public int read() throws IOException {
            return this.f92351b.read();
        }

        public c(InputStream inputStream, a aVar) {
            this(inputStream);
        }
    }

    public m(k kVar, u uVar) throws IOException {
        this.f92336a = kVar;
        this.f92339d = uVar;
        if (uVar instanceof t) {
            this.f92346k = ((t) uVar).d();
        }
        Set<String> c10 = org.bouncycastle.util.q.c("org.bouncycastle.debug.est");
        this.f92343h = (c10.contains(Context.INPUT_SERVICE) || c10.contains(Tj.d.f25405q)) ? new c(uVar.getInputStream(), null) : uVar.getInputStream();
        this.f92337b = new s.a();
        this.f92338c = new byte[1024];
        p();
    }

    public static long b(m mVar) {
        long j10 = mVar.f92345j;
        mVar.f92345j = 1 + j10;
        return j10;
    }

    public void d() throws IOException {
        InputStream inputStream = this.f92343h;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f92339d.close();
    }

    public long e() {
        Long l10 = this.f92346k;
        if (l10 == null) {
            return Long.MAX_VALUE;
        }
        return l10.longValue();
    }

    public Long f() {
        String e10 = this.f92337b.e("Content-Length");
        if (e10 == null) {
            return null;
        }
        try {
            return Long.valueOf(Long.parseLong(e10));
        } catch (RuntimeException e11) {
            throw new RuntimeException("Content Length: '" + e10 + "' invalid. " + e11.getMessage());
        }
    }

    public String g(String str) {
        return this.f92337b.e(str);
    }

    public String h(String str) {
        return this.f92337b.f(str);
    }

    public s.a i() {
        return this.f92337b;
    }

    public String j() {
        return this.f92340e;
    }

    public InputStream k() {
        return this.f92343h;
    }

    public k l() {
        return this.f92336a;
    }

    public u m() {
        return this.f92339d;
    }

    public int n() {
        return this.f92341f;
    }

    public String o() {
        return this.f92342g;
    }

    public final void p() throws IOException {
        this.f92340e = q(C15883c.f126249O);
        this.f92341f = Integer.parseInt(q(C15883c.f126249O));
        this.f92342g = q('\n');
        while (true) {
            String q10 = q('\n');
            if (q10.length() <= 0) {
                break;
            }
            int indexOf = q10.indexOf(58);
            if (indexOf > -1) {
                this.f92337b.b(w.l(q10.substring(0, indexOf).trim()), q10.substring(indexOf + 1).trim());
            }
        }
        boolean equalsIgnoreCase = this.f92337b.f("Transfer-Encoding").equalsIgnoreCase("chunked");
        this.f92344i = equalsIgnoreCase ? 0L : f();
        int i10 = this.f92341f;
        if (i10 == 204 || i10 == 202) {
            Long l10 = this.f92344i;
            if (l10 == null) {
                this.f92344i = 0L;
            } else if (i10 == 204 && l10.longValue() > 0) {
                throw new IOException("Got HTTP status 204 but Content-length > 0.");
            }
        }
        Long l11 = this.f92344i;
        if (l11 == null) {
            throw new IOException("No Content-length header.");
        }
        if (l11.equals(f92335l) && !equalsIgnoreCase) {
            this.f92343h = new a();
        }
        if (this.f92344i.longValue() < 0) {
            throw new IOException("Server returned negative content length: " + ((Object) this.f92346k));
        }
        if (this.f92346k != null && this.f92344i.longValue() >= this.f92346k.longValue()) {
            throw new IOException("Content length longer than absolute read limit: " + ((Object) this.f92346k) + " Content-Length: " + ((Object) this.f92344i));
        }
        this.f92343h = r(this.f92343h, this.f92346k);
        if (equalsIgnoreCase) {
            this.f92343h = new C13750e(this.f92343h);
        }
        if ("base64".equalsIgnoreCase(g("content-transfer-encoding"))) {
            this.f92343h = equalsIgnoreCase ? new C13749d(this.f92343h) : new C13749d(this.f92343h, this.f92344i);
        }
    }

    public String q(char c10) throws IOException {
        int read;
        byte[] bArr;
        int i10;
        int i11 = 0;
        while (true) {
            read = this.f92343h.read();
            bArr = this.f92338c;
            i10 = i11 + 1;
            bArr[i11] = (byte) read;
            if (i10 >= bArr.length) {
                throw new IOException("Server sent line > " + this.f92338c.length);
            }
            if (read == c10 || read <= -1) {
                break;
            }
            i11 = i10;
        }
        if (read != -1) {
            return new String(bArr, 0, i10).trim();
        }
        throw new EOFException();
    }

    public InputStream r(InputStream inputStream, Long l10) {
        return new b(inputStream, l10);
    }
}
