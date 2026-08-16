package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Le.C0;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2751u<T, R> extends AbstractC2362l<R> {

    @Ce.g
    public final hn.b<? extends T>[] f13220c;

    @Ce.g
    public final Iterable<? extends hn.b<? extends T>> f13221d;

    public final Fe.o<? super Object[], ? extends R> f13222e;

    public final int f13223f;

    public final boolean f13224g;

    public static final class a<T, R> extends Ue.c<R> {

        public static final long f13225p = -5082275438355852221L;

        public final hn.c<? super R> f13226c;

        public final Fe.o<? super Object[], ? extends R> f13227d;

        public final b<T>[] f13228e;

        public final Re.c<Object> f13229f;

        public final Object[] f13230g;

        public final boolean f13231h;

        public boolean f13232i;

        public int f13233j;

        public int f13234k;

        public volatile boolean f13235l;

        public final AtomicLong f13236m;

        public volatile boolean f13237n;

        public final AtomicReference<Throwable> f13238o;

        public a(hn.c<? super R> cVar, Fe.o<? super Object[], ? extends R> oVar, int i10, int i11, boolean z10) {
            this.f13226c = cVar;
            this.f13227d = oVar;
            b<T>[] bVarArr = new b[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                bVarArr[i12] = new b<>(this, i12, i11);
            }
            this.f13228e = bVarArr;
            this.f13230g = new Object[i10];
            this.f13229f = new Re.c<>(i11);
            this.f13236m = new AtomicLong();
            this.f13238o = new AtomicReference<>();
            this.f13231h = z10;
        }

        @Override
        public void cancel() {
            this.f13235l = true;
            d();
        }

        @Override
        public void clear() {
            this.f13229f.clear();
        }

        public void d() {
            for (b<T> bVar : this.f13228e) {
                bVar.b();
            }
        }

        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f13232i) {
                q();
            } else {
                p();
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f13236m, j10);
                f();
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f13229f.isEmpty();
        }

        @Override
        public int m(int i10) {
            if ((i10 & 4) != 0) {
                return 0;
            }
            int i11 = i10 & 2;
            this.f13232i = i11 != 0;
            return i11;
        }

        public boolean n(boolean z10, boolean z11, hn.c<?> cVar, Re.c<?> cVar2) {
            if (this.f13235l) {
                d();
                cVar2.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (this.f13231h) {
                if (!z11) {
                    return false;
                }
                d();
                Throwable c10 = ExceptionHelper.c(this.f13238o);
                if (c10 == null || c10 == ExceptionHelper.f92434a) {
                    cVar.a();
                } else {
                    cVar.onError(c10);
                }
                return true;
            }
            Throwable c11 = ExceptionHelper.c(this.f13238o);
            if (c11 != null && c11 != ExceptionHelper.f92434a) {
                d();
                cVar2.clear();
                cVar.onError(c11);
                return true;
            }
            if (!z11) {
                return false;
            }
            d();
            cVar.a();
            return true;
        }

        public void p() {
            hn.c<? super R> cVar = this.f13226c;
            Re.c<?> cVar2 = this.f13229f;
            int i10 = 1;
            do {
                long j10 = this.f13236m.get();
                long j11 = 0;
                while (j11 != j10) {
                    boolean z10 = this.f13237n;
                    Object poll = cVar2.poll();
                    boolean z11 = poll == null;
                    if (n(z10, z11, cVar, cVar2)) {
                        return;
                    }
                    if (z11) {
                        break;
                    }
                    try {
                        cVar.h((Object) He.b.g(this.f13227d.apply((Object[]) cVar2.poll()), "The combiner returned a null value"));
                        ((b) poll).c();
                        j11++;
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        d();
                        ExceptionHelper.a(this.f13238o, th2);
                        cVar.onError(ExceptionHelper.c(this.f13238o));
                        return;
                    }
                }
                if (j11 == j10 && n(this.f13237n, cVar2.isEmpty(), cVar, cVar2)) {
                    return;
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f13236m.addAndGet(-j11);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        @Ce.g
        public R poll() throws Exception {
            Object poll = this.f13229f.poll();
            if (poll == null) {
                return null;
            }
            R r10 = (R) He.b.g(this.f13227d.apply((Object[]) this.f13229f.poll()), "The combiner returned a null value");
            ((b) poll).c();
            return r10;
        }

        public void q() {
            hn.c<? super R> cVar = this.f13226c;
            Re.c<Object> cVar2 = this.f13229f;
            int i10 = 1;
            while (!this.f13235l) {
                Throwable th2 = this.f13238o.get();
                if (th2 != null) {
                    cVar2.clear();
                    cVar.onError(th2);
                    return;
                }
                boolean z10 = this.f13237n;
                boolean isEmpty = cVar2.isEmpty();
                if (!isEmpty) {
                    cVar.h(null);
                }
                if (z10 && isEmpty) {
                    cVar.a();
                    return;
                } else {
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
            cVar2.clear();
        }

        public void v(int i10) {
            synchronized (this) {
                try {
                    Object[] objArr = this.f13230g;
                    if (objArr[i10] != null) {
                        int i11 = this.f13234k + 1;
                        if (i11 != objArr.length) {
                            this.f13234k = i11;
                            return;
                        }
                        this.f13237n = true;
                    } else {
                        this.f13237n = true;
                    }
                    f();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void w(int i10, Throwable th2) {
            if (!ExceptionHelper.a(this.f13238o, th2)) {
                Ye.a.Y(th2);
            } else {
                if (this.f13231h) {
                    v(i10);
                    return;
                }
                d();
                this.f13237n = true;
                f();
            }
        }

        public void x(int i10, T t10) {
            boolean z10;
            synchronized (this) {
                try {
                    Object[] objArr = this.f13230g;
                    int i11 = this.f13233j;
                    if (objArr[i10] == null) {
                        i11++;
                        this.f13233j = i11;
                    }
                    objArr[i10] = t10;
                    if (objArr.length == i11) {
                        this.f13229f.o(this.f13228e[i10], objArr.clone());
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z10) {
                this.f13228e[i10].c();
            } else {
                f();
            }
        }

        public void y(hn.b<? extends T>[] bVarArr, int i10) {
            b<T>[] bVarArr2 = this.f13228e;
            for (int i11 = 0; i11 < i10 && !this.f13237n && !this.f13235l; i11++) {
                bVarArr[i11].l(bVarArr2[i11]);
            }
        }
    }

    public static final class b<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T> {

        public static final long f13239g = -8730235182291002949L;

        public final a<T, ?> f13240b;

        public final int f13241c;

        public final int f13242d;

        public final int f13243e;

        public int f13244f;

        public b(a<T, ?> aVar, int i10, int i11) {
            this.f13240b = aVar;
            this.f13241c = i10;
            this.f13242d = i11;
            this.f13243e = i11 - (i11 >> 2);
        }

        @Override
        public void a() {
            this.f13240b.v(this.f13241c);
        }

        public void b() {
            Ue.j.a(this);
        }

        public void c() {
            int i10 = this.f13244f + 1;
            if (i10 != this.f13243e) {
                this.f13244f = i10;
            } else {
                this.f13244f = 0;
                get().i(i10);
            }
        }

        @Override
        public void h(T t10) {
            this.f13240b.x(this.f13241c, t10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, this.f13242d);
        }

        @Override
        public void onError(Throwable th2) {
            this.f13240b.w(this.f13241c, th2);
        }
    }

    public final class c implements Fe.o<T, R> {
        public c() {
        }

        @Override
        public R apply(T t10) throws Exception {
            return C2751u.this.f13222e.apply(new Object[]{t10});
        }
    }

    public C2751u(@Ce.f hn.b<? extends T>[] bVarArr, @Ce.f Fe.o<? super Object[], ? extends R> oVar, int i10, boolean z10) {
        this.f13220c = bVarArr;
        this.f13221d = null;
        this.f13222e = oVar;
        this.f13223f = i10;
        this.f13224g = z10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        int length;
        hn.b<? extends T>[] bVarArr = this.f13220c;
        if (bVarArr == null) {
            bVarArr = new hn.b[8];
            try {
                Iterator it = (Iterator) He.b.g(this.f13221d.iterator(), "The iterator returned is null");
                length = 0;
                while (it.hasNext()) {
                    try {
                        try {
                            hn.b<? extends T> bVar = (hn.b) He.b.g(it.next(), "The publisher returned by the iterator is null");
                            if (length == bVarArr.length) {
                                hn.b<? extends T>[] bVarArr2 = new hn.b[(length >> 2) + length];
                                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                                bVarArr = bVarArr2;
                            }
                            bVarArr[length] = bVar;
                            length++;
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            Ue.g.b(th2, cVar);
                            return;
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        Ue.g.b(th3, cVar);
                        return;
                    }
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                Ue.g.b(th4, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        int i10 = length;
        if (i10 == 0) {
            Ue.g.a(cVar);
        } else {
            if (i10 == 1) {
                bVarArr[0].l(new C0.b(cVar, new c()));
                return;
            }
            a aVar = new a(cVar, this.f13222e, i10, this.f13223f, this.f13224g);
            cVar.j(aVar);
            aVar.y(bVarArr, i10);
        }
    }

    public C2751u(@Ce.f Iterable<? extends hn.b<? extends T>> iterable, @Ce.f Fe.o<? super Object[], ? extends R> oVar, int i10, boolean z10) {
        this.f13220c = null;
        this.f13221d = iterable;
        this.f13222e = oVar;
        this.f13223f = i10;
        this.f13224g = z10;
    }
}
