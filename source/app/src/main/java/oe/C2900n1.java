package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2900n1<T, R> extends AbstractC2859a<T, R> {

    public final Fe.o<? super T, ? extends Be.G<? extends R>> f19676c;

    public final int f19677d;

    public final boolean f19678e;

    public static final class a<T, R> extends AtomicReference<De.c> implements Be.I<R> {

        public static final long f19679g = 3837284832786408377L;

        public final b<T, R> f19680b;

        public final long f19681c;

        public final int f19682d;

        public volatile Ie.o<R> f19683e;

        public volatile boolean f19684f;

        public a(b<T, R> bVar, long j10, int i10) {
            this.f19680b = bVar;
            this.f19681c = j10;
            this.f19682d = i10;
        }

        @Override
        public void a() {
            if (this.f19681c == this.f19680b.f19696k) {
                this.f19684f = true;
                this.f19680b.c();
            }
        }

        public void b() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                if (cVar instanceof Ie.j) {
                    Ie.j jVar = (Ie.j) cVar;
                    int m10 = jVar.m(7);
                    if (m10 == 1) {
                        this.f19683e = jVar;
                        this.f19684f = true;
                        this.f19680b.c();
                        return;
                    } else if (m10 == 2) {
                        this.f19683e = jVar;
                        return;
                    }
                }
                this.f19683e = new Re.c(this.f19682d);
            }
        }

        @Override
        public void h(R r10) {
            if (this.f19681c == this.f19680b.f19696k) {
                if (r10 != null) {
                    this.f19683e.offer(r10);
                }
                this.f19680b.c();
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19680b.f(this, th2);
        }
    }

    public static final class b<T, R> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19685l = -3491074160481096299L;

        public static final a<Object, Object> f19686m;

        public final Be.I<? super R> f19687b;

        public final Fe.o<? super T, ? extends Be.G<? extends R>> f19688c;

        public final int f19689d;

        public final boolean f19690e;

        public volatile boolean f19692g;

        public volatile boolean f19693h;

        public De.c f19694i;

        public volatile long f19696k;

        public final AtomicReference<a<T, R>> f19695j = new AtomicReference<>();

        public final io.reactivex.internal.util.c f19691f = new io.reactivex.internal.util.c();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            f19686m = aVar;
            aVar.b();
        }

        public b(Be.I<? super R> i10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar, int i11, boolean z10) {
            this.f19687b = i10;
            this.f19688c = oVar;
            this.f19689d = i11;
            this.f19690e = z10;
        }

        @Override
        public void a() {
            if (this.f19692g) {
                return;
            }
            this.f19692g = true;
            c();
        }

        public void b() {
            a<Object, Object> aVar;
            a<T, R> aVar2 = this.f19695j.get();
            a<Object, Object> aVar3 = f19686m;
            if (aVar2 == aVar3 || (aVar = (a) this.f19695j.getAndSet(aVar3)) == aVar3 || aVar == null) {
                return;
            }
            aVar.b();
        }

        /* JADX WARN: Removed duplicated region for block: B:71:0x00e9 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:77:0x000f A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void c() {
            Ie.o<R> oVar;
            A0.a aVar;
            if (getAndIncrement() != 0) {
                return;
            }
            Be.I<? super R> i10 = this.f19687b;
            AtomicReference<a<T, R>> atomicReference = this.f19695j;
            boolean z10 = this.f19690e;
            int i11 = 1;
            while (!this.f19693h) {
                if (this.f19692g) {
                    boolean z11 = atomicReference.get() == null;
                    if (z10) {
                        if (z11) {
                            Throwable th2 = this.f19691f.get();
                            if (th2 != null) {
                                i10.onError(th2);
                                return;
                            } else {
                                i10.a();
                                return;
                            }
                        }
                    } else if (this.f19691f.get() != null) {
                        i10.onError(this.f19691f.c());
                        return;
                    } else if (z11) {
                        i10.a();
                        return;
                    }
                }
                a<T, R> aVar2 = atomicReference.get();
                if (aVar2 != null && (oVar = aVar2.f19683e) != null) {
                    if (aVar2.f19684f) {
                        boolean isEmpty = oVar.isEmpty();
                        if (z10) {
                            if (isEmpty) {
                                androidx.lifecycle.c.a(atomicReference, aVar2, null);
                            }
                        } else if (this.f19691f.get() != null) {
                            i10.onError(this.f19691f.c());
                            return;
                        } else if (isEmpty) {
                            androidx.lifecycle.c.a(atomicReference, aVar2, null);
                        }
                    }
                    boolean z12 = false;
                    while (!this.f19693h) {
                        if (aVar2 == atomicReference.get()) {
                            if (!z10 && this.f19691f.get() != null) {
                                i10.onError(this.f19691f.c());
                                return;
                            }
                            boolean z13 = aVar2.f19684f;
                            try {
                                aVar = oVar.poll();
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                this.f19691f.a(th3);
                                androidx.lifecycle.c.a(atomicReference, aVar2, null);
                                if (z10) {
                                    aVar2.b();
                                } else {
                                    b();
                                    this.f19694i.dispose();
                                    this.f19692g = true;
                                }
                                z12 = true;
                                aVar = null;
                            }
                            boolean z14 = aVar == null;
                            if (z13 && z14) {
                                androidx.lifecycle.c.a(atomicReference, aVar2, null);
                            } else if (!z14) {
                                i10.h(aVar);
                            } else if (!z12) {
                                continue;
                            }
                        }
                        z12 = true;
                        if (!z12) {
                        }
                    }
                    return;
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
        }

        @Override
        public boolean d() {
            return this.f19693h;
        }

        @Override
        public void dispose() {
            if (this.f19693h) {
                return;
            }
            this.f19693h = true;
            this.f19694i.dispose();
            b();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19694i, cVar)) {
                this.f19694i = cVar;
                this.f19687b.e(this);
            }
        }

        public void f(a<T, R> aVar, Throwable th2) {
            if (aVar.f19681c != this.f19696k || !this.f19691f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f19690e) {
                this.f19694i.dispose();
            }
            aVar.f19684f = true;
            c();
        }

        @Override
        public void h(T t10) {
            a<T, R> aVar;
            long j10 = this.f19696k + 1;
            this.f19696k = j10;
            a<T, R> aVar2 = this.f19695j.get();
            if (aVar2 != null) {
                aVar2.b();
            }
            try {
                Be.G g10 = (Be.G) He.b.g(this.f19688c.apply(t10), "The ObservableSource returned is null");
                a aVar3 = new a(this, j10, this.f19689d);
                do {
                    aVar = this.f19695j.get();
                    if (aVar == f19686m) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f19695j, aVar, aVar3));
                g10.c(aVar3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19694i.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19692g || !this.f19691f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f19690e) {
                b();
            }
            this.f19692g = true;
            c();
        }
    }

    public C2900n1(Be.G<T> g10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar, int i10, boolean z10) {
        super(g10);
        this.f19676c = oVar;
        this.f19677d = i10;
        this.f19678e = z10;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        if (Y0.b(this.f19344b, i10, this.f19676c)) {
            return;
        }
        this.f19344b.c(new b(i10, this.f19676c, this.f19677d, this.f19678e));
    }
}
