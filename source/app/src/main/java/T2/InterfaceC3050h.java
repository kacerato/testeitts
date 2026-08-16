package T2;

import a3.InterfaceC3578a;
import java.util.Set;

public interface InterfaceC3050h {
    default <T> T a(Class<T> cls) {
        return (T) j(F.b(cls));
    }

    default <T> a3.b<Set<T>> c(Class<T> cls) {
        return i(F.b(cls));
    }

    default <T> Set<T> d(Class<T> cls) {
        return g(F.b(cls));
    }

    <T> InterfaceC3578a<T> e(F<T> f10);

    default <T> a3.b<T> f(Class<T> cls) {
        return h(F.b(cls));
    }

    default <T> Set<T> g(F<T> f10) {
        return i(f10).get();
    }

    <T> a3.b<T> h(F<T> f10);

    <T> a3.b<Set<T>> i(F<T> f10);

    default <T> T j(F<T> f10) {
        a3.b<T> h10 = h(f10);
        if (h10 == null) {
            return null;
        }
        return h10.get();
    }

    default <T> InterfaceC3578a<T> k(Class<T> cls) {
        return e(F.b(cls));
    }
}
