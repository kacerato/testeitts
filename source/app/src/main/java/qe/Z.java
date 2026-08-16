package Qe;

import Qe.K;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class Z<T, R> extends Be.K<R> {

    public final Be.Q<? extends T>[] f22184b;

    public final Fe.o<? super Object[], ? extends R> f22185c;

    public final class a implements Fe.o<T, R> {
        public a() {
        }

        @Override
        public R apply(T t10) throws Exception {
            return (R) He.b.g(Z.this.f22185c.apply(new Object[]{t10}), "The zipper returned a null value");
        }
    }

    public static final class b<T, R> extends AtomicInteger implements De.c {

        public static final long f22187f = -5556924161382950569L;

        public final Be.N<? super R> f22188b;

        public final Fe.o<? super Object[], ? extends R> f22189c;

        public final c<T>[] f22190d;

        public final Object[] f22191e;

        public b(Be.N<? super R> n10, int i10, Fe.o<? super Object[], ? extends R> oVar) {
            super(i10);
            this.f22188b = n10;
            this.f22189c = oVar;
            c<T>[] cVarArr = new c[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                cVarArr[i11] = new c<>(this, i11);
            }
            this.f22190d = cVarArr;
            this.f22191e = new Object[i10];
        }

        public void a(int i10) {
            c<T>[] cVarArr = this.f22190d;
            int length = cVarArr.length;
            for (int i11 = 0; i11 < i10; i11++) {
                cVarArr[i11].a();
            }
            while (true) {
                i10++;
                if (i10 >= length) {
                    return;
                } else {
                    cVarArr[i10].a();
                }
            }
        }

        public void b(Throwable th2, int i10) {
            if (getAndSet(0) <= 0) {
                Ye.a.Y(th2);
            } else {
                a(i10);
                this.f22188b.onError(th2);
            }
        }

        public void c(T t10, int i10) {
            this.f22191e[i10] = t10;
            if (decrementAndGet() == 0) {
                try {
                    this.f22188b.b(He.b.g(this.f22189c.apply(this.f22191e), "The zipper returned a null value"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f22188b.onError(th2);
                }
            }
        }

        @Override
        public boolean d() {
            return get() <= 0;
        }

        @Override
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.f22190d) {
                    cVar.a();
                }
            }
        }
    }

    public static final class c<T> extends AtomicReference<De.c> implements Be.N<T> {

        public static final long f22192d = 3323743579927613702L;

        public final b<T, ?> f22193b;

        public final int f22194c;

        public c(b<T, ?> bVar, int i10) {
            this.f22193b = bVar;
            this.f22194c = i10;
        }

        public void a() {
            Ge.d.a(this);
        }

        @Override
        public void b(T t10) {
            this.f22193b.c(t10, this.f22194c);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22193b.b(th2, this.f22194c);
        }
    }

    public Z(Be.Q<? extends T>[] qArr, Fe.o<? super Object[], ? extends R> oVar) {
        this.f22184b = qArr;
        this.f22185c = oVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        Be.Q<? extends T>[] qArr = this.f22184b;
        int length = qArr.length;
        if (length == 1) {
            qArr[0].a(new K.a(n10, new a()));
            return;
        }
        b bVar = new b(n10, length, this.f22185c);
        n10.e(bVar);
        for (int i10 = 0; i10 < length && !bVar.d(); i10++) {
            Be.Q<? extends T> q10 = qArr[i10];
            if (q10 == null) {
                bVar.b(new NullPointerException("One of the sources is null"), i10);
                return;
            }
            q10.a(bVar.f22190d[i10]);
        }
    }
}
