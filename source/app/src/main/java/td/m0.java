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

public class m0<K> extends AbstractMap<K, Float> implements Map<K, Float>, Externalizable, Cloneable {

    public static final long f24618c = 1;

    public ee.b0<K> f24619b;

    public class a extends AbstractSet<Map.Entry<K, Float>> {

        public class C0662a implements Iterator<Map.Entry<K, Float>> {

            public final Zd.i0<K> f24621b;

            public class C0663a implements Map.Entry<K, Float> {

                public Float f24623b;

                public final Float f24624c;

                public final Object f24625d;

                public C0663a(Float f10, Object obj) {
                    this.f24624c = f10;
                    this.f24625d = obj;
                    this.f24623b = f10;
                }

                @Override
                public Float getValue() {
                    return this.f24623b;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Float setValue(Float f10) {
                    this.f24623b = f10;
                    return m0.this.put(this.f24625d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24625d) && entry.getValue().equals(this.f24623b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public K getKey() {
                    return (K) this.f24625d;
                }

                @Override
                public int hashCode() {
                    return this.f24625d.hashCode() + this.f24623b.hashCode();
                }
            }

            public C0662a() {
                this.f24621b = m0.this.f24619b.iterator();
            }

            @Override
            public Map.Entry<K, Float> next() {
                this.f24621b.g();
                return new C0663a(m0.this.i(this.f24621b.value()), this.f24621b.key());
            }

            @Override
            public boolean hasNext() {
                return this.f24621b.hasNext();
            }

            @Override
            public void remove() {
                this.f24621b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<K, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            m0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return m0.this.containsKey(key) && m0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return m0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, Float>> iterator() {
            return new C0662a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            m0.this.f24619b.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override
        public int size() {
            return m0.this.f24619b.size();
        }
    }

    public m0() {
    }

    @Override
    public Float get(Object obj) {
        float f10 = this.f24619b.get(obj);
        if (f10 == this.f24619b.i()) {
            return null;
        }
        return i(f10);
    }

    @Override
    public void clear() {
        this.f24619b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f24619b.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24619b.U(h(obj));
    }

    public ee.b0<K> e() {
        return this.f24619b;
    }

    @Override
    public Set<Map.Entry<K, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(K k10, Float f10) {
        if (f10 != null) {
            return i(this.f24619b.wa(k10, h(f10)));
        }
        ee.b0<K> b0Var = this.f24619b;
        return i(b0Var.wa(k10, b0Var.i()));
    }

    @Override
    public Float remove(Object obj) {
        float remove = this.f24619b.remove(obj);
        if (remove == this.f24619b.i()) {
            return null;
        }
        return i(remove);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public Float i(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24619b.size() == 0;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Float> map) {
        Iterator<Map.Entry<? extends K, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends K, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24619b = (ee.b0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24619b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24619b);
    }

    public m0(ee.b0<K> b0Var) {
        this.f24619b = b0Var;
    }
}
