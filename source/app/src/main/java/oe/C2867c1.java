package Oe;

import java.util.concurrent.atomic.AtomicInteger;

public final class C2867c1<T> extends Be.K<Boolean> implements Ie.d<Boolean> {

    public final Be.G<? extends T> f19415b;

    public final Be.G<? extends T> f19416c;

    public final Fe.d<? super T, ? super T> f19417d;

    public final int f19418e;

    public static final class a<T> extends AtomicInteger implements De.c {

        public static final long f19419k = -6178010334400373240L;

        public final Be.N<? super Boolean> f19420b;

        public final Fe.d<? super T, ? super T> f19421c;

        public final Ge.a f19422d;

        public final Be.G<? extends T> f19423e;

        public final Be.G<? extends T> f19424f;

        public final b<T>[] f19425g;

        public volatile boolean f19426h;

        public T f19427i;

        public T f19428j;

        public a(Be.N<? super Boolean> n10, int i10, Be.G<? extends T> g10, Be.G<? extends T> g11, Fe.d<? super T, ? super T> dVar) {
            this.f19420b = n10;
            this.f19423e = g10;
            this.f19424f = g11;
            this.f19421c = dVar;
            this.f19425g = r3;
            b<T>[] bVarArr = {new b<>(this, 0, i10), new b<>(this, 1, i10)};
            this.f19422d = new Ge.a(2);
        }

        public void a(Re.c<T> cVar, Re.c<T> cVar2) {
            this.f19426h = true;
            cVar.clear();
            cVar2.clear();
        }

        public void b() {
            Throwable th2;
            Throwable th3;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f19425g;
            b<T> bVar = bVarArr[0];
            Re.c<T> cVar = bVar.f19430c;
            b<T> bVar2 = bVarArr[1];
            Re.c<T> cVar2 = bVar2.f19430c;
            int i10 = 1;
            while (!this.f19426h) {
                boolean z10 = bVar.f19432e;
                if (z10 && (th3 = bVar.f19433f) != null) {
                    a(cVar, cVar2);
                    this.f19420b.onError(th3);
                    return;
                }
                boolean z11 = bVar2.f19432e;
                if (z11 && (th2 = bVar2.f19433f) != null) {
                    a(cVar, cVar2);
                    this.f19420b.onError(th2);
                    return;
                }
                if (this.f19427i == null) {
                    this.f19427i = cVar.poll();
                }
                boolean z12 = this.f19427i == null;
                if (this.f19428j == null) {
                    this.f19428j = cVar2.poll();
                }
                T t10 = this.f19428j;
                boolean z13 = t10 == null;
                if (z10 && z11 && z12 && z13) {
                    this.f19420b.b(Boolean.TRUE);
                    return;
                }
                if (z10 && z11 && z12 != z13) {
                    a(cVar, cVar2);
                    this.f19420b.b(Boolean.FALSE);
                    return;
                }
                if (!z12 && !z13) {
                    try {
                        if (!this.f19421c.test(this.f19427i, t10)) {
                            a(cVar, cVar2);
                            this.f19420b.b(Boolean.FALSE);
                            return;
                        } else {
                            this.f19427i = null;
                            this.f19428j = null;
                        }
                    } catch (Throwable th4) {
                        io.reactivex.exceptions.a.b(th4);
                        a(cVar, cVar2);
                        this.f19420b.onError(th4);
                        return;
                    }
                }
                if (z12 || z13) {
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
            cVar.clear();
            cVar2.clear();
        }

        public boolean c(De.c cVar, int i10) {
            return this.f19422d.b(i10, cVar);
        }

        @Override
        public boolean d() {
            return this.f19426h;
        }

        @Override
        public void dispose() {
            if (this.f19426h) {
                return;
            }
            this.f19426h = true;
            this.f19422d.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f19425g;
                bVarArr[0].f19430c.clear();
                bVarArr[1].f19430c.clear();
            }
        }

        public void e() {
            b<T>[] bVarArr = this.f19425g;
            this.f19423e.c(bVarArr[0]);
            this.f19424f.c(bVarArr[1]);
        }
    }

    public static final class b<T> implements Be.I<T> {

        public final a<T> f19429b;

        public final Re.c<T> f19430c;

        public final int f19431d;

        public volatile boolean f19432e;

        public Throwable f19433f;

        public b(a<T> aVar, int i10, int i11) {
            this.f19429b = aVar;
            this.f19431d = i10;
            this.f19430c = new Re.c<>(i11);
        }

        @Override
        public void a() {
            this.f19432e = true;
            this.f19429b.b();
        }

        @Override
        public void e(De.c cVar) {
            this.f19429b.c(cVar, this.f19431d);
        }

        @Override
        public void h(T t10) {
            this.f19430c.offer(t10);
            this.f19429b.b();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19433f = th2;
            this.f19432e = true;
            this.f19429b.b();
        }
    }

    public C2867c1(Be.G<? extends T> g10, Be.G<? extends T> g11, Fe.d<? super T, ? super T> dVar, int i10) {
        this.f19415b = g10;
        this.f19416c = g11;
        this.f19417d = dVar;
        this.f19418e = i10;
    }

    @Override
    public Be.B<Boolean> c() {
        return Ye.a.R(new C2864b1(this.f19415b, this.f19416c, this.f19417d, this.f19418e));
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        a aVar = new a(n10, this.f19418e, this.f19415b, this.f19416c, this.f19417d);
        n10.e(aVar);
        aVar.e();
    }
}
