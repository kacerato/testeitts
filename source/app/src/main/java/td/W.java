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

public class W<V> extends AbstractMap<Integer, V> implements Map<Integer, V>, Externalizable, Cloneable {

    public static final long f24386c = 1;

    public ee.M<V> f24387b;

    public class a extends AbstractSet<Map.Entry<Integer, V>> {

        public class C0613a implements Iterator<Map.Entry<Integer, V>> {

            public final Zd.T<V> f24389b;

            public class C0614a implements Map.Entry<Integer, V> {

                public V f24391b;

                public final Object f24392c;

                public final Integer f24393d;

                /* JADX WARN: Multi-variable type inference failed */
                public C0614a(Object obj, Integer num) {
                    this.f24392c = obj;
                    this.f24393d = num;
                    this.f24391b = obj;
                }

                @Override
                public Integer getKey() {
                    return this.f24393d;
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24393d) && entry.getValue().equals(this.f24391b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public V getValue() {
                    return this.f24391b;
                }

                @Override
                public int hashCode() {
                    return this.f24393d.hashCode() + this.f24391b.hashCode();
                }

                @Override
                public V setValue(V v10) {
                    this.f24391b = v10;
                    return (V) W.this.put(this.f24393d, v10);
                }
            }

            public C0613a() {
                this.f24389b = W.this.f24387b.iterator();
            }

            @Override
            public Map.Entry<Integer, V> next() {
                this.f24389b.g();
                int key = this.f24389b.key();
                return new C0614a(this.f24389b.value(), key == W.this.f24387b.l() ? null : W.this.h(key));
            }

            @Override
            public boolean hasNext() {
                return this.f24389b.hasNext();
            }

            @Override
            public void remove() {
                this.f24389b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, V>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            W.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return W.this.containsKey(key) && W.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return W.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, V>> iterator() {
            return new C0613a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            W w10 = W.this;
            w10.f24387b.remove(w10.g(num));
            return true;
        }

        @Override
        public int size() {
            return W.this.f24387b.size();
        }
    }

    public W() {
    }

    @Override
    public void clear() {
        this.f24387b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24387b.F(((Integer) obj).intValue());
        }
        ee.M<V> m10 = this.f24387b;
        return m10.F(m10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f24387b.containsValue(obj);
    }

    public ee.M<V> e() {
        return this.f24387b;
    }

    @Override
    public Set<Map.Entry<Integer, V>> entrySet() {
        return new a();
    }

    @Override
    public V put(Integer num, V v10) {
        return this.f24387b.Gd(num == null ? this.f24387b.l() : g(num), v10);
    }

    public int g(Integer num) {
        return num.intValue();
    }

    @Override
    public V get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24387b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = g((Integer) obj);
        }
        return this.f24387b.get(l10);
    }

    public Integer h(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends V> map) {
        Iterator<Map.Entry<? extends Integer, ? extends V>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends V> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24387b = (ee.M) objectInput.readObject();
    }

    @Override
    public V remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24387b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = g((Integer) obj);
        }
        return this.f24387b.remove(l10);
    }

    @Override
    public int size() {
        return this.f24387b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24387b);
    }

    public W(ee.M<V> m10) {
        this.f24387b = m10;
    }
}
