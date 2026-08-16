package A2;

import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC2284t
@I2.f("Use NetworkBuilder to create a real instance")
@InterfaceC15800a
public interface T<N, E> extends d0<N>, X<N> {
    @CheckForNull
    E A(AbstractC2285u<N> abstractC2285u);

    Set<E> B(E e10);

    boolean C();

    Set<E> E(AbstractC2285u<N> abstractC2285u);

    @CheckForNull
    E G(N n10, N n11);

    AbstractC2285u<N> H(E e10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default Iterable a(Object obj) {
        return a((T<N, E>) obj);
    }

    @Override
    Set<N> a(N n10);

    /* JADX WARN: Multi-variable type inference failed */
    default Iterable b(Object obj) {
        return b((T<N, E>) obj);
    }

    Set<N> b(N n10);

    boolean c();

    Set<N> d(N n10);

    Set<N> e();

    boolean equals(@CheckForNull Object obj);

    int f(N n10);

    Set<E> g();

    boolean h(AbstractC2285u<N> abstractC2285u);

    int hashCode();

    boolean i(N n10, N n11);

    int j(N n10);

    C2283s<N> k();

    int l(N n10);

    boolean m();

    Set<E> n(N n10);

    InterfaceC2290z<N> s();

    Set<E> v(N n10, N n11);

    C2283s<E> w();

    Set<E> x(N n10);

    Set<E> z(N n10);
}
