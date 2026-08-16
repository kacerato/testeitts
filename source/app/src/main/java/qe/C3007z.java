package Qe;

import Be.AbstractC2362l;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;

public final class C3007z<T, R> extends AbstractC2362l<R> {

    public final Be.Q<T> f22328c;

    public final Fe.o<? super T, ? extends Iterable<? extends R>> f22329d;

    public static final class a<T, R> extends Ue.c<R> implements Be.N<T> {

        public static final long f22330j = -8938804753851907758L;

        public final hn.c<? super R> f22331c;

        public final Fe.o<? super T, ? extends Iterable<? extends R>> f22332d;

        public final AtomicLong f22333e = new AtomicLong();

        public De.c f22334f;

        public volatile Iterator<? extends R> f22335g;

        public volatile boolean f22336h;

        public boolean f22337i;

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f22331c = cVar;
            this.f22332d = oVar;
        }

        @Override
        public void b(T t10) {
            try {
                Iterator<? extends R> it = this.f22332d.apply(t10).iterator();
                if (!it.hasNext()) {
                    this.f22331c.a();
                } else {
                    this.f22335g = it;
                    f();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22331c.onError(th2);
            }
        }

        @Override
        public void cancel() {
            this.f22336h = true;
            this.f22334f.dispose();
            this.f22334f = Ge.d.DISPOSED;
        }

        @Override
        public void clear() {
            this.f22335g = null;
        }

        public void d(hn.c<? super R> cVar, Iterator<? extends R> it) {
            while (!this.f22336h) {
                try {
                    cVar.h(it.next());
                    if (this.f22336h) {
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
            if (Ge.d.j(this.f22334f, cVar)) {
                this.f22334f = cVar;
                this.f22331c.j(this);
            }
        }

        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f22331c;
            Iterator<? extends R> it = this.f22335g;
            if (this.f22337i && it != null) {
                cVar.h(null);
                cVar.a();
                return;
            }
            int i10 = 1;
            while (true) {
                if (it != null) {
                    long j10 = this.f22333e.get();
                    if (j10 == Long.MAX_VALUE) {
                        d(cVar, it);
                        return;
                    }
                    long j11 = 0;
                    while (j11 != j10) {
                        if (this.f22336h) {
                            return;
                        }
                        try {
                            cVar.h((Object) He.b.g(it.next(), "The iterator returned a null value"));
                            if (this.f22336h) {
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
                        io.reactivex.internal.util.d.e(this.f22333e, j11);
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                if (it == null) {
                    it = this.f22335g;
                }
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f22333e, j10);
                f();
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f22335g == null;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f22337i = true;
            return 2;
        }

        @Override
        public void onError(Throwable th2) {
            this.f22334f = Ge.d.DISPOSED;
            this.f22331c.onError(th2);
        }

        @Override
        @Ce.g
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f22335g;
            if (it == null) {
                return null;
            }
            R r10 = (R) He.b.g(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f22335g = null;
            }
            return r10;
        }
    }

    public C3007z(Be.Q<T> q10, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f22328c = q10;
        this.f22329d = oVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f22328c.a(new a(cVar, this.f22329d));
    }
}
