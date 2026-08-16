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

public class l0<K> extends AbstractMap<K, Double> implements Map<K, Double>, Externalizable, Cloneable {

    public static final long f24600c = 1;

    public ee.a0<K> f24601b;

    public class a extends AbstractSet<Map.Entry<K, Double>> {

        public class C0658a implements Iterator<Map.Entry<K, Double>> {

            public final Zd.h0<K> f24603b;

            public class C0659a implements Map.Entry<K, Double> {

                public Double f24605b;

                public final Double f24606c;

                public final Object f24607d;

                public C0659a(Double d10, Object obj) {
                    this.f24606c = d10;
                    this.f24607d = obj;
                    this.f24605b = d10;
                }

                @Override
                public Double getValue() {
                    return this.f24605b;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Double setValue(Double d10) {
                    this.f24605b = d10;
                    return l0.this.put(this.f24607d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24607d) && entry.getValue().equals(this.f24605b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public K getKey() {
                    return (K) this.f24607d;
                }

                @Override
                public int hashCode() {
                    return this.f24607d.hashCode() + this.f24605b.hashCode();
                }
            }

            public C0658a() {
                this.f24603b = l0.this.f24601b.iterator();
            }

            @Override
            public Map.Entry<K, Double> next() {
                this.f24603b.g();
                return new C0659a(l0.this.i(this.f24603b.value()), this.f24603b.key());
            }

            @Override
            public boolean hasNext() {
                return this.f24603b.hasNext();
            }

            @Override
            public void remove() {
                this.f24603b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<K, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            l0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return l0.this.containsKey(key) && l0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return l0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, Double>> iterator() {
            return new C0658a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            l0.this.f24601b.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override
        public int size() {
            return l0.this.f24601b.size();
        }
    }

    public l0() {
    }

    @Override
    public Double get(Object obj) {
        double d10 = this.f24601b.get(obj);
        if (d10 == this.f24601b.i()) {
            return null;
        }
        return i(d10);
    }

    @Override
    public void clear() {
        this.f24601b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f24601b.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24601b.T(h(obj));
    }

    public ee.a0<K> e() {
        return this.f24601b;
    }

    @Override
    public Set<Map.Entry<K, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(K k10, Double d10) {
        if (d10 != null) {
            return i(this.f24601b.sa(k10, h(d10)));
        }
        ee.a0<K> a0Var = this.f24601b;
        return i(a0Var.sa(k10, a0Var.i()));
    }

    @Override
    public Double remove(Object obj) {
        double remove = this.f24601b.remove(obj);
        if (remove == this.f24601b.i()) {
            return null;
        }
        return i(remove);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public Double i(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24601b.size() == 0;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Double> map) {
        Iterator<Map.Entry<? extends K, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends K, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24601b = (ee.a0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24601b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24601b);
    }

    public l0(ee.a0<K> a0Var) {
        this.f24601b = a0Var;
    }
}
