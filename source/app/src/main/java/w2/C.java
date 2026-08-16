package w2;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC15894k
@v2.b(serializable = true)
@I2.f("Use Optional.of(value) or Optional.absent()")
public abstract class C<T> implements Serializable {

    public static final long f126140b = 0;

    public class a implements Iterable<T> {

        public final Iterable f126141b;

        public class C2078a extends AbstractC15882b<T> {

            public final Iterator<? extends C<? extends T>> f126142d;

            public C2078a() {
                this.f126142d = (Iterator) H.E(a.this.f126141b.iterator());
            }

            @Override
            @CheckForNull
            public T a() {
                while (this.f126142d.hasNext()) {
                    C<? extends T> next = this.f126142d.next();
                    if (next.e()) {
                        return next.d();
                    }
                }
                return b();
            }
        }

        public a(Iterable iterable) {
            this.f126141b = iterable;
        }

        @Override
        public Iterator<T> iterator() {
            return new C2078a();
        }
    }

    public static <T> C<T> a() {
        return C15881a.n();
    }

    public static <T> C<T> c(@CheckForNull T t10) {
        return t10 == null ? a() : new K(t10);
    }

    public static <T> C<T> f(T t10) {
        return new K(H.E(t10));
    }

    @InterfaceC15800a
    public static <T> Iterable<T> k(Iterable<? extends C<? extends T>> iterable) {
        H.E(iterable);
        return new a(iterable);
    }

    public abstract Set<T> b();

    public abstract T d();

    public abstract boolean e();

    public abstract boolean equals(@CheckForNull Object obj);

    public abstract T g(T t10);

    @InterfaceC15800a
    public abstract T h(Q<? extends T> q10);

    public abstract int hashCode();

    public abstract C<T> i(C<? extends T> c10);

    @CheckForNull
    public abstract T j();

    public abstract <V> C<V> l(InterfaceC15902t<? super T, V> interfaceC15902t);

    public abstract String toString();
}
