package Mg;

import Lg.h;
import Lg.i;
import Lg.k;
import Tg.C3089c;
import Tg.j;
import Tg.p;
import Tg.x;
import Tg.y;
import fd.C13208a;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.C;
import okhttp3.E;
import okhttp3.F;
import okhttp3.u;
import okhttp3.v;
import okhttp3.z;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class a implements Lg.c {

    public static final int f15234h = 0;

    public static final int f15235i = 1;

    public static final int f15236j = 2;

    public static final int f15237k = 3;

    public static final int f15238l = 4;

    public static final int f15239m = 5;

    public static final int f15240n = 6;

    public static final int f15241o = 262144;

    public final z f15242b;

    public final Kg.f f15243c;

    public final Tg.e f15244d;

    public final Tg.d f15245e;

    public int f15246f = 0;

    public long f15247g = TagBits.TypeVariablesAreConnected;

    public abstract class b implements y {

        public final j f15248b;

        public boolean f15249c;

        public long f15250d;

        public b() {
            this.f15248b = new j(a.this.f15244d.a0());
            this.f15250d = 0L;
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            try {
                long K10 = a.this.f15244d.K(c3089c, j10);
                if (K10 > 0) {
                    this.f15250d += K10;
                }
                return K10;
            } catch (IOException e10) {
                a(false, e10);
                throw e10;
            }
        }

        public final void a(boolean z10, IOException iOException) throws IOException {
            a aVar = a.this;
            int i10 = aVar.f15246f;
            if (i10 == 6) {
                return;
            }
            if (i10 != 5) {
                throw new IllegalStateException("state: " + a.this.f15246f);
            }
            aVar.g(this.f15248b);
            a aVar2 = a.this;
            aVar2.f15246f = 6;
            Kg.f fVar = aVar2.f15243c;
            if (fVar != null) {
                fVar.r(!z10, aVar2, this.f15250d, iOException);
            }
        }

        @Override
        public Tg.z a0() {
            return this.f15248b;
        }
    }

    public final class c implements x {

        public final j f15252b;

        public boolean f15253c;

        public c() {
            this.f15252b = new j(a.this.f15245e.a0());
        }

        @Override
        public Tg.z a0() {
            return this.f15252b;
        }

        @Override
        public synchronized void close() throws IOException {
            if (this.f15253c) {
                return;
            }
            this.f15253c = true;
            a.this.f15245e.X("0\r\n\r\n");
            a.this.g(this.f15252b);
            a.this.f15246f = 3;
        }

        @Override
        public synchronized void flush() throws IOException {
            if (this.f15253c) {
                return;
            }
            a.this.f15245e.flush();
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            if (this.f15253c) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            a.this.f15245e.P(j10);
            a.this.f15245e.X(C13208a.f86201f);
            a.this.f15245e.h0(c3089c, j10);
            a.this.f15245e.X(C13208a.f86201f);
        }
    }

    public class d extends b {

        public static final long f15255j = -1;

        public final v f15256f;

        public long f15257g;

        public boolean f15258h;

        public d(v vVar) {
            super();
            this.f15257g = -1L;
            this.f15258h = true;
            this.f15256f = vVar;
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f15249c) {
                throw new IllegalStateException("closed");
            }
            if (!this.f15258h) {
                return -1L;
            }
            long j11 = this.f15257g;
            if (j11 == 0 || j11 == -1) {
                c();
                if (!this.f15258h) {
                    return -1L;
                }
            }
            long K10 = super.K(c3089c, Math.min(j10, this.f15257g));
            if (K10 != -1) {
                this.f15257g -= K10;
                return K10;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a(false, protocolException);
            throw protocolException;
        }

        public final void c() throws IOException {
            if (this.f15257g != -1) {
                a.this.f15244d.L1();
            }
            try {
                this.f15257g = a.this.f15244d.G1();
                String trim = a.this.f15244d.L1().trim();
                if (this.f15257g < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f15257g + trim + JavadocConstants.ANCHOR_PREFIX_END);
                }
                if (this.f15257g == 0) {
                    this.f15258h = false;
                    Lg.e.k(a.this.f15242b.j(), this.f15256f, a.this.o());
                    a(true, null);
                }
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override
        public void close() throws IOException {
            if (this.f15249c) {
                return;
            }
            if (this.f15258h && !Gg.c.q(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f15249c = true;
        }
    }

    public final class e implements x {

        public final j f15260b;

        public boolean f15261c;

        public long f15262d;

        public e(long j10) {
            this.f15260b = new j(a.this.f15245e.a0());
            this.f15262d = j10;
        }

        @Override
        public Tg.z a0() {
            return this.f15260b;
        }

        @Override
        public void close() throws IOException {
            if (this.f15261c) {
                return;
            }
            this.f15261c = true;
            if (this.f15262d > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            a.this.g(this.f15260b);
            a.this.f15246f = 3;
        }

        @Override
        public void flush() throws IOException {
            if (this.f15261c) {
                return;
            }
            a.this.f15245e.flush();
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            if (this.f15261c) {
                throw new IllegalStateException("closed");
            }
            Gg.c.f(c3089c.Q(), 0L, j10);
            if (j10 <= this.f15262d) {
                a.this.f15245e.h0(c3089c, j10);
                this.f15262d -= j10;
                return;
            }
            throw new ProtocolException("expected " + this.f15262d + " bytes but received " + j10);
        }
    }

    public class f extends b {

        public long f15264f;

        public f(long j10) throws IOException {
            super();
            this.f15264f = j10;
            if (j10 == 0) {
                a(true, null);
            }
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f15249c) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.f15264f;
            if (j11 == 0) {
                return -1L;
            }
            long K10 = super.K(c3089c, Math.min(j11, j10));
            if (K10 == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, protocolException);
                throw protocolException;
            }
            long j12 = this.f15264f - K10;
            this.f15264f = j12;
            if (j12 == 0) {
                a(true, null);
            }
            return K10;
        }

        @Override
        public void close() throws IOException {
            if (this.f15249c) {
                return;
            }
            if (this.f15264f != 0 && !Gg.c.q(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f15249c = true;
        }
    }

    public class g extends b {

        public boolean f15266f;

        public g() {
            super();
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f15249c) {
                throw new IllegalStateException("closed");
            }
            if (this.f15266f) {
                return -1L;
            }
            long K10 = super.K(c3089c, j10);
            if (K10 != -1) {
                return K10;
            }
            this.f15266f = true;
            a(true, null);
            return -1L;
        }

        @Override
        public void close() throws IOException {
            if (this.f15249c) {
                return;
            }
            if (!this.f15266f) {
                a(false, null);
            }
            this.f15249c = true;
        }
    }

    public a(z zVar, Kg.f fVar, Tg.e eVar, Tg.d dVar) {
        this.f15242b = zVar;
        this.f15243c = fVar;
        this.f15244d = eVar;
        this.f15245e = dVar;
    }

    @Override
    public x a(C c10, long j10) {
        if ("chunked".equalsIgnoreCase(c10.c("Transfer-Encoding"))) {
            return i();
        }
        if (j10 != -1) {
            return k(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override
    public void b() throws IOException {
        this.f15245e.flush();
    }

    @Override
    public void c() throws IOException {
        this.f15245e.flush();
    }

    @Override
    public void cancel() {
        Kg.c d10 = this.f15243c.d();
        if (d10 != null) {
            d10.g();
        }
    }

    @Override
    public void d(C c10) throws IOException {
        p(c10.e(), i.a(c10, this.f15243c.d().b().b().type()));
    }

    @Override
    public F e(E e10) throws IOException {
        Kg.f fVar = this.f15243c;
        fVar.f11369f.q(fVar.f11368e);
        String j10 = e10.j("Content-Type");
        if (!Lg.e.c(e10)) {
            return new h(j10, 0L, p.d(l(0L)));
        }
        if ("chunked".equalsIgnoreCase(e10.j("Transfer-Encoding"))) {
            return new h(j10, -1L, p.d(j(e10.w().k())));
        }
        long b10 = Lg.e.b(e10);
        return b10 != -1 ? new h(j10, b10, p.d(l(b10))) : new h(j10, -1L, p.d(m()));
    }

    @Override
    public E.a f(boolean z10) throws IOException {
        int i10 = this.f15246f;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.f15246f);
        }
        try {
            k b10 = k.b(n());
            E.a j10 = new E.a().n(b10.f13451a).g(b10.f13452b).k(b10.f13453c).j(o());
            if (z10 && b10.f13452b == 100) {
                return null;
            }
            if (b10.f13452b == 100) {
                this.f15246f = 3;
                return j10;
            }
            this.f15246f = 4;
            return j10;
        } catch (EOFException e10) {
            IOException iOException = new IOException("unexpected end of stream on " + ((Object) this.f15243c));
            iOException.initCause(e10);
            throw iOException;
        }
    }

    public void g(j jVar) {
        Tg.z k10 = jVar.k();
        jVar.l(Tg.z.f25073d);
        k10.a();
        k10.b();
    }

    public boolean h() {
        return this.f15246f == 6;
    }

    public x i() {
        if (this.f15246f == 1) {
            this.f15246f = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f15246f);
    }

    public y j(v vVar) throws IOException {
        if (this.f15246f == 4) {
            this.f15246f = 5;
            return new d(vVar);
        }
        throw new IllegalStateException("state: " + this.f15246f);
    }

    public x k(long j10) {
        if (this.f15246f == 1) {
            this.f15246f = 2;
            return new e(j10);
        }
        throw new IllegalStateException("state: " + this.f15246f);
    }

    public y l(long j10) throws IOException {
        if (this.f15246f == 4) {
            this.f15246f = 5;
            return new f(j10);
        }
        throw new IllegalStateException("state: " + this.f15246f);
    }

    public y m() throws IOException {
        if (this.f15246f != 4) {
            throw new IllegalStateException("state: " + this.f15246f);
        }
        Kg.f fVar = this.f15243c;
        if (fVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f15246f = 5;
        fVar.j();
        return new g();
    }

    public final String n() throws IOException {
        String K12 = this.f15244d.K1(this.f15247g);
        this.f15247g -= K12.length();
        return K12;
    }

    public u o() throws IOException {
        u.a aVar = new u.a();
        while (true) {
            String n10 = n();
            if (n10.length() == 0) {
                return aVar.h();
            }
            Gg.a.f7796a.a(aVar, n10);
        }
    }

    public void p(u uVar, String str) throws IOException {
        if (this.f15246f != 0) {
            throw new IllegalStateException("state: " + this.f15246f);
        }
        this.f15245e.X(str).X(C13208a.f86201f);
        int l10 = uVar.l();
        for (int i10 = 0; i10 < l10; i10++) {
            this.f15245e.X(uVar.g(i10)).X(": ").X(uVar.n(i10)).X(C13208a.f86201f);
        }
        this.f15245e.X(C13208a.f86201f);
        this.f15246f = 1;
    }
}
