package Le;

import Be.AbstractC2362l;

public abstract class AbstractC2692a<T, R> extends AbstractC2362l<R> implements Ie.h<T> {

    public final AbstractC2362l<T> f12507c;

    public AbstractC2692a(AbstractC2362l<T> abstractC2362l) {
        this.f12507c = (AbstractC2362l) He.b.g(abstractC2362l, "source is null");
    }

    @Override
    public final hn.b<T> source() {
        return this.f12507c;
    }
}
