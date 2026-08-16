package Y;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

public final class b<K, V> extends ArrayMap<K, V> {

    public int f29661b;

    @Override
    public void clear() {
        this.f29661b = 0;
        super.clear();
    }

    @Override
    public int hashCode() {
        if (this.f29661b == 0) {
            this.f29661b = super.hashCode();
        }
        return this.f29661b;
    }

    @Override
    public V put(K k10, V v10) {
        this.f29661b = 0;
        return (V) super.put(k10, v10);
    }

    @Override
    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f29661b = 0;
        super.putAll(simpleArrayMap);
    }

    @Override
    public V removeAt(int i10) {
        this.f29661b = 0;
        return (V) super.removeAt(i10);
    }

    @Override
    public V setValueAt(int i10, V v10) {
        this.f29661b = 0;
        return (V) super.setValueAt(i10, v10);
    }
}
