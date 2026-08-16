package w2;

import java.util.Collections;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public final class K<T> extends C<T> {

    public static final long f126168d = 0;

    public final T f126169c;

    public K(T t10) {
        this.f126169c = t10;
    }

    @Override
    public Set<T> b() {
        return Collections.singleton(this.f126169c);
    }

    @Override
    public T d() {
        return this.f126169c;
    }

    @Override
    public boolean e() {
        return true;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof K) {
            return this.f126169c.equals(((K) obj).f126169c);
        }
        return false;
    }

    @Override
    public T g(T t10) {
        H.F(t10, "use Optional.orNull() instead of Optional.or(null)");
        return this.f126169c;
    }

    @Override
    public T h(Q<? extends T> q10) {
        H.E(q10);
        return this.f126169c;
    }

    @Override
    public int hashCode() {
        return this.f126169c.hashCode() + 1502476572;
    }

    @Override
    public C<T> i(C<? extends T> c10) {
        H.E(c10);
        return this;
    }

    @Override
    public T j() {
        return this.f126169c;
    }

    @Override
    public <V> C<V> l(InterfaceC15902t<? super T, V> interfaceC15902t) {
        return new K(H.F(interfaceC15902t.apply(this.f126169c), "the Function passed to Optional.transform() must not return null."));
    }

    @Override
    public String toString() {
        String valueOf = String.valueOf(this.f126169c);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13);
        sb2.append("Optional.of(");
        sb2.append(valueOf);
        sb2.append(")");
        return sb2.toString();
    }
}
