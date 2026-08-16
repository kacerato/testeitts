package Xf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class T<T, R> implements InterfaceC3312m<R> {

    @NotNull
    public final InterfaceC3312m<T> f28732a;

    @NotNull
    public final Mf.p<Integer, T, R> f28733b;

    public static final class a implements Iterator<R>, Nf.a {

        public final Iterator<T> f28734b;

        public int f28735c;

        public final T<T, R> f28736d;

        public a(T<T, R> t10) {
            this.f28736d = t10;
            this.f28734b = t10.f28732a.iterator();
        }

        public final int a() {
            return this.f28735c;
        }

        public final Iterator<T> b() {
            return this.f28734b;
        }

        public final void c(int i10) {
            this.f28735c = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f28734b.hasNext();
        }

        @Override
        public R next() {
            Mf.p pVar = this.f28736d.f28733b;
            int i10 = this.f28735c;
            this.f28735c = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            return (R) pVar.invoke(Integer.valueOf(i10), this.f28734b.next());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T(@NotNull InterfaceC3312m<? extends T> sequence, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transformer) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        kotlin.jvm.internal.M.p(transformer, "transformer");
        this.f28732a = sequence;
        this.f28733b = transformer;
    }

    @Override
    @NotNull
    public Iterator<R> iterator() {
        return new a(this);
    }
}
