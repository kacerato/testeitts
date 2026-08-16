package A2;

import com.google.common.collect.E1;
import com.google.common.collect.e3;
import java.util.Iterator;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC2284t
@I2.j(containerOf = {"N"})
@InterfaceC15800a
public abstract class AbstractC2285u<N> implements Iterable<N> {

    public final N f279b;

    public final N f280c;

    public static final class b<N> extends AbstractC2285u<N> {
        @Override
        public boolean d() {
            return true;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC2285u)) {
                return false;
            }
            AbstractC2285u abstractC2285u = (AbstractC2285u) obj;
            if (d() != abstractC2285u.d()) {
                return false;
            }
            return m().equals(abstractC2285u.m()) && n().equals(abstractC2285u.n());
        }

        @Override
        public int hashCode() {
            return w2.B.b(m(), n());
        }

        @Override
        public Iterator iterator() {
            return super.iterator();
        }

        @Override
        public N m() {
            return h();
        }

        @Override
        public N n() {
            return i();
        }

        public String toString() {
            String valueOf = String.valueOf(m());
            String valueOf2 = String.valueOf(n());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 6 + valueOf2.length());
            sb2.append("<");
            sb2.append(valueOf);
            sb2.append(" -> ");
            sb2.append(valueOf2);
            sb2.append(">");
            return sb2.toString();
        }

        public b(N n10, N n11) {
            super(n10, n11);
        }
    }

    public static final class c<N> extends AbstractC2285u<N> {
        @Override
        public boolean d() {
            return false;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC2285u)) {
                return false;
            }
            AbstractC2285u abstractC2285u = (AbstractC2285u) obj;
            if (d() != abstractC2285u.d()) {
                return false;
            }
            return h().equals(abstractC2285u.h()) ? i().equals(abstractC2285u.i()) : h().equals(abstractC2285u.i()) && i().equals(abstractC2285u.h());
        }

        @Override
        public int hashCode() {
            return h().hashCode() + i().hashCode();
        }

        @Override
        public Iterator iterator() {
            return super.iterator();
        }

        @Override
        public N m() {
            throw new UnsupportedOperationException(C.f151l);
        }

        @Override
        public N n() {
            throw new UnsupportedOperationException(C.f151l);
        }

        public String toString() {
            String valueOf = String.valueOf(h());
            String valueOf2 = String.valueOf(i());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 4 + valueOf2.length());
            sb2.append("[");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            sb2.append("]");
            return sb2.toString();
        }

        public c(N n10, N n11) {
            super(n10, n11);
        }
    }

    public static <N> AbstractC2285u<N> j(InterfaceC2290z<?> interfaceC2290z, N n10, N n11) {
        return interfaceC2290z.c() ? l(n10, n11) : o(n10, n11);
    }

    public static <N> AbstractC2285u<N> k(T<?, ?> t10, N n10, N n11) {
        return t10.c() ? l(n10, n11) : o(n10, n11);
    }

    public static <N> AbstractC2285u<N> l(N n10, N n11) {
        return new b(n10, n11);
    }

    public static <N> AbstractC2285u<N> o(N n10, N n11) {
        return new c(n11, n10);
    }

    public final N c(N n10) {
        if (n10.equals(this.f279b)) {
            return this.f280c;
        }
        if (n10.equals(this.f280c)) {
            return this.f279b;
        }
        String valueOf = String.valueOf(this);
        String valueOf2 = String.valueOf(n10);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 36 + valueOf2.length());
        sb2.append("EndpointPair ");
        sb2.append(valueOf);
        sb2.append(" does not contain node ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public abstract boolean d();

    public abstract boolean equals(@CheckForNull Object obj);

    @Override
    public final e3<N> iterator() {
        return E1.B(this.f279b, this.f280c);
    }

    public final N h() {
        return this.f279b;
    }

    public abstract int hashCode();

    public final N i() {
        return this.f280c;
    }

    public abstract N m();

    public abstract N n();

    public AbstractC2285u(N n10, N n11) {
        this.f279b = (N) w2.H.E(n10);
        this.f280c = (N) w2.H.E(n11);
    }
}
