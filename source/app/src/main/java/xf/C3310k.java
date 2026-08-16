package Xf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
import pf.C14968d0;

public final class C3310k<T> implements InterfaceC3312m<C14968d0<? extends T>> {

    @NotNull
    public final InterfaceC3312m<T> f28781a;

    public static final class a implements Iterator<C14968d0<? extends T>>, Nf.a {

        public final Iterator<T> f28782b;

        public int f28783c;

        public a(C3310k<T> c3310k) {
            this.f28782b = c3310k.f28781a.iterator();
        }

        public final int a() {
            return this.f28783c;
        }

        public final Iterator<T> b() {
            return this.f28782b;
        }

        @Override
        public C14968d0<T> next() {
            int i10 = this.f28783c;
            this.f28783c = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            return new C14968d0<>(i10, this.f28782b.next());
        }

        public final void e(int i10) {
            this.f28783c = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f28782b.hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3310k(@NotNull InterfaceC3312m<? extends T> sequence) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        this.f28781a = sequence;
    }

    @Override
    @NotNull
    public Iterator<C14968d0<T>> iterator() {
        return new a(this);
    }
}
