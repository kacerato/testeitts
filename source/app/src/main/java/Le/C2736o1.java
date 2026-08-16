package Le;

import Be.AbstractC2362l;
import Le.C2733n1;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2736o1<T> extends Be.K<Boolean> implements Ie.b<Boolean> {

    public final hn.b<? extends T> f13045b;

    public final hn.b<? extends T> f13046c;

    public final Fe.d<? super T, ? super T> f13047d;

    public final int f13048e;

    public static final class a<T> extends AtomicInteger implements De.c, C2733n1.b {

        public static final long f13049i = -6178010334400373240L;

        public final Be.N<? super Boolean> f13050b;

        public final Fe.d<? super T, ? super T> f13051c;

        public final C2733n1.c<T> f13052d;

        public final C2733n1.c<T> f13053e;

        public final io.reactivex.internal.util.c f13054f = new io.reactivex.internal.util.c();

        public T f13055g;

        public T f13056h;

        public a(Be.N<? super Boolean> n10, int i10, Fe.d<? super T, ? super T> dVar) {
            this.f13050b = n10;
            this.f13051c = dVar;
            this.f13052d = new C2733n1.c<>(this, i10);
            this.f13053e = new C2733n1.c<>(this, i10);
        }

        public void a() {
            this.f13052d.b();
            this.f13052d.c();
            this.f13053e.b();
            this.f13053e.c();
        }

        public void b(hn.b<? extends T> bVar, hn.b<? extends T> bVar2) {
            bVar.l(this.f13052d);
            bVar2.l(this.f13053e);
        }

        @Override
        public void c(Throwable th2) {
            if (this.f13054f.a(th2)) {
                f();
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f13052d.get() == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f13052d.b();
            this.f13053e.b();
            if (getAndIncrement() == 0) {
                this.f13052d.c();
                this.f13053e.c();
            }
        }

        @Override
        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            int i10 = 1;
            do {
                Ie.o<T> oVar = this.f13052d.f12995f;
                Ie.o<T> oVar2 = this.f13053e.f12995f;
                if (oVar != null && oVar2 != null) {
                    while (!d()) {
                        if (this.f13054f.get() != null) {
                            a();
                            this.f13050b.onError(this.f13054f.c());
                            return;
                        }
                        boolean z10 = this.f13052d.f12996g;
                        T t10 = this.f13055g;
                        if (t10 == null) {
                            try {
                                t10 = oVar.poll();
                                this.f13055g = t10;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                a();
                                this.f13054f.a(th2);
                                this.f13050b.onError(this.f13054f.c());
                                return;
                            }
                        }
                        boolean z11 = t10 == null;
                        boolean z12 = this.f13053e.f12996g;
                        T t11 = this.f13056h;
                        if (t11 == null) {
                            try {
                                t11 = oVar2.poll();
                                this.f13056h = t11;
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                a();
                                this.f13054f.a(th3);
                                this.f13050b.onError(this.f13054f.c());
                                return;
                            }
                        }
                        boolean z13 = t11 == null;
                        if (z10 && z12 && z11 && z13) {
                            this.f13050b.b(Boolean.TRUE);
                            return;
                        }
                        if (z10 && z12 && z11 != z13) {
                            a();
                            this.f13050b.b(Boolean.FALSE);
                            return;
                        }
                        if (!z11 && !z13) {
                            try {
                                if (!this.f13051c.test(t10, t11)) {
                                    a();
                                    this.f13050b.b(Boolean.FALSE);
                                    return;
                                } else {
                                    this.f13055g = null;
                                    this.f13056h = null;
                                    this.f13052d.d();
                                    this.f13053e.d();
                                }
                            } catch (Throwable th4) {
                                io.reactivex.exceptions.a.b(th4);
                                a();
                                this.f13054f.a(th4);
                                this.f13050b.onError(this.f13054f.c());
                                return;
                            }
                        }
                    }
                    this.f13052d.c();
                    this.f13053e.c();
                    return;
                }
                if (d()) {
                    this.f13052d.c();
                    this.f13053e.c();
                    return;
                } else if (this.f13054f.get() != null) {
                    a();
                    this.f13050b.onError(this.f13054f.c());
                    return;
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }
    }

    public C2736o1(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, Fe.d<? super T, ? super T> dVar, int i10) {
        this.f13045b = bVar;
        this.f13046c = bVar2;
        this.f13047d = dVar;
        this.f13048e = i10;
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        a aVar = new a(n10, this.f13048e, this.f13047d);
        n10.e(aVar);
        aVar.b(this.f13045b, this.f13046c);
    }

    @Override
    public AbstractC2362l<Boolean> f() {
        return Ye.a.P(new C2733n1(this.f13045b, this.f13046c, this.f13047d, this.f13048e));
    }
}
