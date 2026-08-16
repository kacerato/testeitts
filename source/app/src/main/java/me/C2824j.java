package Me;

import Be.AbstractC2368s;
import java.util.concurrent.atomic.AtomicReference;

public final class C2824j<T> extends AbstractC2368s<T> {

    public final Be.w<T> f15086b;

    public static final class a<T> extends AtomicReference<De.c> implements Be.u<T>, De.c {

        public static final long f15087c = -2467358622224974244L;

        public final Be.v<? super T> f15088b;

        public a(Be.v<? super T> vVar) {
            this.f15088b = vVar;
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
                this.f15088b.a();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override
        public void b(T t10) {
            De.c andSet;
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || (andSet = getAndSet(dVar)) == dVar) {
                return;
            }
            try {
                if (t10 == null) {
                    this.f15088b.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.f15088b.b(t10);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th2) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th2;
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
                this.f15088b.onError(th2);
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

    public C2824j(Be.w<T> wVar) {
        this.f15086b = wVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        a aVar = new a(vVar);
        vVar.e(aVar);
        try {
            this.f15086b.a(aVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            aVar.onError(th2);
        }
    }
}
