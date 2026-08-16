package Ng;

import Tg.C3089c;
import Tg.p;
import Tg.x;
import Tg.y;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.A;
import okhttp3.C;
import okhttp3.E;
import okhttp3.F;
import okhttp3.u;
import okhttp3.w;
import okhttp3.z;

public final class e implements Lg.c {

    public static final String f16227g = "connection";

    public static final String f16231k = "transfer-encoding";

    public static final String f16233m = "encoding";

    public final w.a f16237b;

    public final Kg.f f16238c;

    public final f f16239d;

    public h f16240e;

    public final A f16241f;

    public static final String f16228h = "host";

    public static final String f16229i = "keep-alive";

    public static final String f16230j = "proxy-connection";

    public static final String f16232l = "te";

    public static final String f16234n = "upgrade";

    public static final List<String> f16235o = Gg.c.v("connection", f16228h, f16229i, f16230j, f16232l, "transfer-encoding", "encoding", f16234n, b.f16166f, b.f16167g, b.f16168h, b.f16169i);

    public static final List<String> f16236p = Gg.c.v("connection", f16228h, f16229i, f16230j, f16232l, "transfer-encoding", "encoding", f16234n);

    public class a extends Tg.i {

        public boolean f16242c;

        public long f16243d;

        public a(y yVar) {
            super(yVar);
            this.f16242c = false;
            this.f16243d = 0L;
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            try {
                long K10 = c().K(c3089c, j10);
                if (K10 > 0) {
                    this.f16243d += K10;
                }
                return K10;
            } catch (IOException e10) {
                d(e10);
                throw e10;
            }
        }

        @Override
        public void close() throws IOException {
            super.close();
            d(null);
        }

        public final void d(IOException iOException) {
            if (this.f16242c) {
                return;
            }
            this.f16242c = true;
            e eVar = e.this;
            eVar.f16238c.r(false, eVar, this.f16243d, iOException);
        }
    }

    public e(z zVar, w.a aVar, Kg.f fVar, f fVar2) {
        this.f16237b = aVar;
        this.f16238c = fVar;
        this.f16239d = fVar2;
        List<A> w10 = zVar.w();
        A a10 = A.H2_PRIOR_KNOWLEDGE;
        this.f16241f = w10.contains(a10) ? a10 : A.HTTP_2;
    }

    public static List<b> g(C c10) {
        u e10 = c10.e();
        ArrayList arrayList = new ArrayList(e10.l() + 4);
        arrayList.add(new b(b.f16171k, c10.g()));
        arrayList.add(new b(b.f16172l, Lg.i.c(c10.k())));
        String c11 = c10.c(F2.d.f6283w);
        if (c11 != null) {
            arrayList.add(new b(b.f16174n, c11));
        }
        arrayList.add(new b(b.f16173m, c10.k().P()));
        int l10 = e10.l();
        for (int i10 = 0; i10 < l10; i10++) {
            Tg.f m10 = Tg.f.m(e10.g(i10).toLowerCase(Locale.US));
            if (!f16235o.contains(m10.b0())) {
                arrayList.add(new b(m10, e10.n(i10)));
            }
        }
        return arrayList;
    }

    public static E.a h(u uVar, A a10) throws IOException {
        u.a aVar = new u.a();
        int l10 = uVar.l();
        Lg.k kVar = null;
        for (int i10 = 0; i10 < l10; i10++) {
            String g10 = uVar.g(i10);
            String n10 = uVar.n(i10);
            if (g10.equals(b.f16165e)) {
                kVar = Lg.k.b("HTTP/1.1 " + n10);
            } else if (!f16236p.contains(g10)) {
                Gg.a.f7796a.b(aVar, g10, n10);
            }
        }
        if (kVar != null) {
            return new E.a().n(a10).g(kVar.f13452b).k(kVar.f13453c).j(aVar.h());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override
    public x a(C c10, long j10) {
        return this.f16240e.l();
    }

    @Override
    public void b() throws IOException {
        this.f16239d.flush();
    }

    @Override
    public void c() throws IOException {
        this.f16240e.l().close();
    }

    @Override
    public void cancel() {
        h hVar = this.f16240e;
        if (hVar != null) {
            hVar.h(Ng.a.CANCEL);
        }
    }

    @Override
    public void d(C c10) throws IOException {
        if (this.f16240e != null) {
            return;
        }
        h n10 = this.f16239d.n(g(c10), c10.a() != null);
        this.f16240e = n10;
        Tg.z p10 = n10.p();
        long a10 = this.f16237b.a();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        p10.h(a10, timeUnit);
        this.f16240e.y().h(this.f16237b.g(), timeUnit);
    }

    @Override
    public F e(E e10) throws IOException {
        Kg.f fVar = this.f16238c;
        fVar.f11369f.q(fVar.f11368e);
        return new Lg.h(e10.j("Content-Type"), Lg.e.b(e10), p.d(new a(this.f16240e.m())));
    }

    @Override
    public E.a f(boolean z10) throws IOException {
        E.a h10 = h(this.f16240e.v(), this.f16241f);
        if (z10 && Gg.a.f7796a.d(h10) == 100) {
            return null;
        }
        return h10;
    }
}
