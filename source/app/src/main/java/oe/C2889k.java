package Oe;

import java.util.concurrent.atomic.AtomicInteger;

public final class C2889k<T> extends Be.B<T> {

    public final Ve.a<? extends T> f19560b;

    public final int f19561c;

    public final Fe.g<? super De.c> f19562d;

    public final AtomicInteger f19563e = new AtomicInteger();

    public C2889k(Ve.a<? extends T> aVar, int i10, Fe.g<? super De.c> gVar) {
        this.f19560b = aVar;
        this.f19561c = i10;
        this.f19562d = gVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19560b.c(i10);
        if (this.f19563e.incrementAndGet() == this.f19561c) {
            this.f19560b.n8(this.f19562d);
        }
    }
}
