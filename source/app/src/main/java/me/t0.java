package Me;

import Be.AbstractC2368s;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class t0<T, D> extends AbstractC2368s<T> {

    public final Callable<? extends D> f15189b;

    public final Fe.o<? super D, ? extends Be.y<? extends T>> f15190c;

    public final Fe.g<? super D> f15191d;

    public final boolean f15192e;

    public static final class a<T, D> extends AtomicReference<Object> implements Be.v<T>, De.c {

        public static final long f15193f = -674404550052917487L;

        public final Be.v<? super T> f15194b;

        public final Fe.g<? super D> f15195c;

        public final boolean f15196d;

        public De.c f15197e;

        public a(Be.v<? super T> vVar, D d10, Fe.g<? super D> gVar, boolean z10) {
            super(d10);
            this.f15194b = vVar;
            this.f15195c = gVar;
            this.f15196d = z10;
        }

        @Override
        public void a() {
            this.f15197e = Ge.d.DISPOSED;
            if (this.f15196d) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f15195c.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f15194b.onError(th2);
                    return;
                }
            }
            this.f15194b.a();
            if (this.f15196d) {
                return;
            }
            c();
        }

        @Override
        public void b(T t10) {
            this.f15197e = Ge.d.DISPOSED;
            if (this.f15196d) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f15195c.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f15194b.onError(th2);
                    return;
                }
            }
            this.f15194b.b(t10);
            if (this.f15196d) {
                return;
            }
            c();
        }

        public void c() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f15195c.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f15197e.d();
        }

        @Override
        public void dispose() {
            this.f15197e.dispose();
            this.f15197e = Ge.d.DISPOSED;
            c();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15197e, cVar)) {
                this.f15197e = cVar;
                this.f15194b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15197e = Ge.d.DISPOSED;
            if (this.f15196d) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f15195c.accept(andSet);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    th2 = new CompositeException(th2, th3);
                }
            }
            this.f15194b.onError(th2);
            if (this.f15196d) {
                return;
            }
            c();
        }
    }

    public t0(Callable<? extends D> callable, Fe.o<? super D, ? extends Be.y<? extends T>> oVar, Fe.g<? super D> gVar, boolean z10) {
        this.f15189b = callable;
        this.f15190c = oVar;
        this.f15191d = gVar;
        this.f15192e = z10;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        try {
            D call = this.f15189b.call();
            try {
                ((Be.y) He.b.g(this.f15190c.apply(call), "The sourceSupplier returned a null MaybeSource")).d(new a(vVar, call, this.f15191d, this.f15192e));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                if (this.f15192e) {
                    try {
                        this.f15191d.accept(call);
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        Ge.e.g(new CompositeException(th2, th3), vVar);
                        return;
                    }
                }
                Ge.e.g(th2, vVar);
                if (this.f15192e) {
                    return;
                }
                try {
                    this.f15191d.accept(call);
                } catch (Throwable th4) {
                    io.reactivex.exceptions.a.b(th4);
                    Ye.a.Y(th4);
                }
            }
        } catch (Throwable th5) {
            io.reactivex.exceptions.a.b(th5);
            Ge.e.g(th5, vVar);
        }
    }
}
