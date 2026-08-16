package A2;

import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC2284t
@InterfaceC15800a
public interface j0<N, V> extends InterfaceC2276k<N> {
    @CheckForNull
    V D(N n10, N n11, @CheckForNull V v10);

    @CheckForNull
    V J(AbstractC2285u<N> abstractC2285u, @CheckForNull V v10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default Iterable a(Object obj) {
        return a((j0<N, V>) obj);
    }

    @Override
    Set<N> a(N n10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default Iterable b(Object obj) {
        return b((j0<N, V>) obj);
    }

    @Override
    Set<N> b(N n10);

    @Override
    boolean c();

    @Override
    Set<N> d(N n10);

    @Override
    Set<N> e();

    boolean equals(@CheckForNull Object obj);

    @Override
    int f(N n10);

    @Override
    Set<AbstractC2285u<N>> g();

    @Override
    boolean h(AbstractC2285u<N> abstractC2285u);

    int hashCode();

    @Override
    boolean i(N n10, N n11);

    @Override
    int j(N n10);

    @Override
    C2283s<N> k();

    @Override
    int l(N n10);

    @Override
    boolean m();

    @Override
    Set<AbstractC2285u<N>> n(N n10);

    @Override
    C2283s<N> q();

    InterfaceC2290z<N> s();
}
