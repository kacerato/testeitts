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

public class Y extends AbstractMap<Integer, Short> implements Map<Integer, Short>, Externalizable, Cloneable {

    public static final long f24399c = 1;

    public ee.N f24400b;

    public class a extends AbstractSet<Map.Entry<Integer, Short>> {

        public class C0615a implements Iterator<Map.Entry<Integer, Short>> {

            public final Zd.U f24402b;

            public class C0616a implements Map.Entry<Integer, Short> {

                public Short f24404b;

                public final Short f24405c;

                public final Integer f24406d;

                public C0616a(Short sh2, Integer num) {
                    this.f24405c = sh2;
                    this.f24406d = num;
                    this.f24404b = sh2;
                }

                @Override
                public Integer getKey() {
                    return this.f24406d;
                }

                @Override
                public Short getValue() {
                    return this.f24404b;
                }

                @Override
                public Short setValue(Short sh2) {
                    this.f24404b = sh2;
                    return Y.this.put(this.f24406d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24406d) && entry.getValue().equals(this.f24404b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24406d.hashCode() + this.f24404b.hashCode();
                }
            }

            public C0615a() {
                this.f24402b = Y.this.f24400b.iterator();
            }

            @Override
            public Map.Entry<Integer, Short> next() {
                this.f24402b.g();
                int key = this.f24402b.key();
                Integer j10 = key == Y.this.f24400b.l() ? null : Y.this.j(key);
                short value = this.f24402b.value();
                return new C0616a(value != Y.this.f24400b.i() ? Y.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24402b.hasNext();
            }

            @Override
            public void remove() {
                this.f24402b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            Y.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return Y.this.containsKey(key) && Y.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return Y.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, Short>> iterator() {
            return new C0615a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            Y y10 = Y.this;
            y10.f24400b.remove(y10.h(num));
            return true;
        }

        @Override
        public int size() {
            return Y.this.f24400b.size();
        }
    }

    public Y() {
    }

    @Override
    public Short get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24400b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        short s10 = this.f24400b.get(l10);
        if (s10 == this.f24400b.i()) {
            return null;
        }
        return k(s10);
    }

    @Override
    public void clear() {
        this.f24400b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24400b.F(h(obj));
        }
        ee.N n10 = this.f24400b;
        return n10.F(n10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24400b.L(i(obj));
    }

    public ee.N e() {
        return this.f24400b;
    }

    @Override
    public Set<Map.Entry<Integer, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(Integer num, Short sh2) {
        short p52 = this.f24400b.p5(num == null ? this.f24400b.l() : h(num), sh2 == null ? this.f24400b.i() : i(sh2));
        if (p52 == this.f24400b.i()) {
            return null;
        }
        return k(p52);
    }

    @Override
    public Short remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24400b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        short remove = this.f24400b.remove(l10);
        if (remove == this.f24400b.i()) {
            return null;
        }
        return k(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public short i(Object obj) {
        return ((Short) obj).shortValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Integer j(int i10) {
        return Integer.valueOf(i10);
    }

    public Short k(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Short> map) {
        Iterator<Map.Entry<? extends Integer, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24400b = (ee.N) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24400b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24400b);
    }

    public Y(ee.N n10) {
        this.f24400b = n10;
    }
}
