package w2;

import java.io.Serializable;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC15894k
@v2.b
@InterfaceC15800a
public final class C15903u<F, T> extends AbstractC15896m<F> implements Serializable {

    public static final long f126363d = 0;

    public final InterfaceC15902t<? super F, ? extends T> f126364b;

    public final AbstractC15896m<T> f126365c;

    public C15903u(InterfaceC15902t<? super F, ? extends T> interfaceC15902t, AbstractC15896m<T> abstractC15896m) {
        this.f126364b = (InterfaceC15902t) H.E(interfaceC15902t);
        this.f126365c = (AbstractC15896m) H.E(abstractC15896m);
    }

    @Override
    public boolean a(F f10, F f11) {
        return this.f126365c.d(this.f126364b.apply(f10), this.f126364b.apply(f11));
    }

    @Override
    public int b(F f10) {
        return this.f126365c.f(this.f126364b.apply(f10));
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C15903u)) {
            return false;
        }
        C15903u c15903u = (C15903u) obj;
        return this.f126364b.equals(c15903u.f126364b) && this.f126365c.equals(c15903u.f126365c);
    }

    public int hashCode() {
        return B.b(this.f126364b, this.f126365c);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f126365c);
        String valueOf2 = String.valueOf(this.f126364b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(".onResultOf(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
