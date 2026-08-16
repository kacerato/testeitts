package A2;

import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public abstract class AbstractC2288x<N, E> extends AbstractC2273h<N, E> {
    @Override
    @CheckForNull
    public E A(AbstractC2285u<N> abstractC2285u) {
        return R().A(abstractC2285u);
    }

    @Override
    public Set<E> B(E e10) {
        return R().B(e10);
    }

    @Override
    public boolean C() {
        return R().C();
    }

    @Override
    public Set<E> E(AbstractC2285u<N> abstractC2285u) {
        return R().E(abstractC2285u);
    }

    @Override
    @CheckForNull
    public E G(N n10, N n11) {
        return R().G(n10, n11);
    }

    @Override
    public AbstractC2285u<N> H(E e10) {
        return R().H(e10);
    }

    public abstract T<N, E> R();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable a(Object obj) {
        return a((AbstractC2288x<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable b(Object obj) {
        return b((AbstractC2288x<N, E>) obj);
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
    public Set<E> g() {
        return R().g();
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
    public Set<E> n(N n10) {
        return R().n(n10);
    }

    @Override
    public Set<E> v(N n10, N n11) {
        return R().v(n10, n11);
    }

    @Override
    public C2283s<E> w() {
        return R().w();
    }

    @Override
    public Set<E> x(N n10) {
        return R().x(n10);
    }

    @Override
    public Set<E> z(N n10) {
        return R().z(n10);
    }

    @Override
    public Set<N> a(N n10) {
        return R().a((T<N, E>) n10);
    }

    @Override
    public Set<N> b(N n10) {
        return R().b((T<N, E>) n10);
    }
}
