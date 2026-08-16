package A2;

import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC2284t
@I2.f("Use GraphBuilder to create a real instance")
@InterfaceC15800a
public interface InterfaceC2290z<N> extends InterfaceC2276k<N> {
    /* JADX WARN: Multi-variable type inference failed */
    default Iterable a(Object obj) {
        return a((InterfaceC2290z<N>) obj);
    }

    @Override
    Set<N> a(N n10);

    /* JADX WARN: Multi-variable type inference failed */
    default Iterable b(Object obj) {
        return b((InterfaceC2290z<N>) obj);
    }

    @Override
    Set<N> b(N n10);

    boolean c();

    Set<N> d(N n10);

    Set<N> e();

    boolean equals(@CheckForNull Object obj);

    int f(N n10);

    @Override
    Set<AbstractC2285u<N>> g();

    boolean h(AbstractC2285u<N> abstractC2285u);

    int hashCode();

    boolean i(N n10, N n11);

    int j(N n10);

    C2283s<N> k();

    int l(N n10);

    boolean m();

    Set<AbstractC2285u<N>> n(N n10);

    C2283s<N> q();
}
