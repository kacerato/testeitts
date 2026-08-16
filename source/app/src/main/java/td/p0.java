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

public class p0<K> extends AbstractMap<K, Short> implements Map<K, Short>, Externalizable, Cloneable {

    public static final long f24665c = 1;

    public ee.e0<K> f24666b;

    public class a extends AbstractSet<Map.Entry<K, Short>> {

        public class C0672a implements Iterator<Map.Entry<K, Short>> {

            public final Zd.l0<K> f24668b;

            public class C0673a implements Map.Entry<K, Short> {

                public Short f24670b;

                public final Short f24671c;

                public final Object f24672d;

                public C0673a(Short sh2, Object obj) {
                    this.f24671c = sh2;
                    this.f24672d = obj;
                    this.f24670b = sh2;
                }

                @Override
                public Short getValue() {
                    return this.f24670b;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Short setValue(Short sh2) {
                    this.f24670b = sh2;
                    return p0.this.put(this.f24672d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24672d) && entry.getValue().equals(this.f24670b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public K getKey() {
                    return (K) this.f24672d;
                }

                @Override
                public int hashCode() {
                    return this.f24672d.hashCode() + this.f24670b.hashCode();
                }
            }

            public C0672a() {
                this.f24668b = p0.this.f24666b.iterator();
            }

            @Override
            public Map.Entry<K, Short> next() {
                this.f24668b.g();
                return new C0673a(p0.this.i(this.f24668b.value()), this.f24668b.key());
            }

            @Override
            public boolean hasNext() {
                return this.f24668b.hasNext();
            }

            @Override
            public void remove() {
                this.f24668b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<K, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            p0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return p0.this.containsKey(key) && p0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return p0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, Short>> iterator() {
            return new C0672a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            p0.this.f24666b.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override
        public int size() {
            return p0.this.f24666b.size();
        }
    }

    public p0() {
    }

    @Override
    public Short get(Object obj) {
        short s10 = this.f24666b.get(obj);
        if (s10 == this.f24666b.i()) {
            return null;
        }
        return i(s10);
    }

    @Override
    public void clear() {
        this.f24666b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f24666b.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24666b.L(h(obj));
    }

    public ee.e0<K> e() {
        return this.f24666b;
    }

    @Override
    public Set<Map.Entry<K, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(K k10, Short sh2) {
        if (sh2 != null) {
            return i(this.f24666b.ga(k10, h(sh2)));
        }
        ee.e0<K> e0Var = this.f24666b;
        return i(e0Var.ga(k10, e0Var.i()));
    }

    @Override
    public Short remove(Object obj) {
        short remove = this.f24666b.remove(obj);
        if (remove == this.f24666b.i()) {
            return null;
        }
        return i(remove);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public Short i(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24666b.size() == 0;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Short> map) {
        Iterator<Map.Entry<? extends K, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends K, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24666b = (ee.e0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24666b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24666b);
    }

    public p0(ee.e0<K> e0Var) {
        this.f24666b = e0Var;
    }
}
