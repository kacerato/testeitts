package Xf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C3308i<T, R, E> implements InterfaceC3312m<E> {

    @NotNull
    public final InterfaceC3312m<T> f28765a;

    @NotNull
    public final Mf.l<T, R> f28766b;

    @NotNull
    public final Mf.l<R, Iterator<E>> f28767c;

    public static final class a {

        @NotNull
        public static final a f28768a = new a();

        public static final int f28769b = 0;

        public static final int f28770c = 1;

        public static final int f28771d = 2;
    }

    public static final class b implements Iterator<E>, Nf.a {

        public final Iterator<T> f28772b;

        public Iterator<? extends E> f28773c;

        public int f28774d;

        public final C3308i<T, R, E> f28775e;

        public b(C3308i<T, R, E> c3308i) {
            this.f28775e = c3308i;
            this.f28772b = c3308i.f28765a.iterator();
        }

        public final boolean a() {
            Iterator<? extends E> it = this.f28773c;
            if (it != null && it.hasNext()) {
                this.f28774d = 1;
                return true;
            }
            while (this.f28772b.hasNext()) {
                Iterator<? extends E> it2 = (Iterator) this.f28775e.f28767c.invoke(this.f28775e.f28766b.invoke(this.f28772b.next()));
                if (it2.hasNext()) {
                    this.f28773c = it2;
                    this.f28774d = 1;
                    return true;
                }
            }
            this.f28774d = 2;
            this.f28773c = null;
            return false;
        }

        public final Iterator<E> b() {
            return this.f28773c;
        }

        public final Iterator<T> d() {
            return this.f28772b;
        }

        public final int e() {
            return this.f28774d;
        }

        public final void f(Iterator<? extends E> it) {
            this.f28773c = it;
        }

        public final void g(int i10) {
            this.f28774d = i10;
        }

        @Override
        public boolean hasNext() {
            int i10 = this.f28774d;
            if (i10 == 1) {
                return true;
            }
            if (i10 == 2) {
                return false;
            }
            return a();
        }

        @Override
        public E next() {
            int i10 = this.f28774d;
            if (i10 == 2) {
                throw new NoSuchElementException();
            }
            if (i10 == 0 && !a()) {
                throw new NoSuchElementException();
            }
            this.f28774d = 0;
            Iterator<? extends E> it = this.f28773c;
            kotlin.jvm.internal.M.m(it);
            return it.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3308i(@NotNull InterfaceC3312m<? extends T> sequence, @NotNull Mf.l<? super T, ? extends R> transformer, @NotNull Mf.l<? super R, ? extends Iterator<? extends E>> iterator) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        kotlin.jvm.internal.M.p(transformer, "transformer");
        kotlin.jvm.internal.M.p(iterator, "iterator");
        this.f28765a = sequence;
        this.f28766b = transformer;
        this.f28767c = iterator;
    }

    @Override
    @NotNull
    public Iterator<E> iterator() {
        return new b(this);
    }
}
