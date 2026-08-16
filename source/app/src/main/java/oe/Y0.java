package Oe;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public final class Y0 {

    public static final class a<T> extends AtomicInteger implements Ie.j<T>, Runnable {

        public static final long f19316d = 3880992722410194083L;

        public static final int f19317e = 0;

        public static final int f19318f = 1;

        public static final int f19319g = 2;

        public static final int f19320h = 3;

        public final Be.I<? super T> f19321b;

        public final T f19322c;

        public a(Be.I<? super T> i10, T t10) {
            this.f19321b = i10;
            this.f19322c = t10;
        }

        @Override
        public void clear() {
            lazySet(3);
        }

        @Override
        public boolean d() {
            return get() == 3;
        }

        @Override
        public void dispose() {
            set(3);
        }

        @Override
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override
        public boolean o(T t10, T t11) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override
        public boolean offer(T t10) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.f19322c;
        }

        @Override
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.f19321b.h(this.f19322c);
                if (get() == 2) {
                    lazySet(3);
                    this.f19321b.a();
                }
            }
        }
    }

    public static final class b<T, R> extends Be.B<R> {

        public final T f19323b;

        public final Fe.o<? super T, ? extends Be.G<? extends R>> f19324c;

        public b(T t10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar) {
            this.f19323b = t10;
            this.f19324c = oVar;
        }

        @Override
        public void J5(Be.I<? super R> i10) {
            try {
                Be.G g10 = (Be.G) He.b.g(this.f19324c.apply(this.f19323b), "The mapper returned a null ObservableSource");
                if (!(g10 instanceof Callable)) {
                    g10.c(i10);
                    return;
                }
                try {
                    Object call = ((Callable) g10).call();
                    if (call == null) {
                        Ge.e.c(i10);
                        return;
                    }
                    a aVar = new a(i10, call);
                    i10.e(aVar);
                    aVar.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ge.e.h(th2, i10);
                }
            } catch (Throwable th3) {
                Ge.e.h(th3, i10);
            }
        }
    }

    public Y0() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Be.B<U> a(T t10, Fe.o<? super T, ? extends Be.G<? extends U>> oVar) {
        return Ye.a.R(new b(t10, oVar));
    }

    public static <T, R> boolean b(Be.G<T> g10, Be.I<? super R> i10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar) {
        if (!(g10 instanceof Callable)) {
            return false;
        }
        try {
            A.c cVar = (Object) ((Callable) g10).call();
            if (cVar == null) {
                Ge.e.c(i10);
                return true;
            }
            try {
                Be.G g11 = (Be.G) He.b.g(oVar.apply(cVar), "The mapper returned a null ObservableSource");
                if (g11 instanceof Callable) {
                    try {
                        Object call = ((Callable) g11).call();
                        if (call == null) {
                            Ge.e.c(i10);
                            return true;
                        }
                        a aVar = new a(i10, call);
                        i10.e(aVar);
                        aVar.run();
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        Ge.e.h(th2, i10);
                        return true;
                    }
                } else {
                    g11.c(i10);
                }
                return true;
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ge.e.h(th3, i10);
                return true;
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            Ge.e.h(th4, i10);
            return true;
        }
    }
}
