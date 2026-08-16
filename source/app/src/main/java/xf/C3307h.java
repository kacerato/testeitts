package Xf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

public final class C3307h<T> implements InterfaceC3312m<T> {

    @NotNull
    public final InterfaceC3312m<T> f28758a;

    public final boolean f28759b;

    @NotNull
    public final Mf.l<T, Boolean> f28760c;

    public static final class a implements Iterator<T>, Nf.a {

        public final Iterator<T> f28761b;

        public int f28762c = -1;

        public T f28763d;

        public final C3307h<T> f28764e;

        public a(C3307h<T> c3307h) {
            this.f28764e = c3307h;
            this.f28761b = c3307h.f28758a.iterator();
        }

        public final void a() {
            while (this.f28761b.hasNext()) {
                T next = this.f28761b.next();
                if (((Boolean) this.f28764e.f28760c.invoke(next)).booleanValue() == this.f28764e.f28759b) {
                    this.f28763d = next;
                    this.f28762c = 1;
                    return;
                }
            }
            this.f28762c = 0;
        }

        public final Iterator<T> b() {
            return this.f28761b;
        }

        public final T d() {
            return this.f28763d;
        }

        public final int e() {
            return this.f28762c;
        }

        public final void f(T t10) {
            this.f28763d = t10;
        }

        public final void g(int i10) {
            this.f28762c = i10;
        }

        @Override
        public boolean hasNext() {
            if (this.f28762c == -1) {
                a();
            }
            return this.f28762c == 1;
        }

        @Override
        public T next() {
            if (this.f28762c == -1) {
                a();
            }
            if (this.f28762c == 0) {
                throw new NoSuchElementException();
            }
            T t10 = this.f28763d;
            this.f28763d = null;
            this.f28762c = -1;
            return t10;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3307h(@NotNull InterfaceC3312m<? extends T> sequence, boolean z10, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        this.f28758a = sequence;
        this.f28759b = z10;
        this.f28760c = predicate;
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }

    public C3307h(InterfaceC3312m interfaceC3312m, boolean z10, Mf.l lVar, int i10, C14026x c14026x) {
        this(interfaceC3312m, (i10 & 2) != 0 ? true : z10, lVar);
    }
}
