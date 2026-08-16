package A2;

import java.util.Map;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public final class N<K, V> extends M<K, V> {

    @CheckForNull
    public volatile transient a<K, V> f176c;

    @CheckForNull
    public volatile transient a<K, V> f177d;

    public static final class a<K, V> {

        public final K f178a;

        public final V f179b;

        public a(K k10, V v10) {
            this.f178a = k10;
            this.f179b = v10;
        }
    }

    public N(Map<K, V> map) {
        super(map);
    }

    @Override
    public void d() {
        super.d();
        this.f176c = null;
        this.f177d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @CheckForNull
    public V f(Object obj) {
        w2.H.E(obj);
        V g10 = g(obj);
        if (g10 != null) {
            return g10;
        }
        V h10 = h(obj);
        if (h10 != null) {
            m(obj, h10);
        }
        return h10;
    }

    @Override
    @CheckForNull
    public V g(@CheckForNull Object obj) {
        V v10 = (V) super.g(obj);
        if (v10 != null) {
            return v10;
        }
        a<K, V> aVar = this.f176c;
        if (aVar != null && aVar.f178a == obj) {
            return aVar.f179b;
        }
        a<K, V> aVar2 = this.f177d;
        if (aVar2 == null || aVar2.f178a != obj) {
            return null;
        }
        l(aVar2);
        return aVar2.f179b;
    }

    public final void l(a<K, V> aVar) {
        this.f177d = this.f176c;
        this.f176c = aVar;
    }

    public final void m(K k10, V v10) {
        l(new a<>(k10, v10));
    }
}
