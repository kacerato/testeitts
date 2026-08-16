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

public class T extends AbstractMap<Integer, Integer> implements Map<Integer, Integer>, Externalizable, Cloneable {

    public static final long f24366c = 1;

    public ee.K f24367b;

    public class a extends AbstractSet<Map.Entry<Integer, Integer>> {

        public class C0609a implements Iterator<Map.Entry<Integer, Integer>> {

            public final Zd.P f24369b;

            public class C0610a implements Map.Entry<Integer, Integer> {

                public Integer f24371b;

                public final Integer f24372c;

                public final Integer f24373d;

                public C0610a(Integer num, Integer num2) {
                    this.f24372c = num;
                    this.f24373d = num2;
                    this.f24371b = num;
                }

                @Override
                public Integer getKey() {
                    return this.f24373d;
                }

                @Override
                public Integer getValue() {
                    return this.f24371b;
                }

                @Override
                public Integer setValue(Integer num) {
                    this.f24371b = num;
                    return T.this.put(this.f24373d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24373d) && entry.getValue().equals(this.f24371b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24373d.hashCode() + this.f24371b.hashCode();
                }
            }

            public C0609a() {
                this.f24369b = T.this.f24367b.iterator();
            }

            @Override
            public Map.Entry<Integer, Integer> next() {
                this.f24369b.g();
                int key = this.f24369b.key();
                Integer j10 = key == T.this.f24367b.l() ? null : T.this.j(key);
                int value = this.f24369b.value();
                return new C0610a(value != T.this.f24367b.i() ? T.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24369b.hasNext();
            }

            @Override
            public void remove() {
                this.f24369b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            T.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return T.this.containsKey(key) && T.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return T.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, Integer>> iterator() {
            return new C0609a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            T t10 = T.this;
            t10.f24367b.remove(t10.h(num));
            return true;
        }

        @Override
        public int size() {
            return T.this.f24367b.size();
        }
    }

    public T() {
    }

    @Override
    public Integer get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24367b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        int i10 = this.f24367b.get(l10);
        if (i10 == this.f24367b.i()) {
            return null;
        }
        return k(i10);
    }

    @Override
    public void clear() {
        this.f24367b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24367b.F(h(obj));
        }
        ee.K k10 = this.f24367b;
        return k10.F(k10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24367b.Q(i(obj));
    }

    public ee.K e() {
        return this.f24367b;
    }

    @Override
    public Set<Map.Entry<Integer, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(Integer num, Integer num2) {
        int f52 = this.f24367b.f5(num == null ? this.f24367b.l() : h(num), num2 == null ? this.f24367b.i() : i(num2));
        if (f52 == this.f24367b.i()) {
            return null;
        }
        return k(f52);
    }

    @Override
    public Integer remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24367b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        int remove = this.f24367b.remove(l10);
        if (remove == this.f24367b.i()) {
            return null;
        }
        return k(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public int i(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Integer j(int i10) {
        return Integer.valueOf(i10);
    }

    public Integer k(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Integer> map) {
        Iterator<Map.Entry<? extends Integer, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24367b = (ee.K) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24367b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24367b);
    }

    public T(ee.K k10) {
        this.f24367b = k10;
    }
}
