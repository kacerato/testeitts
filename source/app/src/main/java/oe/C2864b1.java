package Oe;

import java.util.concurrent.atomic.AtomicInteger;

public final class C2864b1<T> extends Be.B<Boolean> {

    public final Be.G<? extends T> f19388b;

    public final Be.G<? extends T> f19389c;

    public final Fe.d<? super T, ? super T> f19390d;

    public final int f19391e;

    public static final class a<T> extends AtomicInteger implements De.c {

        public static final long f19392k = -6178010334400373240L;

        public final Be.I<? super Boolean> f19393b;

        public final Fe.d<? super T, ? super T> f19394c;

        public final Ge.a f19395d;

        public final Be.G<? extends T> f19396e;

        public final Be.G<? extends T> f19397f;

        public final b<T>[] f19398g;

        public volatile boolean f19399h;

        public T f19400i;

        public T f19401j;

        public a(Be.I<? super Boolean> i10, int i11, Be.G<? extends T> g10, Be.G<? extends T> g11, Fe.d<? super T, ? super T> dVar) {
            this.f19393b = i10;
            this.f19396e = g10;
            this.f19397f = g11;
            this.f19394c = dVar;
            this.f19398g = r3;
            b<T>[] bVarArr = {new b<>(this, 0, i11), new b<>(this, 1, i11)};
            this.f19395d = new Ge.a(2);
        }

        public void a(Re.c<T> cVar, Re.c<T> cVar2) {
            this.f19399h = true;
            cVar.clear();
            cVar2.clear();
        }

        public void b() {
            Throwable th2;
            Throwable th3;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f19398g;
            b<T> bVar = bVarArr[0];
            Re.c<T> cVar = bVar.f19403c;
            b<T> bVar2 = bVarArr[1];
            Re.c<T> cVar2 = bVar2.f19403c;
            int i10 = 1;
            while (!this.f19399h) {
                boolean z10 = bVar.f19405e;
                if (z10 && (th3 = bVar.f19406f) != null) {
                    a(cVar, cVar2);
                    this.f19393b.onError(th3);
                    return;
                }
                boolean z11 = bVar2.f19405e;
                if (z11 && (th2 = bVar2.f19406f) != null) {
                    a(cVar, cVar2);
                    this.f19393b.onError(th2);
                    return;
                }
                if (this.f19400i == null) {
                    this.f19400i = cVar.poll();
                }
                boolean z12 = this.f19400i == null;
                if (this.f19401j == null) {
                    this.f19401j = cVar2.poll();
                }
                T t10 = this.f19401j;
                boolean z13 = t10 == null;
                if (z10 && z11 && z12 && z13) {
                    this.f19393b.h(Boolean.TRUE);
                    this.f19393b.a();
                    return;
                }
                if (z10 && z11 && z12 != z13) {
                    a(cVar, cVar2);
                    this.f19393b.h(Boolean.FALSE);
                    this.f19393b.a();
                    return;
                }
                if (!z12 && !z13) {
                    try {
                        if (!this.f19394c.test(this.f19400i, t10)) {
                            a(cVar, cVar2);
                            this.f19393b.h(Boolean.FALSE);
                            this.f19393b.a();
                            return;
                        }
                        this.f19400i = null;
                        this.f19401j = null;
                    } catch (Throwable th4) {
                        io.reactivex.exceptions.a.b(th4);
                        a(cVar, cVar2);
                        this.f19393b.onError(th4);
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
            return this.f19395d.b(i10, cVar);
        }

        @Override
        public boolean d() {
            return this.f19399h;
        }

        @Override
        public void dispose() {
            if (this.f19399h) {
                return;
            }
            this.f19399h = true;
            this.f19395d.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f19398g;
                bVarArr[0].f19403c.clear();
                bVarArr[1].f19403c.clear();
            }
        }

        public void e() {
            b<T>[] bVarArr = this.f19398g;
            this.f19396e.c(bVarArr[0]);
            this.f19397f.c(bVarArr[1]);
        }
    }

    public static final class b<T> implements Be.I<T> {

        public final a<T> f19402b;

        public final Re.c<T> f19403c;

        public final int f19404d;

        public volatile boolean f19405e;

        public Throwable f19406f;

        public b(a<T> aVar, int i10, int i11) {
            this.f19402b = aVar;
            this.f19404d = i10;
            this.f19403c = new Re.c<>(i11);
        }

        @Override
        public void a() {
            this.f19405e = true;
            this.f19402b.b();
        }

        @Override
        public void e(De.c cVar) {
            this.f19402b.c(cVar, this.f19404d);
        }

        @Override
        public void h(T t10) {
            this.f19403c.offer(t10);
            this.f19402b.b();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19406f = th2;
            this.f19405e = true;
            this.f19402b.b();
        }
    }

    public C2864b1(Be.G<? extends T> g10, Be.G<? extends T> g11, Fe.d<? super T, ? super T> dVar, int i10) {
        this.f19388b = g10;
        this.f19389c = g11;
        this.f19390d = dVar;
        this.f19391e = i10;
    }

    @Override
    public void J5(Be.I<? super Boolean> i10) {
        a aVar = new a(i10, this.f19391e, this.f19388b, this.f19389c, this.f19390d);
        i10.e(aVar);
        aVar.e();
    }
}
