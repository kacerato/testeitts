package Pe;

public final class g<T> extends Xe.b<T> {

    public final hn.b<T>[] f21316a;

    public g(hn.b<T>[] bVarArr) {
        this.f21316a = bVarArr;
    }

    @Override
    public int F() {
        return this.f21316a.length;
    }

    @Override
    public void Q(hn.c<? super T>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.f21316a[i10].l(cVarArr[i10]);
            }
        }
    }
}
