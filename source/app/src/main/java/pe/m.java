package Pe;

import java.util.concurrent.Callable;

public final class m<T, R> extends Xe.b<R> {

    public final Xe.b<? extends T> f21393a;

    public final Callable<R> f21394b;

    public final Fe.c<R, ? super T, R> f21395c;

    public static final class a<T, R> extends Te.h<T, R> {

        public static final long f21396t = 8200530050639449080L;

        public final Fe.c<R, ? super T, R> f21397q;

        public R f21398r;

        public boolean f21399s;

        public a(hn.c<? super R> cVar, R r10, Fe.c<R, ? super T, R> cVar2) {
            super(cVar);
            this.f21398r = r10;
            this.f21397q = cVar2;
        }

        @Override
        public void a() {
            if (this.f21399s) {
                return;
            }
            this.f21399s = true;
            R r10 = this.f21398r;
            this.f21398r = null;
            d(r10);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f24856n.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f21399s) {
                return;
            }
            try {
                this.f21398r = (R) He.b.g(this.f21397q.apply(this.f21398r, t10), "The reducer returned a null value");
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f24856n, dVar)) {
                this.f24856n = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21399s) {
                Ye.a.Y(th2);
                return;
            }
            this.f21399s = true;
            this.f21398r = null;
            this.f26033c.onError(th2);
        }
    }

    public m(Xe.b<? extends T> bVar, Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        this.f21393a = bVar;
        this.f21394b = callable;
        this.f21395c = cVar;
    }

    @Override
    public int F() {
        return this.f21393a.F();
    }

    @Override
    public void Q(hn.c<? super R>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super Object>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    cVarArr2[i10] = new a(cVarArr[i10], He.b.g(this.f21394b.call(), "The initialSupplier returned a null value"), this.f21395c);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    V(cVarArr, th2);
                    return;
                }
            }
            this.f21393a.Q(cVarArr2);
        }
    }

    public void V(hn.c<?>[] cVarArr, Throwable th2) {
        for (hn.c<?> cVar : cVarArr) {
            Ue.g.b(th2, cVar);
        }
    }
}
