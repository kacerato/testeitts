package Xf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/TakeSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,730:1\n1#2:731\n*E\n"})
public final class Q<T> implements InterfaceC3312m<T>, InterfaceC3304e<T> {

    @NotNull
    public final InterfaceC3312m<T> f28722a;

    public final int f28723b;

    public static final class a implements Iterator<T>, Nf.a {

        public int f28724b;

        public final Iterator<T> f28725c;

        public a(Q<T> q10) {
            this.f28724b = q10.f28723b;
            this.f28725c = q10.f28722a.iterator();
        }

        public final Iterator<T> a() {
            return this.f28725c;
        }

        public final int b() {
            return this.f28724b;
        }

        public final void c(int i10) {
            this.f28724b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f28724b > 0 && this.f28725c.hasNext();
        }

        @Override
        public T next() {
            int i10 = this.f28724b;
            if (i10 == 0) {
                throw new NoSuchElementException();
            }
            this.f28724b = i10 - 1;
            return this.f28725c.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Q(@NotNull InterfaceC3312m<? extends T> sequence, int i10) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        this.f28722a = sequence;
        this.f28723b = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override
    @NotNull
    public InterfaceC3312m<T> a(int i10) {
        int i11 = this.f28723b;
        return i10 >= i11 ? x.l() : new P(this.f28722a, i10, i11);
    }

    @Override
    @NotNull
    public InterfaceC3312m<T> b(int i10) {
        return i10 >= this.f28723b ? this : new Q(this.f28722a, i10);
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
