package Ig;

import Ig.c;
import Lg.h;
import Tg.C3089c;
import Tg.p;
import Tg.x;
import Tg.y;
import Tg.z;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.A;
import okhttp3.C;
import okhttp3.E;
import okhttp3.u;
import okhttp3.w;

public final class a implements w {

    public final f f9351a;

    public class C0236a implements y {

        public boolean f9352b;

        public final Tg.e f9353c;

        public final b f9354d;

        public final Tg.d f9355e;

        public C0236a(Tg.e eVar, b bVar, Tg.d dVar) {
            this.f9353c = eVar;
            this.f9354d = bVar;
            this.f9355e = dVar;
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            try {
                long K10 = this.f9353c.K(c3089c, j10);
                if (K10 != -1) {
                    c3089c.f(this.f9355e.C(), c3089c.Q() - K10, K10);
                    this.f9355e.W();
                    return K10;
                }
                if (!this.f9352b) {
                    this.f9352b = true;
                    this.f9355e.close();
                }
                return -1L;
            } catch (IOException e10) {
                if (!this.f9352b) {
                    this.f9352b = true;
                    this.f9354d.a();
                }
                throw e10;
            }
        }

        @Override
        public z a0() {
            return this.f9353c.a0();
        }

        @Override
        public void close() throws IOException {
            if (!this.f9352b && !Gg.c.q(this, 100, TimeUnit.MILLISECONDS)) {
                this.f9352b = true;
                this.f9354d.a();
            }
            this.f9353c.close();
        }
    }

    public a(f fVar) {
        this.f9351a = fVar;
    }

    public static u c(u uVar, u uVar2) {
        u.a aVar = new u.a();
        int l10 = uVar.l();
        for (int i10 = 0; i10 < l10; i10++) {
            String g10 = uVar.g(i10);
            String n10 = uVar.n(i10);
            if ((!F2.d.f6235g.equalsIgnoreCase(g10) || !n10.startsWith("1")) && (d(g10) || !e(g10) || uVar2.d(g10) == null)) {
                Gg.a.f7796a.b(aVar, g10, n10);
            }
        }
        int l11 = uVar2.l();
        for (int i11 = 0; i11 < l11; i11++) {
            String g11 = uVar2.g(i11);
            if (!d(g11) && e(g11)) {
                Gg.a.f7796a.b(aVar, g11, uVar2.n(i11));
            }
        }
        return aVar.h();
    }

    public static boolean d(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    public static boolean e(String str) {
        return (F2.d.f6259o.equalsIgnoreCase(str) || F2.d.f6278u0.equalsIgnoreCase(str) || F2.d.f6287x0.equalsIgnoreCase(str) || F2.d.f6165H.equalsIgnoreCase(str) || F2.d.f6180M.equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || F2.d.f6183N.equalsIgnoreCase(str)) ? false : true;
    }

    public static E f(E e10) {
        return (e10 == null || e10.c() == null) ? e10 : e10.r().b(null).c();
    }

    @Override
    public E a(w.a aVar) throws IOException {
        f fVar = this.f9351a;
        E c10 = fVar != null ? fVar.c(aVar.b0()) : null;
        c c11 = new c.a(System.currentTimeMillis(), aVar.b0(), c10).c();
        C c12 = c11.f9357a;
        E e10 = c11.f9358b;
        f fVar2 = this.f9351a;
        if (fVar2 != null) {
            fVar2.a(c11);
        }
        if (c10 != null && e10 == null) {
            Gg.c.g(c10.c());
        }
        if (c12 == null && e10 == null) {
            return new E.a().q(aVar.b0()).n(A.HTTP_1_1).g(504).k("Unsatisfiable Request (only-if-cached)").b(Gg.c.f7800c).r(-1L).o(System.currentTimeMillis()).c();
        }
        if (c12 == null) {
            return e10.r().d(f(e10)).c();
        }
        try {
            E c13 = aVar.c(c12);
            if (c13 == null && c10 != null) {
            }
            if (e10 != null) {
                if (c13.g() == 304) {
                    E c14 = e10.r().j(c(e10.m(), c13.m())).r(c13.x()).o(c13.v()).d(f(e10)).l(f(c13)).c();
                    c13.c().close();
                    this.f9351a.f();
                    this.f9351a.d(e10, c14);
                    return c14;
                }
                Gg.c.g(e10.c());
            }
            E c15 = c13.r().d(f(e10)).l(f(c13)).c();
            if (this.f9351a != null) {
                if (Lg.e.c(c15) && c.a(c15, c12)) {
                    return b(this.f9351a.e(c15), c15);
                }
                if (Lg.f.a(c12.g())) {
                    try {
                        this.f9351a.b(c12);
                    } catch (IOException unused) {
                    }
                }
            }
            return c15;
        } finally {
            if (c10 != null) {
                Gg.c.g(c10.c());
            }
        }
    }

    public final E b(b bVar, E e10) throws IOException {
        x b10;
        if (bVar == null || (b10 = bVar.b()) == null) {
            return e10;
        }
        return e10.r().b(new h(e10.j("Content-Type"), e10.c().g(), p.d(new C0236a(e10.c().n(), bVar, p.c(b10))))).c();
    }
}
