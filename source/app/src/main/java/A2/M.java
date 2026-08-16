package A2;

import com.google.common.collect.e3;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public class M<K, V> {

    public final Map<K, V> f171a;

    @CheckForNull
    public volatile transient Map.Entry<K, V> f172b;

    public class a extends AbstractSet<K> {

        public class C0003a extends e3<K> {

            public final Iterator f174b;

            public C0003a(Iterator it) {
                this.f174b = it;
            }

            @Override
            public boolean hasNext() {
                return this.f174b.hasNext();
            }

            @Override
            public K next() {
                Map.Entry entry = (Map.Entry) this.f174b.next();
                M.this.f172b = entry;
                return (K) entry.getKey();
            }
        }

        public a() {
        }

        @Override
        public e3<K> iterator() {
            return new C0003a(M.this.f171a.entrySet().iterator());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return M.this.e(obj);
        }

        @Override
        public int size() {
            return M.this.f171a.size();
        }
    }

    public M(Map<K, V> map) {
        this.f171a = (Map) w2.H.E(map);
    }

    public final void c() {
        d();
        this.f171a.clear();
    }

    public void d() {
        this.f172b = null;
    }

    public final boolean e(@CheckForNull Object obj) {
        return g(obj) != null || this.f171a.containsKey(obj);
    }

    @CheckForNull
    public V f(Object obj) {
        w2.H.E(obj);
        V g10 = g(obj);
        return g10 == null ? h(obj) : g10;
    }

    @CheckForNull
    public V g(@CheckForNull Object obj) {
        Map.Entry<K, V> entry = this.f172b;
        if (entry == null || entry.getKey() != obj) {
            return null;
        }
        return entry.getValue();
    }

    @CheckForNull
    public final V h(Object obj) {
        w2.H.E(obj);
        return this.f171a.get(obj);
    }

    @I2.a
    @CheckForNull
    public final V i(K k10, V v10) {
        w2.H.E(k10);
        w2.H.E(v10);
        d();
        return this.f171a.put(k10, v10);
    }

    @I2.a
    @CheckForNull
    public final V j(Object obj) {
        w2.H.E(obj);
        d();
        return this.f171a.remove(obj);
    }

    public final Set<K> k() {
        return new a();
    }
}
