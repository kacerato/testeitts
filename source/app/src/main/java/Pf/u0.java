package pf;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.jetbrains.annotations.NotNull;

public final class u0<T> extends AbstractC14975h<T> {

    @NotNull
    public final List<T> f103891b;

    public static final class a implements ListIterator<T>, Nf.f {

        public final ListIterator<T> f103892b;

        public final u0<T> f103893c;

        public a(u0<T> u0Var, int i10) {
            int g12;
            this.f103893c = u0Var;
            List list = u0Var.f103891b;
            g12 = N.g1(u0Var, i10);
            this.f103892b = list.listIterator(g12);
        }

        public final ListIterator<T> a() {
            return this.f103892b;
        }

        @Override
        public void add(T t10) {
            this.f103892b.add(t10);
            this.f103892b.previous();
        }

        @Override
        public boolean hasNext() {
            return this.f103892b.hasPrevious();
        }

        @Override
        public boolean hasPrevious() {
            return this.f103892b.hasNext();
        }

        @Override
        public T next() {
            return this.f103892b.previous();
        }

        @Override
        public int nextIndex() {
            int f12;
            f12 = N.f1(this.f103893c, this.f103892b.previousIndex());
            return f12;
        }

        @Override
        public T previous() {
            return this.f103892b.next();
        }

        @Override
        public int previousIndex() {
            int f12;
            f12 = N.f1(this.f103893c, this.f103892b.nextIndex());
            return f12;
        }

        @Override
        public void remove() {
            this.f103892b.remove();
        }

        @Override
        public void set(T t10) {
            this.f103892b.set(t10);
        }
    }

    public u0(@NotNull List<T> delegate) {
        kotlin.jvm.internal.M.p(delegate, "delegate");
        this.f103891b = delegate;
    }

    @Override
    public int a() {
        return this.f103891b.size();
    }

    @Override
    public void add(int i10, T t10) {
        int g12;
        List<T> list = this.f103891b;
        g12 = N.g1(this, i10);
        list.add(g12, t10);
    }

    @Override
    public void clear() {
        this.f103891b.clear();
    }

    @Override
    public T get(int i10) {
        int e12;
        List<T> list = this.f103891b;
        e12 = N.e1(this, i10);
        return list.get(e12);
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return listIterator(0);
    }

    @Override
    public T j(int i10) {
        int e12;
        List<T> list = this.f103891b;
        e12 = N.e1(this, i10);
        return list.remove(e12);
    }

    @Override
    @NotNull
    public ListIterator<T> listIterator() {
        return listIterator(0);
    }

    @Override
    public T set(int i10, T t10) {
        int e12;
        List<T> list = this.f103891b;
        e12 = N.e1(this, i10);
        return list.set(e12, t10);
    }

    @Override
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new a(this, i10);
    }
}
