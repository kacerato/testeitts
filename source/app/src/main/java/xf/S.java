package Xf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class S<T> implements InterfaceC3312m<T> {

    @NotNull
    public final InterfaceC3312m<T> f28726a;

    @NotNull
    public final Mf.l<T, Boolean> f28727b;

    public static final class a implements Iterator<T>, Nf.a {

        public final Iterator<T> f28728b;

        public int f28729c = -1;

        public T f28730d;

        public final S<T> f28731e;

        public a(S<T> s10) {
            this.f28731e = s10;
            this.f28728b = s10.f28726a.iterator();
        }

        private final void a() {
            if (this.f28728b.hasNext()) {
                T next = this.f28728b.next();
                if (((Boolean) this.f28731e.f28727b.invoke(next)).booleanValue()) {
                    this.f28729c = 1;
                    this.f28730d = next;
                    return;
                }
            }
            this.f28729c = 0;
        }

        public final Iterator<T> b() {
            return this.f28728b;
        }

        public final T d() {
            return this.f28730d;
        }

        public final int e() {
            return this.f28729c;
        }

        public final void f(T t10) {
            this.f28730d = t10;
        }

        public final void g(int i10) {
            this.f28729c = i10;
        }

        @Override
        public boolean hasNext() {
            if (this.f28729c == -1) {
                a();
            }
            return this.f28729c == 1;
        }

        @Override
        public T next() {
            if (this.f28729c == -1) {
                a();
            }
            if (this.f28729c == 0) {
                throw new NoSuchElementException();
            }
            T t10 = this.f28730d;
            this.f28730d = null;
            this.f28729c = -1;
            return t10;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public S(@NotNull InterfaceC3312m<? extends T> sequence, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        this.f28726a = sequence;
        this.f28727b = predicate;
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
