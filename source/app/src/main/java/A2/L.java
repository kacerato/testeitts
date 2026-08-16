package A2;

import java.util.AbstractSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public abstract class L<N> extends AbstractSet<AbstractC2285u<N>> {

    public final N f169b;

    public final InterfaceC2276k<N> f170c;

    public L(InterfaceC2276k<N> interfaceC2276k, N n10) {
        this.f170c = interfaceC2276k;
        this.f169b = n10;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        if (!(obj instanceof AbstractC2285u)) {
            return false;
        }
        AbstractC2285u abstractC2285u = (AbstractC2285u) obj;
        if (this.f170c.c()) {
            if (!abstractC2285u.d()) {
                return false;
            }
            Object m10 = abstractC2285u.m();
            Object n10 = abstractC2285u.n();
            return (this.f169b.equals(m10) && this.f170c.a((InterfaceC2276k<N>) this.f169b).contains(n10)) || (this.f169b.equals(n10) && this.f170c.b((InterfaceC2276k<N>) this.f169b).contains(m10));
        }
        if (abstractC2285u.d()) {
            return false;
        }
        Set<N> d10 = this.f170c.d(this.f169b);
        Object h10 = abstractC2285u.h();
        Object i10 = abstractC2285u.i();
        return (this.f169b.equals(i10) && d10.contains(h10)) || (this.f169b.equals(h10) && d10.contains(i10));
    }

    @Override
    public boolean remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f170c.c() ? (this.f170c.f(this.f169b) + this.f170c.l(this.f169b)) - (this.f170c.a((InterfaceC2276k<N>) this.f169b).contains(this.f169b) ? 1 : 0) : this.f170c.d(this.f169b).size();
    }
}
