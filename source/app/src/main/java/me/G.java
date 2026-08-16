package Me;

import Be.AbstractC2368s;
import java.util.concurrent.atomic.AtomicReference;

public final class G<T, R> extends AbstractC2368s<R> {

    public final Be.y<T> f14914b;

    public final Fe.o<? super T, ? extends Be.Q<? extends R>> f14915c;

    public static final class a<T, R> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f14916d = 4827726964688405508L;

        public final Be.v<? super R> f14917b;

        public final Fe.o<? super T, ? extends Be.Q<? extends R>> f14918c;

        public a(Be.v<? super R> vVar, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar) {
            this.f14917b = vVar;
            this.f14918c = oVar;
        }

        @Override
        public void a() {
            this.f14917b.a();
        }

        @Override
        public void b(T t10) {
            try {
                ((Be.Q) He.b.g(this.f14918c.apply(t10), "The mapper returned a null SingleSource")).a(new b(this, this.f14917b));
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
                this.f14917b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14917b.onError(th2);
        }
    }

    public static final class b<R> implements Be.N<R> {

        public final AtomicReference<De.c> f14919b;

        public final Be.v<? super R> f14920c;

        public b(AtomicReference<De.c> atomicReference, Be.v<? super R> vVar) {
            this.f14919b = atomicReference;
            this.f14920c = vVar;
        }

        @Override
        public void b(R r10) {
            this.f14920c.b(r10);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this.f14919b, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f14920c.onError(th2);
        }
    }

    public G(Be.y<T> yVar, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar) {
        this.f14914b = yVar;
        this.f14915c = oVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        this.f14914b.d(new a(vVar, this.f14915c));
    }
}
