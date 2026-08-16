package Td;

import ee.InterfaceC13081w;
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

public class B<V> extends AbstractMap<Double, V> implements Map<Double, V>, Externalizable, Cloneable {

    public static final long f24230c = 1;

    public InterfaceC13081w<V> f24231b;

    public class a extends AbstractSet<Map.Entry<Double, V>> {

        public class C0581a implements Iterator<Map.Entry<Double, V>> {

            public final Zd.A<V> f24233b;

            public class C0582a implements Map.Entry<Double, V> {

                public V f24235b;

                public final Object f24236c;

                public final Double f24237d;

                /* JADX WARN: Multi-variable type inference failed */
                public C0582a(Object obj, Double d10) {
                    this.f24236c = obj;
                    this.f24237d = d10;
                    this.f24235b = obj;
                }

                @Override
                public Double getKey() {
                    return this.f24237d;
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24237d) && entry.getValue().equals(this.f24235b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public V getValue() {
                    return this.f24235b;
                }

                @Override
                public int hashCode() {
                    return this.f24237d.hashCode() + this.f24235b.hashCode();
                }

                @Override
                public V setValue(V v10) {
                    this.f24235b = v10;
                    return (V) B.this.put(this.f24237d, v10);
                }
            }

            public C0581a() {
                this.f24233b = B.this.f24231b.iterator();
            }

            @Override
            public Map.Entry<Double, V> next() {
                this.f24233b.g();
                double key = this.f24233b.key();
                return new C0582a(this.f24233b.value(), key == B.this.f24231b.l() ? null : B.this.h(key));
            }

            @Override
            public boolean hasNext() {
                return this.f24233b.hasNext();
            }

            @Override
            public void remove() {
                this.f24233b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, V>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            B.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return B.this.containsKey(key) && B.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return B.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, V>> iterator() {
            return new C0581a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            B b10 = B.this;
            b10.f24231b.a(b10.g(d10));
            return true;
        }

        @Override
        public int size() {
            return B.this.f24231b.size();
        }
    }

    public B() {
    }

    @Override
    public void clear() {
        this.f24231b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24231b.A(((Double) obj).doubleValue());
        }
        InterfaceC13081w<V> interfaceC13081w = this.f24231b;
        return interfaceC13081w.A(interfaceC13081w.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f24231b.containsValue(obj);
    }

    public InterfaceC13081w<V> e() {
        return this.f24231b;
    }

    @Override
    public Set<Map.Entry<Double, V>> entrySet() {
        return new a();
    }

    @Override
    public V put(Double d10, V v10) {
        return this.f24231b.W2(d10 == null ? this.f24231b.l() : g(d10), v10);
    }

    public double g(Double d10) {
        return d10.doubleValue();
    }

    @Override
    public V get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24231b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = g((Double) obj);
        }
        return this.f24231b.p0(l10);
    }

    public Double h(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends V> map) {
        Iterator<Map.Entry<? extends Double, ? extends V>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends V> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24231b = (InterfaceC13081w) objectInput.readObject();
    }

    @Override
    public V remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24231b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = g((Double) obj);
        }
        return this.f24231b.a(l10);
    }

    @Override
    public int size() {
        return this.f24231b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24231b);
    }

    public B(InterfaceC13081w<V> interfaceC13081w) {
        this.f24231b = interfaceC13081w;
    }
}
