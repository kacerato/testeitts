package Qe;

import Be.AbstractC2362l;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;

public final class H {

    public enum a implements Callable<NoSuchElementException> {
        INSTANCE;

        @Override
        public NoSuchElementException call() throws Exception {
            return new NoSuchElementException();
        }
    }

    public enum b implements Fe.o<Be.Q, hn.b> {
        INSTANCE;

        @Override
        public hn.b apply(Be.Q q10) {
            return new V(q10);
        }
    }

    public static final class c<T> implements Iterable<AbstractC2362l<T>> {

        public final Iterable<? extends Be.Q<? extends T>> f22103b;

        public c(Iterable<? extends Be.Q<? extends T>> iterable) {
            this.f22103b = iterable;
        }

        @Override
        public Iterator<AbstractC2362l<T>> iterator() {
            return new d(this.f22103b.iterator());
        }
    }

    public static final class d<T> implements Iterator<AbstractC2362l<T>> {

        public final Iterator<? extends Be.Q<? extends T>> f22104b;

        public d(Iterator<? extends Be.Q<? extends T>> it) {
            this.f22104b = it;
        }

        @Override
        public AbstractC2362l<T> next() {
            return new V(this.f22104b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f22104b.hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public enum e implements Fe.o<Be.Q, Be.B> {
        INSTANCE;

        @Override
        public Be.B apply(Be.Q q10) {
            return new W(q10);
        }
    }

    public H() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Callable<NoSuchElementException> a() {
        return a.INSTANCE;
    }

    public static <T> Iterable<? extends AbstractC2362l<T>> b(Iterable<? extends Be.Q<? extends T>> iterable) {
        return new c(iterable);
    }

    public static <T> Fe.o<Be.Q<? extends T>, hn.b<? extends T>> c() {
        return b.INSTANCE;
    }

    public static <T> Fe.o<Be.Q<? extends T>, Be.B<? extends T>> d() {
        return e.INSTANCE;
    }
}
