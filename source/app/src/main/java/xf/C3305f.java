package Xf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class C3305f<T> implements InterfaceC3312m<T> {

    @NotNull
    public final InterfaceC3312m<T> f28751a;

    @NotNull
    public final Mf.l<T, Boolean> f28752b;

    public static final class a implements Iterator<T>, Nf.a {

        public final Iterator<T> f28753b;

        public int f28754c = -1;

        public T f28755d;

        public final C3305f<T> f28756e;

        public a(C3305f<T> c3305f) {
            this.f28756e = c3305f;
            this.f28753b = c3305f.f28751a.iterator();
        }

        private final void a() {
            while (this.f28753b.hasNext()) {
                T next = this.f28753b.next();
                if (!((Boolean) this.f28756e.f28752b.invoke(next)).booleanValue()) {
                    this.f28755d = next;
                    this.f28754c = 1;
                    return;
                }
            }
            this.f28754c = 0;
        }

        public final int b() {
            return this.f28754c;
        }

        public final Iterator<T> d() {
            return this.f28753b;
        }

        public final T e() {
            return this.f28755d;
        }

        public final void f(int i10) {
            this.f28754c = i10;
        }

        public final void g(T t10) {
            this.f28755d = t10;
        }

        @Override
        public boolean hasNext() {
            if (this.f28754c == -1) {
                a();
            }
            return this.f28754c == 1 || this.f28753b.hasNext();
        }

        @Override
        public T next() {
            if (this.f28754c == -1) {
                a();
            }
            if (this.f28754c != 1) {
                return this.f28753b.next();
            }
            T t10 = this.f28755d;
            this.f28755d = null;
            this.f28754c = 0;
            return t10;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3305f(@NotNull InterfaceC3312m<? extends T> sequence, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        this.f28751a = sequence;
        this.f28752b = predicate;
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
