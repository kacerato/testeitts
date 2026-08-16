package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class S1<T, D> extends AbstractC2362l<T> {

    public final Callable<? extends D> f12230c;

    public final Fe.o<? super D, ? extends hn.b<? extends T>> f12231d;

    public final Fe.g<? super D> f12232e;

    public final boolean f12233f;

    public static final class a<T, D> extends AtomicBoolean implements InterfaceC2367q<T>, hn.d {

        public static final long f12234g = 5904473792286235046L;

        public final hn.c<? super T> f12235b;

        public final D f12236c;

        public final Fe.g<? super D> f12237d;

        public final boolean f12238e;

        public hn.d f12239f;

        public a(hn.c<? super T> cVar, D d10, Fe.g<? super D> gVar, boolean z10) {
            this.f12235b = cVar;
            this.f12236c = d10;
            this.f12237d = gVar;
            this.f12238e = z10;
        }

        @Override
        public void a() {
            if (!this.f12238e) {
                this.f12235b.a();
                this.f12239f.cancel();
                b();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.f12237d.accept(this.f12236c);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f12235b.onError(th2);
                    return;
                }
            }
            this.f12239f.cancel();
            this.f12235b.a();
        }

        public void b() {
            if (compareAndSet(false, true)) {
                try {
                    this.f12237d.accept(this.f12236c);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public void cancel() {
            b();
            this.f12239f.cancel();
        }

        @Override
        public void h(T t10) {
            this.f12235b.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f12239f.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12239f, dVar)) {
                this.f12239f = dVar;
                this.f12235b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f12238e) {
                this.f12235b.onError(th2);
                this.f12239f.cancel();
                b();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.f12237d.accept(this.f12236c);
                } catch (Throwable th3) {
                    th = th3;
                    io.reactivex.exceptions.a.b(th);
                }
            }
            th = null;
            this.f12239f.cancel();
            if (th != null) {
                this.f12235b.onError(new CompositeException(th2, th));
            } else {
                this.f12235b.onError(th2);
            }
        }
    }

    public S1(Callable<? extends D> callable, Fe.o<? super D, ? extends hn.b<? extends T>> oVar, Fe.g<? super D> gVar, boolean z10) {
        this.f12230c = callable;
        this.f12231d = oVar;
        this.f12232e = gVar;
        this.f12233f = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        try {
            D call = this.f12230c.call();
            try {
                ((hn.b) He.b.g(this.f12231d.apply(call), "The sourceSupplier returned a null Publisher")).l(new a(cVar, call, this.f12232e, this.f12233f));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f12232e.accept(call);
                    Ue.g.b(th2, cVar);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    Ue.g.b(new CompositeException(th2, th3), cVar);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            Ue.g.b(th4, cVar);
        }
    }
}
