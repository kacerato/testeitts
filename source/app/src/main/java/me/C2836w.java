package Me;

import Be.AbstractC2368s;

public final class C2836w<T> extends AbstractC2368s<T> {

    public final Throwable f15223b;

    public C2836w(Throwable th2) {
        this.f15223b = th2;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        vVar.e(De.d.a());
        vVar.onError(this.f15223b);
    }
}
