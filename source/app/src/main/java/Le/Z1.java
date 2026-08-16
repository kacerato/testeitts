package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class Z1<T, R> extends AbstractC2692a<T, R> {

    @Ce.g
    public final hn.b<?>[] f12490d;

    @Ce.g
    public final Iterable<? extends hn.b<?>> f12491e;

    public final Fe.o<? super Object[], R> f12492f;

    public final class a implements Fe.o<T, R> {
        public a() {
        }

        @Override
        public R apply(T t10) throws Exception {
            return (R) He.b.g(Z1.this.f12492f.apply(new Object[]{t10}), "The combiner returned a null value");
        }
    }

    public static final class b<T, R> extends AtomicInteger implements Ie.a<T>, hn.d {

        public static final long f12494j = 1577321883966341961L;

        public final hn.c<? super R> f12495b;

        public final Fe.o<? super Object[], R> f12496c;

        public final c[] f12497d;

        public final AtomicReferenceArray<Object> f12498e;

        public final AtomicReference<hn.d> f12499f;

        public final AtomicLong f12500g;

        public final io.reactivex.internal.util.c f12501h;

        public volatile boolean f12502i;

        public b(hn.c<? super R> cVar, Fe.o<? super Object[], R> oVar, int i10) {
            this.f12495b = cVar;
            this.f12496c = oVar;
            c[] cVarArr = new c[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                cVarArr[i11] = new c(this, i11);
            }
            this.f12497d = cVarArr;
            this.f12498e = new AtomicReferenceArray<>(i10);
            this.f12499f = new AtomicReference<>();
            this.f12500g = new AtomicLong();
            this.f12501h = new io.reactivex.internal.util.c();
        }

        @Override
        public void a() {
            if (this.f12502i) {
                return;
            }
            this.f12502i = true;
            b(-1);
            io.reactivex.internal.util.k.b(this.f12495b, this, this.f12501h);
        }

        public void b(int i10) {
            c[] cVarArr = this.f12497d;
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
            this.f12502i = true;
            Ue.j.a(this.f12499f);
            b(i10);
            io.reactivex.internal.util.k.b(this.f12495b, this, this.f12501h);
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f12499f);
            for (c cVar : this.f12497d) {
                cVar.b();
            }
        }

        public void d(int i10, Throwable th2) {
            this.f12502i = true;
            Ue.j.a(this.f12499f);
            b(i10);
            io.reactivex.internal.util.k.d(this.f12495b, th2, this, this.f12501h);
        }

        public void e(int i10, Object obj) {
            this.f12498e.set(i10, obj);
        }

        public void f(hn.b<?>[] bVarArr, int i10) {
            c[] cVarArr = this.f12497d;
            AtomicReference<hn.d> atomicReference = this.f12499f;
            for (int i11 = 0; i11 < i10 && atomicReference.get() != Ue.j.CANCELLED; i11++) {
                bVarArr[i11].l(cVarArr[i11]);
            }
        }

        @Override
        public void h(T t10) {
            if (u(t10) || this.f12502i) {
                return;
            }
            this.f12499f.get().i(1L);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f12499f, this.f12500g, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f12499f, this.f12500g, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12502i) {
                Ye.a.Y(th2);
                return;
            }
            this.f12502i = true;
            b(-1);
            io.reactivex.internal.util.k.d(this.f12495b, th2, this, this.f12501h);
        }

        @Override
        public boolean u(T t10) {
            if (this.f12502i) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f12498e;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            objArr[0] = t10;
            int i10 = 0;
            while (i10 < length) {
                Object obj = atomicReferenceArray.get(i10);
                if (obj == null) {
                    return false;
                }
                i10++;
                objArr[i10] = obj;
            }
            try {
                io.reactivex.internal.util.k.f(this.f12495b, He.b.g(this.f12496c.apply(objArr), "The combiner returned a null value"), this, this.f12501h);
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                onError(th2);
                return false;
            }
        }
    }

    public static final class c extends AtomicReference<hn.d> implements InterfaceC2367q<Object> {

        public static final long f12503e = 3256684027868224024L;

        public final b<?, ?> f12504b;

        public final int f12505c;

        public boolean f12506d;

        public c(b<?, ?> bVar, int i10) {
            this.f12504b = bVar;
            this.f12505c = i10;
        }

        @Override
        public void a() {
            this.f12504b.c(this.f12505c, this.f12506d);
        }

        public void b() {
            Ue.j.a(this);
        }

        @Override
        public void h(Object obj) {
            if (!this.f12506d) {
                this.f12506d = true;
            }
            this.f12504b.e(this.f12505c, obj);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12504b.d(this.f12505c, th2);
        }
    }

    public Z1(@Ce.f AbstractC2362l<T> abstractC2362l, @Ce.f hn.b<?>[] bVarArr, Fe.o<? super Object[], R> oVar) {
        super(abstractC2362l);
        this.f12490d = bVarArr;
        this.f12491e = null;
        this.f12492f = oVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        int length;
        hn.b<?>[] bVarArr = this.f12490d;
        if (bVarArr == null) {
            bVarArr = new hn.b[8];
            try {
                length = 0;
                for (hn.b<?> bVar : this.f12491e) {
                    if (length == bVarArr.length) {
                        bVarArr = (hn.b[]) Arrays.copyOf(bVarArr, (length >> 1) + length);
                    }
                    int i10 = length + 1;
                    bVarArr[length] = bVar;
                    length = i10;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ue.g.b(th2, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        if (length == 0) {
            new C0(this.f12507c, new a()).m6(cVar);
            return;
        }
        b bVar2 = new b(cVar, this.f12492f, length);
        cVar.j(bVar2);
        bVar2.f(bVarArr, length);
        this.f12507c.l6(bVar2);
    }

    public Z1(@Ce.f AbstractC2362l<T> abstractC2362l, @Ce.f Iterable<? extends hn.b<?>> iterable, @Ce.f Fe.o<? super Object[], R> oVar) {
        super(abstractC2362l);
        this.f12490d = null;
        this.f12491e = iterable;
        this.f12492f = oVar;
    }
}
