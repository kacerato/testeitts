package Me;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class E<T, R> extends AbstractC2815a<T, R> {

    public final Fe.o<? super T, ? extends Be.y<? extends R>> f14897c;

    public final Fe.o<? super Throwable, ? extends Be.y<? extends R>> f14898d;

    public final Callable<? extends Be.y<? extends R>> f14899e;

    public static final class a<T, R> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f14900g = 4375739915521278546L;

        public final Be.v<? super R> f14901b;

        public final Fe.o<? super T, ? extends Be.y<? extends R>> f14902c;

        public final Fe.o<? super Throwable, ? extends Be.y<? extends R>> f14903d;

        public final Callable<? extends Be.y<? extends R>> f14904e;

        public De.c f14905f;

        public final class C0425a implements Be.v<R> {
            public C0425a() {
            }

            @Override
            public void a() {
                a.this.f14901b.a();
            }

            @Override
            public void b(R r10) {
                a.this.f14901b.b(r10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(a.this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.f14901b.onError(th2);
            }
        }

        public a(Be.v<? super R> vVar, Fe.o<? super T, ? extends Be.y<? extends R>> oVar, Fe.o<? super Throwable, ? extends Be.y<? extends R>> oVar2, Callable<? extends Be.y<? extends R>> callable) {
            this.f14901b = vVar;
            this.f14902c = oVar;
            this.f14903d = oVar2;
            this.f14904e = callable;
        }

        @Override
        public void a() {
            try {
                ((Be.y) He.b.g(this.f14904e.call(), "The onCompleteSupplier returned a null MaybeSource")).d(new C0425a());
            } catch (Exception e10) {
                io.reactivex.exceptions.a.b(e10);
                this.f14901b.onError(e10);
            }
        }

        @Override
        public void b(T t10) {
            try {
                ((Be.y) He.b.g(this.f14902c.apply(t10), "The onSuccessMapper returned a null MaybeSource")).d(new C0425a());
            } catch (Exception e10) {
                io.reactivex.exceptions.a.b(e10);
                this.f14901b.onError(e10);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            this.f14905f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14905f, cVar)) {
                this.f14905f = cVar;
                this.f14901b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            try {
                ((Be.y) He.b.g(this.f14903d.apply(th2), "The onErrorMapper returned a null MaybeSource")).d(new C0425a());
            } catch (Exception e10) {
                io.reactivex.exceptions.a.b(e10);
                this.f14901b.onError(new CompositeException(th2, e10));
            }
        }
    }

    public E(Be.y<T> yVar, Fe.o<? super T, ? extends Be.y<? extends R>> oVar, Fe.o<? super Throwable, ? extends Be.y<? extends R>> oVar2, Callable<? extends Be.y<? extends R>> callable) {
        super(yVar);
        this.f14897c = oVar;
        this.f14898d = oVar2;
        this.f14899e = callable;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        this.f14976b.d(new a(vVar, this.f14897c, this.f14898d, this.f14899e));
    }
}
