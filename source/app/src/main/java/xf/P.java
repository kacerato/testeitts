package Xf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SubSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,730:1\n1#2:731\n*E\n"})
public final class P<T> implements InterfaceC3312m<T>, InterfaceC3304e<T> {

    @NotNull
    public final InterfaceC3312m<T> f28716a;

    public final int f28717b;

    public final int f28718c;

    public static final class a implements Iterator<T>, Nf.a {

        public final Iterator<T> f28719b;

        public int f28720c;

        public final P<T> f28721d;

        public a(P<T> p10) {
            this.f28721d = p10;
            this.f28719b = p10.f28716a.iterator();
        }

        private final void a() {
            while (this.f28720c < this.f28721d.f28717b && this.f28719b.hasNext()) {
                this.f28719b.next();
                this.f28720c++;
            }
        }

        public final Iterator<T> b() {
            return this.f28719b;
        }

        public final int d() {
            return this.f28720c;
        }

        public final void e(int i10) {
            this.f28720c = i10;
        }

        @Override
        public boolean hasNext() {
            a();
            return this.f28720c < this.f28721d.f28718c && this.f28719b.hasNext();
        }

        @Override
        public T next() {
            a();
            if (this.f28720c >= this.f28721d.f28718c) {
                throw new NoSuchElementException();
            }
            this.f28720c++;
            return this.f28719b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public P(@NotNull InterfaceC3312m<? extends T> sequence, int i10, int i11) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        this.f28716a = sequence;
        this.f28717b = i10;
        this.f28718c = i11;
        if (i10 < 0) {
            throw new IllegalArgumentException(("startIndex should be non-negative, but is " + i10).toString());
        }
        if (i11 < 0) {
            throw new IllegalArgumentException(("endIndex should be non-negative, but is " + i11).toString());
        }
        if (i11 >= i10) {
            return;
        }
        throw new IllegalArgumentException(("endIndex should be not less than startIndex, but was " + i11 + " < " + i10).toString());
    }

    @Override
    @NotNull
    public InterfaceC3312m<T> a(int i10) {
        return i10 >= f() ? x.l() : new P(this.f28716a, this.f28717b + i10, this.f28718c);
    }

    @Override
    @NotNull
    public InterfaceC3312m<T> b(int i10) {
        if (i10 >= f()) {
            return this;
        }
        InterfaceC3312m<T> interfaceC3312m = this.f28716a;
        int i11 = this.f28717b;
        return new P(interfaceC3312m, i11, i10 + i11);
    }

    public final int f() {
        return this.f28718c - this.f28717b;
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
