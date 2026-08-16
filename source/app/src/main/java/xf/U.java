package Xf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class U<T, R> implements InterfaceC3312m<R> {

    @NotNull
    public final InterfaceC3312m<T> f28737a;

    @NotNull
    public final Mf.l<T, R> f28738b;

    public static final class a implements Iterator<R>, Nf.a {

        public final Iterator<T> f28739b;

        public final U<T, R> f28740c;

        public a(U<T, R> u10) {
            this.f28740c = u10;
            this.f28739b = u10.f28737a.iterator();
        }

        public final Iterator<T> a() {
            return this.f28739b;
        }

        @Override
        public boolean hasNext() {
            return this.f28739b.hasNext();
        }

        @Override
        public R next() {
            return (R) this.f28740c.f28738b.invoke(this.f28739b.next());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public U(@NotNull InterfaceC3312m<? extends T> sequence, @NotNull Mf.l<? super T, ? extends R> transformer) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        kotlin.jvm.internal.M.p(transformer, "transformer");
        this.f28737a = sequence;
        this.f28738b = transformer;
    }

    @NotNull
    public final <E> InterfaceC3312m<E> e(@NotNull Mf.l<? super R, ? extends Iterator<? extends E>> iterator) {
        kotlin.jvm.internal.M.p(iterator, "iterator");
        return new C3308i(this.f28737a, this.f28738b, iterator);
    }

    @Override
    @NotNull
    public Iterator<R> iterator() {
        return new a(this);
    }
}
