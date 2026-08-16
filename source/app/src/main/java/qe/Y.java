package Qe;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class Y<T, U> extends Be.K<T> {

    public final Callable<U> f22175b;

    public final Fe.o<? super U, ? extends Be.Q<? extends T>> f22176c;

    public final Fe.g<? super U> f22177d;

    public final boolean f22178e;

    public static final class a<T, U> extends AtomicReference<Object> implements Be.N<T>, De.c {

        public static final long f22179f = -5331524057054083935L;

        public final Be.N<? super T> f22180b;

        public final Fe.g<? super U> f22181c;

        public final boolean f22182d;

        public De.c f22183e;

        public a(Be.N<? super T> n10, U u10, boolean z10, Fe.g<? super U> gVar) {
            super(u10);
            this.f22180b = n10;
            this.f22182d = z10;
            this.f22181c = gVar;
        }

        public void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f22181c.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public void b(T t10) {
            this.f22183e = Ge.d.DISPOSED;
            if (this.f22182d) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f22181c.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f22180b.onError(th2);
                    return;
                }
            }
            this.f22180b.b(t10);
            if (this.f22182d) {
                return;
            }
            a();
        }

        @Override
        public boolean d() {
            return this.f22183e.d();
        }

        @Override
        public void dispose() {
            this.f22183e.dispose();
            this.f22183e = Ge.d.DISPOSED;
            a();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22183e, cVar)) {
                this.f22183e = cVar;
                this.f22180b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22183e = Ge.d.DISPOSED;
            if (this.f22182d) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f22181c.accept(andSet);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    th2 = new CompositeException(th2, th3);
                }
            }
            this.f22180b.onError(th2);
            if (this.f22182d) {
                return;
            }
            a();
        }
    }

    public Y(Callable<U> callable, Fe.o<? super U, ? extends Be.Q<? extends T>> oVar, Fe.g<? super U> gVar, boolean z10) {
        this.f22175b = callable;
        this.f22176c = oVar;
        this.f22177d = gVar;
        this.f22178e = z10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        try {
            U call = this.f22175b.call();
            try {
                ((Be.Q) He.b.g(this.f22176c.apply(call), "The singleFunction returned a null SingleSource")).a(new a(n10, call, this.f22178e, this.f22177d));
            } catch (Throwable th2) {
                th = th2;
                io.reactivex.exceptions.a.b(th);
                if (this.f22178e) {
                    try {
                        this.f22177d.accept(call);
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        th = new CompositeException(th, th3);
                    }
                }
                Ge.e.i(th, n10);
                if (this.f22178e) {
                    return;
                }
                try {
                    this.f22177d.accept(call);
                } catch (Throwable th4) {
                    io.reactivex.exceptions.a.b(th4);
                    Ye.a.Y(th4);
                }
            }
        } catch (Throwable th5) {
            io.reactivex.exceptions.a.b(th5);
            Ge.e.i(th5, n10);
        }
    }
}
