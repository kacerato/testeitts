package pf;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.jetbrains.annotations.NotNull;

public class v0<T> extends AbstractC14967d<T> {

    @NotNull
    public final List<T> f103895d;

    public static final class a implements ListIterator<T>, Nf.a {

        public final ListIterator<T> f103896b;

        public final v0<T> f103897c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(v0<? extends T> v0Var, int i10) {
            int g12;
            this.f103897c = v0Var;
            List list = v0Var.f103895d;
            g12 = N.g1(v0Var, i10);
            this.f103896b = list.listIterator(g12);
        }

        public final ListIterator<T> a() {
            return this.f103896b;
        }

        @Override
        public void add(T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public boolean hasNext() {
            return this.f103896b.hasPrevious();
        }

        @Override
        public boolean hasPrevious() {
            return this.f103896b.hasNext();
        }

        @Override
        public T next() {
            return this.f103896b.previous();
        }

        @Override
        public int nextIndex() {
            int f12;
            f12 = N.f1(this.f103897c, this.f103896b.previousIndex());
            return f12;
        }

        @Override
        public T previous() {
            return this.f103896b.next();
        }

        @Override
        public int previousIndex() {
            int f12;
            f12 = N.f1(this.f103897c, this.f103896b.nextIndex());
            return f12;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public void set(T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v0(@NotNull List<? extends T> delegate) {
        kotlin.jvm.internal.M.p(delegate, "delegate");
        this.f103895d = delegate;
    }

    @Override
    public int b() {
        return this.f103895d.size();
    }

    @Override
    public T get(int i10) {
        int e12;
        List<T> list = this.f103895d;
        e12 = N.e1(this, i10);
        return list.get(e12);
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return listIterator(0);
    }

    @Override
    @NotNull
    public ListIterator<T> listIterator() {
        return listIterator(0);
    }

    @Override
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new a(this, i10);
    }
}
