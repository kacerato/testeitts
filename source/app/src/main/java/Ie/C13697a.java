package ie;

import he.k0;

public final class C13697a<T> implements k0<T> {

    public final T[] f92056a;

    public int f92057b = 0;

    public C13697a(T[] tArr) {
        this.f92056a = tArr;
    }

    @Override
    public final boolean a(T t10) {
        T[] tArr = this.f92056a;
        int i10 = this.f92057b;
        this.f92057b = i10 + 1;
        tArr[i10] = t10;
        return true;
    }
}
