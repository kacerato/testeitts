package Me;

import Be.AbstractC2362l;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;

public final class C<T, R> extends AbstractC2362l<R> {

    public final Be.y<T> f14879c;

    public final Fe.o<? super T, ? extends Iterable<? extends R>> f14880d;

    public static final class a<T, R> extends Ue.c<R> implements Be.v<T> {

        public static final long f14881j = -8938804753851907758L;

        public final hn.c<? super R> f14882c;

        public final Fe.o<? super T, ? extends Iterable<? extends R>> f14883d;

        public final AtomicLong f14884e = new AtomicLong();

        public De.c f14885f;

        public volatile Iterator<? extends R> f14886g;

        public volatile boolean f14887h;

        public boolean f14888i;

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f14882c = cVar;
            this.f14883d = oVar;
        }

        @Override
        public void a() {
            this.f14882c.a();
        }

        @Override
        public void b(T t10) {
            try {
                Iterator<? extends R> it = this.f14883d.apply(t10).iterator();
                if (!it.hasNext()) {
                    this.f14882c.a();
                } else {
                    this.f14886g = it;
                    f();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f14882c.onError(th2);
            }
        }

        @Override
        public void cancel() {
            this.f14887h = true;
            this.f14885f.dispose();
            this.f14885f = Ge.d.DISPOSED;
        }

        @Override
        public void clear() {
            this.f14886g = null;
        }

        public void d(hn.c<? super R> cVar, Iterator<? extends R> it) {
            while (!this.f14887h) {
                try {
                    cVar.h(it.next());
                    if (this.f14887h) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            cVar.a();
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        cVar.onError(th2);
                        return;
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    cVar.onError(th3);
                    return;
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14885f, cVar)) {
                this.f14885f = cVar;
                this.f14882c.j(this);
            }
        }

        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f14882c;
            Iterator<? extends R> it = this.f14886g;
            if (this.f14888i && it != null) {
                cVar.h(null);
                cVar.a();
                return;
            }
            int i10 = 1;
            while (true) {
                if (it != null) {
                    long j10 = this.f14884e.get();
                    if (j10 == Long.MAX_VALUE) {
                        d(cVar, it);
                        return;
                    }
                    long j11 = 0;
                    while (j11 != j10) {
                        if (this.f14887h) {
                            return;
                        }
                        try {
                            cVar.h((Object) He.b.g(it.next(), "The iterator returned a null value"));
                            if (this.f14887h) {
                                return;
                            }
                            j11++;
                            try {
                                if (!it.hasNext()) {
                                    cVar.a();
                                    return;
                                }
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                cVar.onError(th2);
                                return;
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            cVar.onError(th3);
                            return;
                        }
                    }
                    if (j11 != 0) {
                        io.reactivex.internal.util.d.e(this.f14884e, j11);
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                if (it == null) {
                    it = this.f14886g;
                }
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f14884e, j10);
                f();
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f14886g == null;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f14888i = true;
            return 2;
        }

        @Override
        public void onError(Throwable th2) {
            this.f14885f = Ge.d.DISPOSED;
            this.f14882c.onError(th2);
        }

        @Override
        @Ce.g
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f14886g;
            if (it == null) {
                return null;
            }
            R r10 = (R) He.b.g(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f14886g = null;
            }
            return r10;
        }
    }

    public C(Be.y<T> yVar, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f14879c = yVar;
        this.f14880d = oVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f14879c.d(new a(cVar, this.f14880d));
    }
}
