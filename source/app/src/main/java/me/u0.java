package Me;

import Be.AbstractC2368s;
import Me.W;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class u0<T, R> extends AbstractC2368s<R> {

    public final Be.y<? extends T>[] f15199b;

    public final Fe.o<? super Object[], ? extends R> f15200c;

    public final class a implements Fe.o<T, R> {
        public a() {
        }

        @Override
        public R apply(T t10) throws Exception {
            return (R) He.b.g(u0.this.f15200c.apply(new Object[]{t10}), "The zipper returned a null value");
        }
    }

    public static final class b<T, R> extends AtomicInteger implements De.c {

        public static final long f15202f = -5556924161382950569L;

        public final Be.v<? super R> f15203b;

        public final Fe.o<? super Object[], ? extends R> f15204c;

        public final c<T>[] f15205d;

        public final Object[] f15206e;

        public b(Be.v<? super R> vVar, int i10, Fe.o<? super Object[], ? extends R> oVar) {
            super(i10);
            this.f15203b = vVar;
            this.f15204c = oVar;
            c<T>[] cVarArr = new c[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                cVarArr[i11] = new c<>(this, i11);
            }
            this.f15205d = cVarArr;
            this.f15206e = new Object[i10];
        }

        public void a(int i10) {
            c<T>[] cVarArr = this.f15205d;
            int length = cVarArr.length;
            for (int i11 = 0; i11 < i10; i11++) {
                cVarArr[i11].c();
            }
            while (true) {
                i10++;
                if (i10 >= length) {
                    return;
                } else {
                    cVarArr[i10].c();
                }
            }
        }

        public void b(int i10) {
            if (getAndSet(0) > 0) {
                a(i10);
                this.f15203b.a();
            }
        }

        public void c(Throwable th2, int i10) {
            if (getAndSet(0) <= 0) {
                Ye.a.Y(th2);
            } else {
                a(i10);
                this.f15203b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return get() <= 0;
        }

        @Override
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.f15205d) {
                    cVar.c();
                }
            }
        }

        public void e(T t10, int i10) {
            this.f15206e[i10] = t10;
            if (decrementAndGet() == 0) {
                try {
                    this.f15203b.b(He.b.g(this.f15204c.apply(this.f15206e), "The zipper returned a null value"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f15203b.onError(th2);
                }
            }
        }
    }

    public static final class c<T> extends AtomicReference<De.c> implements Be.v<T> {

        public static final long f15207d = 3323743579927613702L;

        public final b<T, ?> f15208b;

        public final int f15209c;

        public c(b<T, ?> bVar, int i10) {
            this.f15208b = bVar;
            this.f15209c = i10;
        }

        @Override
        public void a() {
            this.f15208b.b(this.f15209c);
        }

        @Override
        public void b(T t10) {
            this.f15208b.e(t10, this.f15209c);
        }

        public void c() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15208b.c(th2, this.f15209c);
        }
    }

    public u0(Be.y<? extends T>[] yVarArr, Fe.o<? super Object[], ? extends R> oVar) {
        this.f15199b = yVarArr;
        this.f15200c = oVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        Be.y<? extends T>[] yVarArr = this.f15199b;
        int length = yVarArr.length;
        if (length == 1) {
            yVarArr[0].d(new W.a(vVar, new a()));
            return;
        }
        b bVar = new b(vVar, length, this.f15200c);
        vVar.e(bVar);
        for (int i10 = 0; i10 < length && !bVar.d(); i10++) {
            Be.y<? extends T> yVar = yVarArr[i10];
            if (yVar == null) {
                bVar.c(new NullPointerException("One of the sources is null"), i10);
                return;
            }
            yVar.d(bVar.f15205d[i10]);
        }
    }
}
