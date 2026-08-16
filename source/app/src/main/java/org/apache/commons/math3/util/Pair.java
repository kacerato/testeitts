package org.apache.commons.math3.util;

public class Pair<K, V> {
    private final K key;
    private final V value;

    public Pair(K k10, V v10) {
        this.key = k10;
        this.value = v10;
    }

    public static <K, V> Pair<K, V> create(K k10, V v10) {
        return new Pair<>(k10, v10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        K k10 = this.key;
        if (k10 != null ? k10.equals(pair.key) : pair.key == null) {
            V v10 = this.value;
            V v11 = pair.value;
            if (v10 == null) {
                if (v11 == null) {
                    return true;
                }
            } else if (v10.equals(v11)) {
                return true;
            }
        }
        return false;
    }

    public K getFirst() {
        return this.key;
    }

    public K getKey() {
        return this.key;
    }

    public V getSecond() {
        return this.value;
    }

    public V getValue() {
        return this.value;
    }

    public int hashCode() {
        K k10 = this.key;
        int hashCode = k10 == null ? 0 : k10.hashCode();
        V v10 = this.value;
        int hashCode2 = v10 != null ? v10.hashCode() : 0;
        return ((hashCode * 37) + hashCode2) ^ (hashCode2 >>> 16);
    }

    public String toString() {
        return "[" + ((Object) getKey()) + ", " + ((Object) getValue()) + "]";
    }

    public Pair(Pair<? extends K, ? extends V> pair) {
        this(pair.getKey(), pair.getValue());
    }
}
