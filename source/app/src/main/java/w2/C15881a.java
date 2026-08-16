package w2;

import java.util.Collections;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public final class C15881a<T> extends C<T> {

    public static final C15881a<Object> f126230c = new C15881a<>();

    public static final long f126231d = 0;

    public static <T> C<T> n() {
        return f126230c;
    }

    @Override
    public Set<T> b() {
        return Collections.emptySet();
    }

    @Override
    public T d() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override
    public boolean e() {
        return false;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return obj == this;
    }

    @Override
    public T g(T t10) {
        return (T) H.F(t10, "use Optional.orNull() instead of Optional.or(null)");
    }

    @Override
    public T h(Q<? extends T> q10) {
        return (T) H.F(q10.get(), "use Optional.orNull() instead of a Supplier that returns null");
    }

    @Override
    public int hashCode() {
        return 2040732332;
    }

    @Override
    public C<T> i(C<? extends T> c10) {
        return (C) H.E(c10);
    }

    @Override
    @CheckForNull
    public T j() {
        return null;
    }

    @Override
    public <V> C<V> l(InterfaceC15902t<? super T, V> interfaceC15902t) {
        H.E(interfaceC15902t);
        return C.a();
    }

    public final Object m() {
        return f126230c;
    }

    @Override
    public String toString() {
        return "Optional.absent()";
    }
}
