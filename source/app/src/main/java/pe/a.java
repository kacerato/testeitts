package Pe;

import java.util.concurrent.Callable;

public final class a<T, C> extends Xe.b<C> {

    public final Xe.b<? extends T> f21269a;

    public final Callable<? extends C> f21270b;

    public final Fe.b<? super C, ? super T> f21271c;

    public static final class C0519a<T, C> extends Te.h<T, C> {

        public static final long f21272t = -4767392946044436228L;

        public final Fe.b<? super C, ? super T> f21273q;

        public C f21274r;

        public boolean f21275s;

        public C0519a(hn.c<? super C> cVar, C c10, Fe.b<? super C, ? super T> bVar) {
            super(cVar);
            this.f21274r = c10;
            this.f21273q = bVar;
        }

        @Override
        public void a() {
            if (this.f21275s) {
                return;
            }
            this.f21275s = true;
            C c10 = this.f21274r;
            this.f21274r = null;
            d(c10);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f24856n.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f21275s) {
                return;
            }
            try {
                this.f21273q.accept(this.f21274r, t10);
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
            if (this.f21275s) {
                Ye.a.Y(th2);
                return;
            }
            this.f21275s = true;
            this.f21274r = null;
            this.f26033c.onError(th2);
        }
    }

    public a(Xe.b<? extends T> bVar, Callable<? extends C> callable, Fe.b<? super C, ? super T> bVar2) {
        this.f21269a = bVar;
        this.f21270b = callable;
        this.f21271c = bVar2;
    }

    @Override
    public int F() {
        return this.f21269a.F();
    }

    @Override
    public void Q(hn.c<? super C>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super Object>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    cVarArr2[i10] = new C0519a(cVarArr[i10], He.b.g(this.f21270b.call(), "The initialSupplier returned a null value"), this.f21271c);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    V(cVarArr, th2);
                    return;
                }
            }
            this.f21269a.Q(cVarArr2);
        }
    }

    public void V(hn.c<?>[] cVarArr, Throwable th2) {
        for (hn.c<?> cVar : cVarArr) {
            Ue.g.b(th2, cVar);
        }
    }
}
