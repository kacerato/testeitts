package Td;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class L<V> extends AbstractMap<Float, V> implements Map<Float, V>, Externalizable, Cloneable {

    public static final long f24308c = 1;

    public ee.E<V> f24309b;

    public class a extends AbstractSet<Map.Entry<Float, V>> {

        public class C0597a implements Iterator<Map.Entry<Float, V>> {

            public final Zd.J<V> f24311b;

            public class C0598a implements Map.Entry<Float, V> {

                public V f24313b;

                public final Object f24314c;

                public final Float f24315d;

                /* JADX WARN: Multi-variable type inference failed */
                public C0598a(Object obj, Float f10) {
                    this.f24314c = obj;
                    this.f24315d = f10;
                    this.f24313b = obj;
                }

                @Override
                public Float getKey() {
                    return this.f24315d;
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24315d) && entry.getValue().equals(this.f24313b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public V getValue() {
                    return this.f24313b;
                }

                @Override
                public int hashCode() {
                    return this.f24315d.hashCode() + this.f24313b.hashCode();
                }

                @Override
                public V setValue(V v10) {
                    this.f24313b = v10;
                    return (V) L.this.put(this.f24315d, v10);
                }
            }

            public C0597a() {
                this.f24311b = L.this.f24309b.iterator();
            }

            @Override
            public Map.Entry<Float, V> next() {
                this.f24311b.g();
                float key = this.f24311b.key();
                return new C0598a(this.f24311b.value(), key == L.this.f24309b.l() ? null : L.this.h(key));
            }

            @Override
            public boolean hasNext() {
                return this.f24311b.hasNext();
            }

            @Override
            public void remove() {
                this.f24311b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, V>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            L.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return L.this.containsKey(key) && L.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return L.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, V>> iterator() {
            return new C0597a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            L l10 = L.this;
            l10.f24309b.c(l10.g(f10));
            return true;
        }

        @Override
        public int size() {
            return L.this.f24309b.size();
        }
    }

    public L() {
    }

    @Override
    public void clear() {
        this.f24309b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24309b.H(((Float) obj).floatValue());
        }
        ee.E<V> e10 = this.f24309b;
        return e10.H(e10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f24309b.containsValue(obj);
    }

    public ee.E<V> e() {
        return this.f24309b;
    }

    @Override
    public Set<Map.Entry<Float, V>> entrySet() {
        return new a();
    }

    @Override
    public V put(Float f10, V v10) {
        return this.f24309b.Me(f10 == null ? this.f24309b.l() : g(f10), v10);
    }

    public float g(Float f10) {
        return f10.floatValue();
    }

    @Override
    public V get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24309b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = g((Float) obj);
        }
        return this.f24309b.q0(l10);
    }

    public Float h(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public void putAll(Map<? extends Float, ? extends V> map) {
        Iterator<Map.Entry<? extends Float, ? extends V>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends V> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24309b = (ee.E) objectInput.readObject();
    }

    @Override
    public V remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24309b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = g((Float) obj);
        }
        return this.f24309b.c(l10);
    }

    @Override
    public int size() {
        return this.f24309b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24309b);
    }

    public L(ee.E<V> e10) {
        this.f24309b = e10;
    }
}
