package Lc;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class a<V> extends HashMap<String, V> {
    public a() {
    }

    public static String a(String key) {
        return key.toLowerCase(Locale.ROOT);
    }

    @Override
    public V put(String str, V v10) {
        return (V) super.put(a(str), v10);
    }

    @Override
    public boolean containsKey(Object key) {
        if (key instanceof String) {
            return super.containsKey(a((String) key));
        }
        return false;
    }

    @Override
    public V get(Object obj) {
        if (obj instanceof String) {
            return (V) super.get(a((String) obj));
        }
        return null;
    }

    @Override
    public V getOrDefault(Object key, V defaultValue) {
        V v10 = get(key);
        return v10 != null ? v10 : defaultValue;
    }

    @Override
    public void putAll(Map<? extends String, ? extends V> m10) {
        for (Map.Entry<? extends String, ? extends V> entry : m10.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V remove(Object obj) {
        if (obj instanceof String) {
            return (V) super.remove(a((String) obj));
        }
        return null;
    }

    public a(int initialCapacity) {
        super(initialCapacity);
    }

    public a(int initialCapacity, float loadFactor) {
        super(initialCapacity, loadFactor);
    }

    public a(Map<? extends String, ? extends V> m10) {
        putAll(m10);
    }
}
