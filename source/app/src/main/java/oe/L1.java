package Oe;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class L1<T, R> extends AbstractC2859a<T, R> {

    @Ce.g
    public final Be.G<?>[] f19032c;

    @Ce.g
    public final Iterable<? extends Be.G<?>> f19033d;

    @Ce.f
    public final Fe.o<? super Object[], R> f19034e;

    public final class a implements Fe.o<T, R> {
        public a() {
        }

        @Override
        public R apply(T t10) throws Exception {
            return (R) He.b.g(L1.this.f19034e.apply(new Object[]{t10}), "The combiner returned a null value");
        }
    }

    public static final class b<T, R> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19036i = 1577321883966341961L;

        public final Be.I<? super R> f19037b;

        public final Fe.o<? super Object[], R> f19038c;

        public final c[] f19039d;

        public final AtomicReferenceArray<Object> f19040e;

        public final AtomicReference<De.c> f19041f;

        public final io.reactivex.internal.util.c f19042g;

        public volatile boolean f19043h;

        public b(Be.I<? super R> i10, Fe.o<? super Object[], R> oVar, int i11) {
            this.f19037b = i10;
            this.f19038c = oVar;
            c[] cVarArr = new c[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                cVarArr[i12] = new c(this, i12);
            }
            this.f19039d = cVarArr;
            this.f19040e = new AtomicReferenceArray<>(i11);
            this.f19041f = new AtomicReference<>();
            this.f19042g = new io.reactivex.internal.util.c();
        }

        @Override
        public void a() {
            if (this.f19043h) {
                return;
            }
            this.f19043h = true;
            b(-1);
            io.reactivex.internal.util.k.a(this.f19037b, this, this.f19042g);
        }

        public void b(int i10) {
            c[] cVarArr = this.f19039d;
            for (int i11 = 0; i11 < cVarArr.length; i11++) {
                if (i11 != i10) {
                    cVarArr[i11].b();
                }
            }
        }

        public void c(int i10, boolean z10) {
            if (z10) {
                return;
            }
            this.f19043h = true;
            b(i10);
            io.reactivex.internal.util.k.a(this.f19037b, this, this.f19042g);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f19041f.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19041f);
            for (c cVar : this.f19039d) {
                cVar.b();
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f19041f, cVar);
        }

        public void f(int i10, Throwable th2) {
            this.f19043h = true;
            Ge.d.a(this.f19041f);
            b(i10);
            io.reactivex.internal.util.k.c(this.f19037b, th2, this, this.f19042g);
        }

        public void g(int i10, Object obj) {
            this.f19040e.set(i10, obj);
        }

        @Override
        public void h(T t10) {
            if (this.f19043h) {
                return;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f19040e;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            int i10 = 0;
            objArr[0] = t10;
            while (i10 < length) {
                Object obj = atomicReferenceArray.get(i10);
                if (obj == null) {
                    return;
                }
                i10++;
                objArr[i10] = obj;
            }
            try {
                io.reactivex.internal.util.k.e(this.f19037b, He.b.g(this.f19038c.apply(objArr), "combiner returned a null value"), this, this.f19042g);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                onError(th2);
            }
        }

        public void i(Be.G<?>[] gArr, int i10) {
            c[] cVarArr = this.f19039d;
            AtomicReference<De.c> atomicReference = this.f19041f;
            for (int i11 = 0; i11 < i10 && !Ge.d.b(atomicReference.get()) && !this.f19043h; i11++) {
                gArr[i11].c(cVarArr[i11]);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19043h) {
                Ye.a.Y(th2);
                return;
            }
            this.f19043h = true;
            b(-1);
            io.reactivex.internal.util.k.c(this.f19037b, th2, this, this.f19042g);
        }
    }

    public static final class c extends AtomicReference<De.c> implements Be.I<Object> {

        public static final long f19044e = 3256684027868224024L;

        public final b<?, ?> f19045b;

        public final int f19046c;

        public boolean f19047d;

        public c(b<?, ?> bVar, int i10) {
            this.f19045b = bVar;
            this.f19046c = i10;
        }

        @Override
        public void a() {
            this.f19045b.c(this.f19046c, this.f19047d);
        }

        public void b() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void h(Object obj) {
            if (!this.f19047d) {
                this.f19047d = true;
            }
            this.f19045b.g(this.f19046c, obj);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19045b.f(this.f19046c, th2);
        }
    }

    public L1(@Ce.f Be.G<T> g10, @Ce.f Be.G<?>[] gArr, @Ce.f Fe.o<? super Object[], R> oVar) {
        super(g10);
        this.f19032c = gArr;
        this.f19033d = null;
        this.f19034e = oVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        int length;
        Be.G<?>[] gArr = this.f19032c;
        if (gArr == null) {
            gArr = new Be.G[8];
            try {
                length = 0;
                for (Be.G<?> g10 : this.f19033d) {
                    if (length == gArr.length) {
                        gArr = (Be.G[]) Arrays.copyOf(gArr, (length >> 1) + length);
                    }
                    int i11 = length + 1;
                    gArr[length] = g10;
                    length = i11;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.h(th2, i10);
                return;
            }
        } else {
            length = gArr.length;
        }
        if (length == 0) {
            new C2920x0(this.f19344b, new a()).J5(i10);
            return;
        }
        b bVar = new b(i10, this.f19034e, length);
        i10.e(bVar);
        bVar.i(gArr, length);
        this.f19344b.c(bVar);
    }

    public L1(@Ce.f Be.G<T> g10, @Ce.f Iterable<? extends Be.G<?>> iterable, @Ce.f Fe.o<? super Object[], R> oVar) {
        super(g10);
        this.f19032c = null;
        this.f19033d = iterable;
        this.f19034e = oVar;
    }
}
