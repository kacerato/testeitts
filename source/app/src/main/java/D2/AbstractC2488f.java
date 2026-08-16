package D2;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.io.BaseEncoding;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import v2.InterfaceC15800a;
import w2.C15883c;
import w2.H;

@v2.c
@p
public abstract class AbstractC2488f {

    public class a extends j {

        public final Charset f4746a;

        public a(Charset charset) {
            this.f4746a = (Charset) H.E(charset);
        }

        @Override
        public AbstractC2488f a(Charset charset) {
            return charset.equals(this.f4746a) ? AbstractC2488f.this : super.a(charset);
        }

        @Override
        public Reader m() throws IOException {
            return new InputStreamReader(AbstractC2488f.this.m(), this.f4746a);
        }

        @Override
        public String n() throws IOException {
            return new String(AbstractC2488f.this.o(), this.f4746a);
        }

        public String toString() {
            String obj = AbstractC2488f.this.toString();
            String valueOf = String.valueOf(this.f4746a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 15 + valueOf.length());
            sb2.append(obj);
            sb2.append(".asCharSource(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class b extends AbstractC2488f {

        public final byte[] f4748a;

        public final int f4749b;

        public final int f4750c;

        public b(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override
        public long g(OutputStream outputStream) throws IOException {
            outputStream.write(this.f4748a, this.f4749b, this.f4750c);
            return this.f4750c;
        }

        @Override
        public B2.p j(B2.q qVar) throws IOException {
            return qVar.k(this.f4748a, this.f4749b, this.f4750c);
        }

        @Override
        public boolean k() {
            return this.f4750c == 0;
        }

        @Override
        public InputStream l() throws IOException {
            return m();
        }

        @Override
        public InputStream m() {
            return new ByteArrayInputStream(this.f4748a, this.f4749b, this.f4750c);
        }

        @Override
        @C
        public <T> T n(InterfaceC2486d<T> interfaceC2486d) throws IOException {
            interfaceC2486d.a(this.f4748a, this.f4749b, this.f4750c);
            return interfaceC2486d.getResult();
        }

        @Override
        public byte[] o() {
            byte[] bArr = this.f4748a;
            int i10 = this.f4749b;
            return Arrays.copyOfRange(bArr, i10, this.f4750c + i10);
        }

        @Override
        public long p() {
            return this.f4750c;
        }

        @Override
        public w2.C<Long> q() {
            return w2.C.f(Long.valueOf(this.f4750c));
        }

        @Override
        public AbstractC2488f r(long j10, long j11) {
            H.p(j10 >= 0, "offset (%s) may not be negative", j10);
            H.p(j11 >= 0, "length (%s) may not be negative", j11);
            long min = Math.min(j10, this.f4750c);
            return new b(this.f4748a, this.f4749b + ((int) min), (int) Math.min(j11, this.f4750c - min));
        }

        public String toString() {
            String k10 = C15883c.k(BaseEncoding.a().m(this.f4748a, this.f4749b, this.f4750c), 30, "...");
            StringBuilder sb2 = new StringBuilder(String.valueOf(k10).length() + 17);
            sb2.append("ByteSource.wrap(");
            sb2.append(k10);
            sb2.append(")");
            return sb2.toString();
        }

        public b(byte[] bArr, int i10, int i11) {
            this.f4748a = bArr;
            this.f4749b = i10;
            this.f4750c = i11;
        }
    }

    public static final class c extends AbstractC2488f {

        public final Iterable<? extends AbstractC2488f> f4751a;

        public c(Iterable<? extends AbstractC2488f> iterable) {
            this.f4751a = (Iterable) H.E(iterable);
        }

        @Override
        public boolean k() throws IOException {
            Iterator<? extends AbstractC2488f> it = this.f4751a.iterator();
            while (it.hasNext()) {
                if (!it.next().k()) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public InputStream m() throws IOException {
            return new A(this.f4751a.iterator());
        }

        @Override
        public long p() throws IOException {
            Iterator<? extends AbstractC2488f> it = this.f4751a.iterator();
            long j10 = 0;
            while (it.hasNext()) {
                j10 += it.next().p();
                if (j10 < 0) {
                    return Long.MAX_VALUE;
                }
            }
            return j10;
        }

        @Override
        public w2.C<Long> q() {
            Iterable<? extends AbstractC2488f> iterable = this.f4751a;
            if (!(iterable instanceof Collection)) {
                return w2.C.a();
            }
            Iterator<? extends AbstractC2488f> it = iterable.iterator();
            long j10 = 0;
            while (it.hasNext()) {
                w2.C<Long> q10 = it.next().q();
                if (!q10.e()) {
                    return w2.C.a();
                }
                j10 += q10.d().longValue();
                if (j10 < 0) {
                    return w2.C.f(Long.MAX_VALUE);
                }
            }
            return w2.C.f(Long.valueOf(j10));
        }

        public String toString() {
            String valueOf = String.valueOf(this.f4751a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 19);
            sb2.append("ByteSource.concat(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class d extends b {

        public static final d f4752d = new d();

        public d() {
            super(new byte[0]);
        }

        @Override
        public j a(Charset charset) {
            H.E(charset);
            return j.h();
        }

        @Override
        public byte[] o() {
            return this.f4748a;
        }

        @Override
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    public final class e extends AbstractC2488f {

        public final long f4753a;

        public final long f4754b;

        public e(long j10, long j11) {
            H.p(j10 >= 0, "offset (%s) may not be negative", j10);
            H.p(j11 >= 0, "length (%s) may not be negative", j11);
            this.f4753a = j10;
            this.f4754b = j11;
        }

        @Override
        public boolean k() throws IOException {
            return this.f4754b == 0 || super.k();
        }

        @Override
        public InputStream l() throws IOException {
            return t(AbstractC2488f.this.l());
        }

        @Override
        public InputStream m() throws IOException {
            return t(AbstractC2488f.this.m());
        }

        @Override
        public w2.C<Long> q() {
            w2.C<Long> q10 = AbstractC2488f.this.q();
            if (!q10.e()) {
                return w2.C.a();
            }
            long longValue = q10.d().longValue();
            return w2.C.f(Long.valueOf(Math.min(this.f4754b, longValue - Math.min(this.f4753a, longValue))));
        }

        @Override
        public AbstractC2488f r(long j10, long j11) {
            H.p(j10 >= 0, "offset (%s) may not be negative", j10);
            H.p(j11 >= 0, "length (%s) may not be negative", j11);
            long j12 = this.f4754b - j10;
            return j12 <= 0 ? AbstractC2488f.i() : AbstractC2488f.this.r(this.f4753a + j10, Math.min(j11, j12));
        }

        public final InputStream t(InputStream inputStream) throws IOException {
            long j10 = this.f4753a;
            if (j10 > 0) {
                try {
                    if (C2489g.t(inputStream, j10) < this.f4753a) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } finally {
                }
            }
            return C2489g.f(inputStream, this.f4754b);
        }

        public String toString() {
            String obj = AbstractC2488f.this.toString();
            long j10 = this.f4753a;
            long j11 = this.f4754b;
            StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 50);
            sb2.append(obj);
            sb2.append(".slice(");
            sb2.append(j10);
            sb2.append(", ");
            sb2.append(j11);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static AbstractC2488f b(Iterable<? extends AbstractC2488f> iterable) {
        return new c(iterable);
    }

    public static AbstractC2488f c(Iterator<? extends AbstractC2488f> it) {
        return b(AbstractC12521g1.s(it));
    }

    public static AbstractC2488f d(AbstractC2488f... abstractC2488fArr) {
        return b(AbstractC12521g1.u(abstractC2488fArr));
    }

    public static AbstractC2488f i() {
        return d.f4752d;
    }

    public static AbstractC2488f s(byte[] bArr) {
        return new b(bArr);
    }

    public j a(Charset charset) {
        return new a(charset);
    }

    public boolean e(AbstractC2488f abstractC2488f) throws IOException {
        int n10;
        H.E(abstractC2488f);
        byte[] d10 = C2489g.d();
        byte[] d11 = C2489g.d();
        m c10 = m.c();
        try {
            InputStream inputStream = (InputStream) c10.d(m());
            InputStream inputStream2 = (InputStream) c10.d(abstractC2488f.m());
            do {
                n10 = C2489g.n(inputStream, d10, 0, d10.length);
                if (n10 == C2489g.n(inputStream2, d11, 0, d11.length) && Arrays.equals(d10, d11)) {
                }
                return false;
            } while (n10 == d10.length);
            c10.close();
            return true;
        } catch (Throwable th2) {
            try {
                throw c10.e(th2);
            } finally {
                c10.close();
            }
        }
    }

    @I2.a
    public long f(AbstractC2487e abstractC2487e) throws IOException {
        H.E(abstractC2487e);
        m c10 = m.c();
        try {
            return C2489g.b((InputStream) c10.d(m()), (OutputStream) c10.d(abstractC2487e.c()));
        } finally {
        }
    }

    @I2.a
    public long g(OutputStream outputStream) throws IOException {
        H.E(outputStream);
        try {
            return C2489g.b((InputStream) m.c().d(m()), outputStream);
        } finally {
        }
    }

    public final long h(InputStream inputStream) throws IOException {
        long j10 = 0;
        while (true) {
            long t10 = C2489g.t(inputStream, 2147483647L);
            if (t10 <= 0) {
                return j10;
            }
            j10 += t10;
        }
    }

    public B2.p j(B2.q qVar) throws IOException {
        B2.r i10 = qVar.i();
        g(B2.o.a(i10));
        return i10.h();
    }

    public boolean k() throws IOException {
        w2.C<Long> q10 = q();
        if (q10.e()) {
            return q10.d().longValue() == 0;
        }
        m c10 = m.c();
        try {
            return ((InputStream) c10.d(m())).read() == -1;
        } catch (Throwable th2) {
            try {
                throw c10.e(th2);
            } finally {
                c10.close();
            }
        }
    }

    public InputStream l() throws IOException {
        InputStream m10 = m();
        return m10 instanceof BufferedInputStream ? (BufferedInputStream) m10 : new BufferedInputStream(m10);
    }

    public abstract InputStream m() throws IOException;

    @I2.a
    @InterfaceC15800a
    public <T> T n(InterfaceC2486d<T> interfaceC2486d) throws IOException {
        H.E(interfaceC2486d);
        try {
            return (T) C2489g.o((InputStream) m.c().d(m()), interfaceC2486d);
        } finally {
        }
    }

    public byte[] o() throws IOException {
        m c10 = m.c();
        try {
            InputStream inputStream = (InputStream) c10.d(m());
            w2.C<Long> q10 = q();
            return q10.e() ? C2489g.v(inputStream, q10.d().longValue()) : C2489g.u(inputStream);
        } catch (Throwable th2) {
            try {
                throw c10.e(th2);
            } finally {
                c10.close();
            }
        }
    }

    public long p() throws IOException {
        w2.C<Long> q10 = q();
        if (q10.e()) {
            return q10.d().longValue();
        }
        m c10 = m.c();
        try {
            return h((InputStream) c10.d(m()));
        } catch (IOException unused) {
            c10.close();
            try {
                return C2489g.e((InputStream) m.c().d(m()));
            } finally {
            }
        } finally {
        }
    }

    @InterfaceC15800a
    public w2.C<Long> q() {
        return w2.C.a();
    }

    public AbstractC2488f r(long j10, long j11) {
        return new e(j10, j11);
    }
}
