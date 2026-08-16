package A2;

import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public abstract class AbstractC2289y<N, V> extends AbstractC2275j<N, V> {
    @CheckForNull
    public V D(N n10, N n11, @CheckForNull V v10) {
        return R().D(n10, n11, v10);
    }

    @CheckForNull
    public V J(AbstractC2285u<N> abstractC2285u, @CheckForNull V v10) {
        return R().J(abstractC2285u, v10);
    }

    @Override
    public long N() {
        return R().g().size();
    }

    public abstract j0<N, V> R();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable a(Object obj) {
        return a((AbstractC2289y<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable b(Object obj) {
        return b((AbstractC2289y<N, V>) obj);
    }

    @Override
    public boolean c() {
        return R().c();
    }

    @Override
    public Set<N> d(N n10) {
        return R().d(n10);
    }

    @Override
    public Set<N> e() {
        return R().e();
    }

    @Override
    public int f(N n10) {
        return R().f(n10);
    }

    @Override
    public boolean h(AbstractC2285u<N> abstractC2285u) {
        return R().h(abstractC2285u);
    }

    @Override
    public boolean i(N n10, N n11) {
        return R().i(n10, n11);
    }

    @Override
    public int j(N n10) {
        return R().j(n10);
    }

    @Override
    public C2283s<N> k() {
        return R().k();
    }

    @Override
    public int l(N n10) {
        return R().l(n10);
    }

    @Override
    public boolean m() {
        return R().m();
    }

    @Override
    public C2283s<N> q() {
        return R().q();
    }

    @Override
    public Set<N> a(N n10) {
        return R().a((j0<N, V>) n10);
    }

    @Override
    public Set<N> b(N n10) {
        return R().b((j0<N, V>) n10);
    }
}
