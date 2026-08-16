package pf;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nMapWithDefault.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MutableMapWithDefaultImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,111:1\n349#2,6:112\n*S KotlinDebug\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MutableMapWithDefaultImpl\n*L\n108#1:112,6\n*E\n"})
public final class t0<K, V> implements s0<K, V> {

    @NotNull
    public final Map<K, V> f103888b;

    @NotNull
    public final Mf.l<K, V> f103889c;

    /* JADX WARN: Multi-variable type inference failed */
    public t0(@NotNull Map<K, V> map, @NotNull Mf.l<? super K, ? extends V> lVar) {
        kotlin.jvm.internal.M.p(map, "map");
        kotlin.jvm.internal.M.p(lVar, "default");
        this.f103888b = map;
        this.f103889c = lVar;
    }

    @Override
    public V W6(K k10) {
        Map<K, V> e22 = e2();
        V v10 = e22.get(k10);
        return (v10 != null || e22.containsKey(k10)) ? v10 : this.f103889c.invoke(k10);
    }

    @Override
    public void clear() {
        e2().clear();
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
        return this.f103888b;
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
    @Nullable
    public V put(K k10, V v10) {
        return e2().put(k10, v10);
    }

    @Override
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        kotlin.jvm.internal.M.p(from, "from");
        e2().putAll(from);
    }

    @Override
    @Nullable
    public V remove(Object obj) {
        return e2().remove(obj);
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
}
