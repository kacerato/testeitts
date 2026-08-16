package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2355e;
import Be.InterfaceC2356f;
import Be.InterfaceC2357g;
import java.util.concurrent.atomic.AtomicReference;

public final class C2680g extends AbstractC2353c {

    public final InterfaceC2357g f11274b;

    public static final class a extends AtomicReference<De.c> implements InterfaceC2355e, De.c {

        public static final long f11275c = -2467358622224974244L;

        public final InterfaceC2356f f11276b;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11276b = interfaceC2356f;
        }

        @Override
        public void a() {
            De.c andSet;
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || (andSet = getAndSet(dVar)) == dVar) {
                return;
            }
            try {
                this.f11276b.a();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(Fe.f fVar) {
            g(new Ge.b(fVar));
        }

        @Override
        public boolean f(Throwable th2) {
            De.c andSet;
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || (andSet = getAndSet(dVar)) == dVar) {
                return false;
            }
            try {
                this.f11276b.onError(th2);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override
        public void g(De.c cVar) {
            Ge.d.g(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (f(th2)) {
                return;
            }
            Ye.a.Y(th2);
        }

        @Override
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public C2680g(InterfaceC2357g interfaceC2357g) {
        this.f11274b = interfaceC2357g;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f);
        interfaceC2356f.e(aVar);
        try {
            this.f11274b.a(aVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            aVar.onError(th2);
        }
    }
}
