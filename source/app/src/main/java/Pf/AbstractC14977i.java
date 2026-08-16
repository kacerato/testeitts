package pf;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.1")
public abstract class AbstractC14977i<K, V> extends AbstractMap<K, V> implements Map<K, V>, Nf.g {
    public abstract Set<Map.Entry<K, V>> e();

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        return e();
    }

    public Set<Object> i() {
        return super.o();
    }

    public int j() {
        return super.size();
    }

    public Collection<Object> k() {
        return super.values();
    }

    @Override
    public final Set<K> o() {
        return (Set<K>) i();
    }

    @Override
    @InterfaceC14394D
    @Nullable
    public abstract V put(K k10, V v10);

    @Override
    public final int size() {
        return j();
    }

    @Override
    public final Collection<V> values() {
        return (Collection<V>) k();
    }
}
