package Oe;

import Oe.Y0;

public final class C2912t0<T> extends Be.B<T> implements Ie.m<T> {

    public final T f19892b;

    public C2912t0(T t10) {
        this.f19892b = t10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        Y0.a aVar = new Y0.a(i10, this.f19892b);
        i10.e(aVar);
        aVar.run();
    }

    @Override
    public T call() {
        return this.f19892b;
    }
}
