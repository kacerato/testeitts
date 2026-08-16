package Pe;

import Le.C2757w;

public final class b<T, R> extends Xe.b<R> {

    public final Xe.b<T> f21276a;

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f21277b;

    public final int f21278c;

    public final io.reactivex.internal.util.j f21279d;

    public b(Xe.b<T> bVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, io.reactivex.internal.util.j jVar) {
        this.f21276a = bVar;
        this.f21277b = (Fe.o) He.b.g(oVar, "mapper");
        this.f21278c = i10;
        this.f21279d = (io.reactivex.internal.util.j) He.b.g(jVar, "errorMode");
    }

    @Override
    public int F() {
        return this.f21276a.F();
    }

    @Override
    public void Q(hn.c<? super R>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                cVarArr2[i10] = C2757w.O8(cVarArr[i10], this.f21277b, this.f21278c, this.f21279d);
            }
            this.f21276a.Q(cVarArr2);
        }
    }
}
