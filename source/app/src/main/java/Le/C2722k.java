package Le;

import Be.AbstractC2362l;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2722k<T> extends AbstractC2362l<T> {

    public final Ee.a<? extends T> f12873c;

    public final int f12874d;

    public final Fe.g<? super De.c> f12875e;

    public final AtomicInteger f12876f = new AtomicInteger();

    public C2722k(Ee.a<? extends T> aVar, int i10, Fe.g<? super De.c> gVar) {
        this.f12873c = aVar;
        this.f12874d = i10;
        this.f12875e = gVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12873c.l(cVar);
        if (this.f12876f.incrementAndGet() == this.f12874d) {
            this.f12873c.S8(this.f12875e);
        }
    }
}
