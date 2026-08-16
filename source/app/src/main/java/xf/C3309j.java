package Xf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C3309j<T> implements InterfaceC3312m<T> {

    @NotNull
    public final Mf.a<T> f28776a;

    @NotNull
    public final Mf.l<T, T> f28777b;

    public static final class a implements Iterator<T>, Nf.a {

        public T f28778b;

        public int f28779c = -2;

        public final C3309j<T> f28780d;

        public a(C3309j<T> c3309j) {
            this.f28780d = c3309j;
        }

        private final void a() {
            T t10;
            if (this.f28779c == -2) {
                t10 = (T) this.f28780d.f28776a.invoke();
            } else {
                Mf.l lVar = this.f28780d.f28777b;
                T t11 = this.f28778b;
                kotlin.jvm.internal.M.m(t11);
                t10 = (T) lVar.invoke(t11);
            }
            this.f28778b = t10;
            this.f28779c = t10 == null ? 0 : 1;
        }

        public final T b() {
            return this.f28778b;
        }

        public final int d() {
            return this.f28779c;
        }

        public final void e(T t10) {
            this.f28778b = t10;
        }

        public final void f(int i10) {
            this.f28779c = i10;
        }

        @Override
        public boolean hasNext() {
            if (this.f28779c < 0) {
                a();
            }
            return this.f28779c == 1;
        }

        @Override
        public T next() {
            if (this.f28779c < 0) {
                a();
            }
            if (this.f28779c == 0) {
                throw new NoSuchElementException();
            }
            T t10 = this.f28778b;
            kotlin.jvm.internal.M.n(t10, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.f28779c = -1;
            return t10;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3309j(@NotNull Mf.a<? extends T> getInitialValue, @NotNull Mf.l<? super T, ? extends T> getNextValue) {
        kotlin.jvm.internal.M.p(getInitialValue, "getInitialValue");
        kotlin.jvm.internal.M.p(getNextValue, "getNextValue");
        this.f28776a = getInitialValue;
        this.f28777b = getNextValue;
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
