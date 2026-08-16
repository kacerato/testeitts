package Xf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class C3311l<T1, T2, V> implements InterfaceC3312m<V> {

    @NotNull
    public final InterfaceC3312m<T1> f28784a;

    @NotNull
    public final InterfaceC3312m<T2> f28785b;

    @NotNull
    public final Mf.p<T1, T2, V> f28786c;

    public static final class a implements Iterator<V>, Nf.a {

        public final Iterator<T1> f28787b;

        public final Iterator<T2> f28788c;

        public final C3311l<T1, T2, V> f28789d;

        public a(C3311l<T1, T2, V> c3311l) {
            this.f28789d = c3311l;
            this.f28787b = c3311l.f28784a.iterator();
            this.f28788c = c3311l.f28785b.iterator();
        }

        public final Iterator<T1> a() {
            return this.f28787b;
        }

        public final Iterator<T2> b() {
            return this.f28788c;
        }

        @Override
        public boolean hasNext() {
            return this.f28787b.hasNext() && this.f28788c.hasNext();
        }

        @Override
        public V next() {
            return (V) this.f28789d.f28786c.invoke(this.f28787b.next(), this.f28788c.next());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3311l(@NotNull InterfaceC3312m<? extends T1> sequence1, @NotNull InterfaceC3312m<? extends T2> sequence2, @NotNull Mf.p<? super T1, ? super T2, ? extends V> transform) {
        kotlin.jvm.internal.M.p(sequence1, "sequence1");
        kotlin.jvm.internal.M.p(sequence2, "sequence2");
        kotlin.jvm.internal.M.p(transform, "transform");
        this.f28784a = sequence1;
        this.f28785b = sequence2;
        this.f28786c = transform;
    }

    @Override
    @NotNull
    public Iterator<V> iterator() {
        return new a(this);
    }
}
