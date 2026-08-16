package Oe;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class E1<T, D> extends Be.B<T> {

    public final Callable<? extends D> f18805b;

    public final Fe.o<? super D, ? extends Be.G<? extends T>> f18806c;

    public final Fe.g<? super D> f18807d;

    public final boolean f18808e;

    public static final class a<T, D> extends AtomicBoolean implements Be.I<T>, De.c {

        public static final long f18809g = 5904473792286235046L;

        public final Be.I<? super T> f18810b;

        public final D f18811c;

        public final Fe.g<? super D> f18812d;

        public final boolean f18813e;

        public De.c f18814f;

        public a(Be.I<? super T> i10, D d10, Fe.g<? super D> gVar, boolean z10) {
            this.f18810b = i10;
            this.f18811c = d10;
            this.f18812d = gVar;
            this.f18813e = z10;
        }

        @Override
        public void a() {
            if (!this.f18813e) {
                this.f18810b.a();
                this.f18814f.dispose();
                b();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.f18812d.accept(this.f18811c);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f18810b.onError(th2);
                    return;
                }
            }
            this.f18814f.dispose();
            this.f18810b.a();
        }

        public void b() {
            if (compareAndSet(false, true)) {
                try {
                    this.f18812d.accept(this.f18811c);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public boolean d() {
            return get();
        }

        @Override
        public void dispose() {
            b();
            this.f18814f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18814f, cVar)) {
                this.f18814f = cVar;
                this.f18810b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f18810b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f18813e) {
                this.f18810b.onError(th2);
                this.f18814f.dispose();
                b();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.f18812d.accept(this.f18811c);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    th2 = new CompositeException(th2, th3);
                }
            }
            this.f18814f.dispose();
            this.f18810b.onError(th2);
        }
    }

    public E1(Callable<? extends D> callable, Fe.o<? super D, ? extends Be.G<? extends T>> oVar, Fe.g<? super D> gVar, boolean z10) {
        this.f18805b = callable;
        this.f18806c = oVar;
        this.f18807d = gVar;
        this.f18808e = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        try {
            D call = this.f18805b.call();
            try {
                ((Be.G) He.b.g(this.f18806c.apply(call), "The sourceSupplier returned a null ObservableSource")).c(new a(i10, call, this.f18807d, this.f18808e));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f18807d.accept(call);
                    Ge.e.h(th2, i10);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    Ge.e.h(new CompositeException(th2, th3), i10);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            Ge.e.h(th4, i10);
        }
    }
}
