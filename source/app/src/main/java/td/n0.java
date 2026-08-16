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

public class n0<K> extends AbstractMap<K, Integer> implements Map<K, Integer>, Externalizable, Cloneable {

    public static final long f24636c = 1;

    public ee.c0<K> f24637b;

    public class a extends AbstractSet<Map.Entry<K, Integer>> {

        public class C0666a implements Iterator<Map.Entry<K, Integer>> {

            public final Zd.j0<K> f24639b;

            public class C0667a implements Map.Entry<K, Integer> {

                public Integer f24641b;

                public final Integer f24642c;

                public final Object f24643d;

                public C0667a(Integer num, Object obj) {
                    this.f24642c = num;
                    this.f24643d = obj;
                    this.f24641b = num;
                }

                @Override
                public Integer getValue() {
                    return this.f24641b;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Integer setValue(Integer num) {
                    this.f24641b = num;
                    return n0.this.put(this.f24643d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24643d) && entry.getValue().equals(this.f24641b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public K getKey() {
                    return (K) this.f24643d;
                }

                @Override
                public int hashCode() {
                    return this.f24643d.hashCode() + this.f24641b.hashCode();
                }
            }

            public C0666a() {
                this.f24639b = n0.this.f24637b.iterator();
            }

            @Override
            public Map.Entry<K, Integer> next() {
                this.f24639b.g();
                return new C0667a(n0.this.i(this.f24639b.value()), this.f24639b.key());
            }

            @Override
            public boolean hasNext() {
                return this.f24639b.hasNext();
            }

            @Override
            public void remove() {
                this.f24639b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<K, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            n0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return n0.this.containsKey(key) && n0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return n0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, Integer>> iterator() {
            return new C0666a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            n0.this.f24637b.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override
        public int size() {
            return n0.this.f24637b.size();
        }
    }

    public n0() {
    }

    @Override
    public Integer get(Object obj) {
        int i10 = this.f24637b.get(obj);
        if (i10 == this.f24637b.i()) {
            return null;
        }
        return i(i10);
    }

    @Override
    public void clear() {
        this.f24637b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f24637b.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24637b.Q(h(obj));
    }

    public ee.c0<K> e() {
        return this.f24637b;
    }

    @Override
    public Set<Map.Entry<K, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(K k10, Integer num) {
        if (num != null) {
            return i(this.f24637b.Y9(k10, h(num)));
        }
        ee.c0<K> c0Var = this.f24637b;
        return i(c0Var.Y9(k10, c0Var.i()));
    }

    @Override
    public Integer remove(Object obj) {
        int remove = this.f24637b.remove(obj);
        if (remove == this.f24637b.i()) {
            return null;
        }
        return i(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public Integer i(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24637b.size() == 0;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Integer> map) {
        Iterator<Map.Entry<? extends K, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends K, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24637b = (ee.c0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24637b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24637b);
    }

    public n0(ee.c0<K> c0Var) {
        this.f24637b = c0Var;
    }
}
