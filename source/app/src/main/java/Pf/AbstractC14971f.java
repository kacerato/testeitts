package pf;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14422l0;
import org.apache.commons.math3.geometry.VectorFormat;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nAbstractMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1807#2,3:154\n1786#2,3:157\n296#2,2:160\n*S KotlinDebug\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap\n*L\n28#1:154,3\n60#1:157,3\n141#1:160,2\n*E\n"})
@InterfaceC14422l0(version = "1.1")
public abstract class AbstractC14971f<K, V> implements Map<K, V>, Nf.a {

    @NotNull
    public static final a f103853d = new a(null);

    @Nullable
    public volatile Set<? extends K> f103854b;

    @Nullable
    public volatile Collection<? extends V> f103855c;

    @kotlin.jvm.internal.t0({"SMAP\nAbstractMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,153:1\n1#2:154\n*E\n"})
    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final boolean a(@NotNull Map.Entry<?, ?> e10, @Nullable Object obj) {
            kotlin.jvm.internal.M.p(e10, "e");
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return kotlin.jvm.internal.M.g(e10.getKey(), entry.getKey()) && kotlin.jvm.internal.M.g(e10.getValue(), entry.getValue());
        }

        public final int b(@NotNull Map.Entry<?, ?> e10) {
            kotlin.jvm.internal.M.p(e10, "e");
            Object key = e10.getKey();
            int hashCode = key != null ? key.hashCode() : 0;
            Object value = e10.getValue();
            return hashCode ^ (value != null ? value.hashCode() : 0);
        }

        @NotNull
        public final String c(@NotNull Map.Entry<?, ?> e10) {
            kotlin.jvm.internal.M.p(e10, "e");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e10.getKey());
            sb2.append('=');
            sb2.append(e10.getValue());
            return sb2.toString();
        }

        public a() {
        }
    }

    public static final class b extends AbstractC14979k<K> {

        public final AbstractC14971f<K, V> f103856c;

        public static final class a implements Iterator<K>, Nf.a {

            public final Iterator<Map.Entry<K, V>> f103857b;

            /* JADX WARN: Multi-variable type inference failed */
            public a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.f103857b = it;
            }

            @Override
            public boolean hasNext() {
                return this.f103857b.hasNext();
            }

            @Override
            public K next() {
                return this.f103857b.next().getKey();
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(AbstractC14971f<K, ? extends V> abstractC14971f) {
            this.f103856c = abstractC14971f;
        }

        @Override
        public int b() {
            return this.f103856c.size();
        }

        @Override
        public boolean contains(Object obj) {
            return this.f103856c.containsKey(obj);
        }

        @Override
        public Iterator<K> iterator() {
            return new a(this.f103856c.entrySet().iterator());
        }
    }

    public static final class c extends AbstractC14963b<V> {

        public final AbstractC14971f<K, V> f103858b;

        public static final class a implements Iterator<V>, Nf.a {

            public final Iterator<Map.Entry<K, V>> f103859b;

            /* JADX WARN: Multi-variable type inference failed */
            public a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.f103859b = it;
            }

            @Override
            public boolean hasNext() {
                return this.f103859b.hasNext();
            }

            @Override
            public V next() {
                return this.f103859b.next().getValue();
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c(AbstractC14971f<K, ? extends V> abstractC14971f) {
            this.f103858b = abstractC14971f;
        }

        @Override
        public int b() {
            return this.f103858b.size();
        }

        @Override
        public boolean contains(Object obj) {
            return this.f103858b.containsValue(obj);
        }

        @Override
        public Iterator<V> iterator() {
            return new a(this.f103858b.entrySet().iterator());
        }
    }

    public static final CharSequence o(AbstractC14971f abstractC14971f, Map.Entry it) {
        kotlin.jvm.internal.M.p(it, "it");
        return abstractC14971f.n(it);
    }

    public final boolean b(@Nullable Map.Entry<?, ?> entry) {
        if (entry == null) {
            return false;
        }
        Object key = entry.getKey();
        Object value = entry.getValue();
        kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
        V v10 = get(key);
        if (!kotlin.jvm.internal.M.g(value, v10)) {
            return false;
        }
        if (v10 != null) {
            return true;
        }
        kotlin.jvm.internal.M.n(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.containsKey, *>");
        return containsKey(key);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean containsKey(Object obj) {
        return l(obj) != null;
    }

    @Override
    public boolean containsValue(Object obj) {
        Set<Map.Entry<K, V>> entrySet = entrySet();
        if ((entrySet instanceof Collection) && entrySet.isEmpty()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = entrySet.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.M.g(it.next().getValue(), obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Set<Map.Entry<K, V>> e();

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        return e();
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if ((entrySet instanceof Collection) && entrySet.isEmpty()) {
            return true;
        }
        Iterator<Map.Entry<K, V>> it = entrySet.iterator();
        while (it.hasNext()) {
            if (!b(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Nullable
    public V get(Object obj) {
        Map.Entry<K, V> l10 = l(obj);
        if (l10 != null) {
            return l10.getValue();
        }
        return null;
    }

    @Override
    public int hashCode() {
        return entrySet().hashCode();
    }

    @NotNull
    public Set<K> i() {
        if (this.f103854b == null) {
            this.f103854b = new b(this);
        }
        Set<? extends K> set = this.f103854b;
        kotlin.jvm.internal.M.m(set);
        return set;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public int j() {
        return entrySet().size();
    }

    @NotNull
    public Collection<V> k() {
        if (this.f103855c == null) {
            this.f103855c = new c(this);
        }
        Collection<? extends V> collection = this.f103855c;
        kotlin.jvm.internal.M.m(collection);
        return collection;
    }

    @Override
    public final Set<K> o() {
        return i();
    }

    public final Map.Entry<K, V> l(K k10) {
        Map.Entry<K, V> entry;
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                entry = null;
                break;
            }
            entry = it.next();
            if (kotlin.jvm.internal.M.g(entry.getKey(), k10)) {
                break;
            }
        }
        return entry;
    }

    public final String m(Object obj) {
        return obj == this ? "(this Map)" : String.valueOf(obj);
    }

    public final String n(Map.Entry<? extends K, ? extends V> entry) {
        return m(entry.getKey()) + '=' + m(entry.getValue());
    }

    @Override
    public V put(K k10, V v10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return j();
    }

    @NotNull
    public String toString() {
        return S.r3(entrySet(), ", ", "{", VectorFormat.DEFAULT_SUFFIX, 0, null, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                CharSequence o10;
                o10 = AbstractC14971f.o(AbstractC14971f.this, (Map.Entry) obj);
                return o10;
            }
        }, 24, null);
    }

    @Override
    public final Collection<V> values() {
        return k();
    }
}
