package Xf;

import java.util.Iterator;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/DropSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,730:1\n1#2:731\n*E\n"})
public final class C3303d<T> implements InterfaceC3312m<T>, InterfaceC3304e<T> {

    @NotNull
    public final InterfaceC3312m<T> f28747a;

    public final int f28748b;

    public static final class a implements Iterator<T>, Nf.a {

        public final Iterator<T> f28749b;

        public int f28750c;

        public a(C3303d<T> c3303d) {
            this.f28749b = c3303d.f28747a.iterator();
            this.f28750c = c3303d.f28748b;
        }

        public final void a() {
            while (this.f28750c > 0 && this.f28749b.hasNext()) {
                this.f28749b.next();
                this.f28750c--;
            }
        }

        public final Iterator<T> b() {
            return this.f28749b;
        }

        public final int d() {
            return this.f28750c;
        }

        public final void e(int i10) {
            this.f28750c = i10;
        }

        @Override
        public boolean hasNext() {
            a();
            return this.f28749b.hasNext();
        }

        @Override
        public T next() {
            a();
            return this.f28749b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3303d(@NotNull InterfaceC3312m<? extends T> sequence, int i10) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        this.f28747a = sequence;
        this.f28748b = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override
    @NotNull
    public InterfaceC3312m<T> a(int i10) {
        int i11 = this.f28748b + i10;
        return i11 < 0 ? new C3303d(this, i10) : new C3303d(this.f28747a, i11);
    }

    @Override
    @NotNull
    public InterfaceC3312m<T> b(int i10) {
        int i11 = this.f28748b;
        int i12 = i11 + i10;
        return i12 < 0 ? new Q(this, i10) : new P(this.f28747a, i11, i12);
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
