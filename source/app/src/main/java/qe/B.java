package Qe;

import Be.AbstractC2368s;
import java.util.concurrent.atomic.AtomicReference;

public final class B<T, R> extends AbstractC2368s<R> {

    public final Be.Q<? extends T> f22078b;

    public final Fe.o<? super T, ? extends Be.y<? extends R>> f22079c;

    public static final class a<R> implements Be.v<R> {

        public final AtomicReference<De.c> f22080b;

        public final Be.v<? super R> f22081c;

        public a(AtomicReference<De.c> atomicReference, Be.v<? super R> vVar) {
            this.f22080b = atomicReference;
            this.f22081c = vVar;
        }

        @Override
        public void a() {
            this.f22081c.a();
        }

        @Override
        public void b(R r10) {
            this.f22081c.b(r10);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this.f22080b, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22081c.onError(th2);
        }
    }

    public static final class b<T, R> extends AtomicReference<De.c> implements Be.N<T>, De.c {

        public static final long f22082d = -5843758257109742742L;

        public final Be.v<? super R> f22083b;

        public final Fe.o<? super T, ? extends Be.y<? extends R>> f22084c;

        public b(Be.v<? super R> vVar, Fe.o<? super T, ? extends Be.y<? extends R>> oVar) {
            this.f22083b = vVar;
            this.f22084c = oVar;
        }

        @Override
        public void b(T t10) {
            try {
                Be.y yVar = (Be.y) He.b.g(this.f22084c.apply(t10), "The mapper returned a null MaybeSource");
                if (d()) {
                    return;
                }
                yVar.d(new a(this, this.f22083b));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
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
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                this.f22083b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22083b.onError(th2);
        }
    }

    public B(Be.Q<? extends T> q10, Fe.o<? super T, ? extends Be.y<? extends R>> oVar) {
        this.f22079c = oVar;
        this.f22078b = q10;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        this.f22078b.a(new b(vVar, this.f22079c));
    }
}
