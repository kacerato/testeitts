package A2;

import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC2284t
@InterfaceC15800a
public abstract class AbstractC2271f<N> extends AbstractC2266a<N> implements InterfaceC2290z<N> {
    @Override
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InterfaceC2290z)) {
            return false;
        }
        InterfaceC2290z interfaceC2290z = (InterfaceC2290z) obj;
        return c() == interfaceC2290z.c() && e().equals(interfaceC2290z.e()) && g().equals(interfaceC2290z.g());
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
        return g().hashCode();
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

    public String toString() {
        boolean c10 = c();
        boolean m10 = m();
        String valueOf = String.valueOf(e());
        String valueOf2 = String.valueOf(g());
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
