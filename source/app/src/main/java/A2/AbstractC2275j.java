package A2;

import com.google.common.collect.Q1;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@InterfaceC2284t
@InterfaceC15800a
public abstract class AbstractC2275j<N, V> extends AbstractC2266a<N> implements j0<N, V> {

    public class a extends AbstractC2271f<N> {
        public a() {
        }

        @Override
        public Iterable a(Object obj) {
            return a((a) obj);
        }

        @Override
        public Iterable b(Object obj) {
            return b((a) obj);
        }

        @Override
        public boolean c() {
            return AbstractC2275j.this.c();
        }

        @Override
        public Set<N> d(N n10) {
            return AbstractC2275j.this.d(n10);
        }

        @Override
        public Set<N> e() {
            return AbstractC2275j.this.e();
        }

        @Override
        public int f(N n10) {
            return AbstractC2275j.this.f(n10);
        }

        @Override
        public Set<AbstractC2285u<N>> g() {
            return AbstractC2275j.this.g();
        }

        @Override
        public int j(N n10) {
            return AbstractC2275j.this.j(n10);
        }

        @Override
        public C2283s<N> k() {
            return AbstractC2275j.this.k();
        }

        @Override
        public int l(N n10) {
            return AbstractC2275j.this.l(n10);
        }

        @Override
        public boolean m() {
            return AbstractC2275j.this.m();
        }

        @Override
        public C2283s<N> q() {
            return AbstractC2275j.this.q();
        }

        @Override
        public Set<N> a(N n10) {
            return AbstractC2275j.this.a((AbstractC2275j) n10);
        }

        @Override
        public Set<N> b(N n10) {
            return AbstractC2275j.this.b((AbstractC2275j) n10);
        }
    }

    public class b implements InterfaceC15902t<AbstractC2285u<N>, V> {

        public final j0 f247b;

        public b(j0 j0Var) {
            this.f247b = j0Var;
        }

        @Override
        public V apply(AbstractC2285u<N> abstractC2285u) {
            V v10 = (V) this.f247b.D(abstractC2285u.h(), abstractC2285u.i(), null);
            Objects.requireNonNull(v10);
            return v10;
        }
    }

    public static <N, V> Map<AbstractC2285u<N>, V> Q(j0<N, V> j0Var) {
        return Q1.j(j0Var.g(), new b(j0Var));
    }

    @Override
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return c() == j0Var.c() && e().equals(j0Var.e()) && Q(this).equals(Q(j0Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int f(Object obj) {
        return super.f(obj);
    }

    @Override
    public Set g() {
        return super.g();
    }

    @Override
    public boolean h(AbstractC2285u abstractC2285u) {
        return super.h(abstractC2285u);
    }

    @Override
    public final int hashCode() {
        return Q(this).hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean i(Object obj, Object obj2) {
        return super.i(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int j(Object obj) {
        return super.j(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int l(Object obj) {
        return super.l(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set n(Object obj) {
        return super.n(obj);
    }

    @Override
    public C2283s q() {
        return super.q();
    }

    public InterfaceC2290z<N> s() {
        return new a();
    }

    public String toString() {
        boolean c10 = c();
        boolean m10 = m();
        String valueOf = String.valueOf(e());
        String valueOf2 = String.valueOf(Q(this));
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 59 + valueOf2.length());
        sb2.append("isDirected: ");
        sb2.append(c10);
        sb2.append(", allowsSelfLoops: ");
        sb2.append(m10);
        sb2.append(", nodes: ");
        sb2.append(valueOf);
        sb2.append(", edges: ");
        sb2.append(valueOf2);
        return sb2.toString();
    }
}
