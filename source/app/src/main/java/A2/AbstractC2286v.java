package A2;

import com.google.common.collect.AbstractC12503c;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D2;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public abstract class AbstractC2286v<N> extends AbstractC12503c<AbstractC2285u<N>> {

    public final InterfaceC2276k<N> f281d;

    public final Iterator<N> f282e;

    @CheckForNull
    public N f283f;

    public Iterator<N> f284g;

    public static final class b<N> extends AbstractC2286v<N> {
        @Override
        @CheckForNull
        public AbstractC2285u<N> a() {
            while (!this.f284g.hasNext()) {
                if (!e()) {
                    return b();
                }
            }
            N n10 = this.f283f;
            Objects.requireNonNull(n10);
            return AbstractC2285u.l(n10, this.f284g.next());
        }

        public b(InterfaceC2276k<N> interfaceC2276k) {
            super(interfaceC2276k);
        }
    }

    public static final class c<N> extends AbstractC2286v<N> {

        @CheckForNull
        public Set<N> f285h;

        @Override
        @CheckForNull
        public AbstractC2285u<N> a() {
            do {
                Objects.requireNonNull(this.f285h);
                while (this.f284g.hasNext()) {
                    N next = this.f284g.next();
                    if (!this.f285h.contains(next)) {
                        N n10 = this.f283f;
                        Objects.requireNonNull(n10);
                        return AbstractC2285u.o(n10, next);
                    }
                }
                this.f285h.add(this.f283f);
            } while (e());
            this.f285h = null;
            return b();
        }

        public c(InterfaceC2276k<N> interfaceC2276k) {
            super(interfaceC2276k);
            this.f285h = D2.y(interfaceC2276k.e().size() + 1);
        }
    }

    public static <N> AbstractC2286v<N> f(InterfaceC2276k<N> interfaceC2276k) {
        return interfaceC2276k.c() ? new b(interfaceC2276k) : new c(interfaceC2276k);
    }

    public final boolean e() {
        w2.H.g0(!this.f284g.hasNext());
        if (!this.f282e.hasNext()) {
            return false;
        }
        N next = this.f282e.next();
        this.f283f = next;
        this.f284g = this.f281d.a((InterfaceC2276k<N>) next).iterator();
        return true;
    }

    public AbstractC2286v(InterfaceC2276k<N> interfaceC2276k) {
        this.f283f = null;
        this.f284g = AbstractC12564r1.z().iterator();
        this.f281d = interfaceC2276k;
        this.f282e = interfaceC2276k.e().iterator();
    }
}
