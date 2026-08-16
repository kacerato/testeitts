package Pe;

import Le.C2693a0;

public final class f<T, R> extends Xe.b<R> {

    public final Xe.b<T> f21311a;

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f21312b;

    public final boolean f21313c;

    public final int f21314d;

    public final int f21315e;

    public f(Xe.b<T> bVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10, int i10, int i11) {
        this.f21311a = bVar;
        this.f21312b = oVar;
        this.f21313c = z10;
        this.f21314d = i10;
        this.f21315e = i11;
    }

    @Override
    public int F() {
        return this.f21311a.F();
    }

    @Override
    public void Q(hn.c<? super R>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                cVarArr2[i10] = C2693a0.O8(cVarArr[i10], this.f21312b, this.f21313c, this.f21314d, this.f21315e);
            }
            this.f21311a.Q(cVarArr2);
        }
    }
}
