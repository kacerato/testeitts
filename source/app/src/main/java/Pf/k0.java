package pf;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nMapWithDefault.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MapWithDefaultImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,111:1\n349#2,6:112\n*S KotlinDebug\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MapWithDefaultImpl\n*L\n87#1:112,6\n*E\n"})
public final class k0<K, V> implements j0<K, V> {

    @NotNull
    public final Map<K, V> f103863b;

    @NotNull
    public final Mf.l<K, V> f103864c;

    /* JADX WARN: Multi-variable type inference failed */
    public k0(@NotNull Map<K, ? extends V> map, @NotNull Mf.l<? super K, ? extends V> lVar) {
        kotlin.jvm.internal.M.p(map, "map");
        kotlin.jvm.internal.M.p(lVar, "default");
        this.f103863b = map;
        this.f103864c = lVar;
    }

    @Override
    public V W6(K k10) {
        Map<K, V> e22 = e2();
        V v10 = e22.get(k10);
        return (v10 != null || e22.containsKey(k10)) ? v10 : this.f103864c.invoke(k10);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean containsKey(Object obj) {
        return e2().containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return e2().containsValue(obj);
    }

    @NotNull
    public Set<Map.Entry<K, V>> e() {
        return e2().entrySet();
    }

    @Override
    @NotNull
    public Map<K, V> e2() {
        return this.f103863b;
    }

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        return e();
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        return e2().equals(obj);
    }

    @Override
    @Nullable
    public V get(Object obj) {
        return e2().get(obj);
    }

    @Override
    public int hashCode() {
        return e2().hashCode();
    }

    @NotNull
    public Set<K> i() {
        return e2().o();
    }

    @Override
    public boolean isEmpty() {
        return e2().isEmpty();
    }

    public int j() {
        return e2().size();
    }

    @NotNull
    public Collection<V> k() {
        return e2().values();
    }

    @Override
    public final Set<K> o() {
        return i();
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
        return e2().toString();
    }

    @Override
    public final Collection<V> values() {
        return k();
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
