package androidx.arch.core.internal;

import androidx.arch.core.internal.SafeIterableMap;
import java.util.HashMap;
import java.util.Map;

public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {
    private HashMap<K, SafeIterableMap.Entry<K, V>> mHashMap = new HashMap<>();

    public Map.Entry<K, V> ceil(K k10) {
        if (contains(k10)) {
            return this.mHashMap.get(k10).mPrevious;
        }
        return null;
    }

    public boolean contains(K k10) {
        return this.mHashMap.containsKey(k10);
    }

    @Override
    public SafeIterableMap.Entry<K, V> get(K k10) {
        return this.mHashMap.get(k10);
    }

    @Override
    public V putIfAbsent(K k10, V v10) {
        SafeIterableMap.Entry<K, V> entry = get(k10);
        if (entry != null) {
            return entry.mValue;
        }
        this.mHashMap.put(k10, put(k10, v10));
        return null;
    }

    @Override
    public V remove(K k10) {
        V v10 = (V) super.remove(k10);
        this.mHashMap.remove(k10);
        return v10;
    }
}
