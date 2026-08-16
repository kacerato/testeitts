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

public class u0 extends AbstractMap<Short, Integer> implements Map<Short, Integer>, Externalizable, Cloneable {

    public static final long f24750c = 1;

    public ee.j0 f24751b;

    public class a extends AbstractSet<Map.Entry<Short, Integer>> {

        public class C0690a implements Iterator<Map.Entry<Short, Integer>> {

            public final Zd.r0 f24753b;

            public class C0691a implements Map.Entry<Short, Integer> {

                public Integer f24755b;

                public final Integer f24756c;

                public final Short f24757d;

                public C0691a(Integer num, Short sh2) {
                    this.f24756c = num;
                    this.f24757d = sh2;
                    this.f24755b = num;
                }

                @Override
                public Short getKey() {
                    return this.f24757d;
                }

                @Override
                public Integer getValue() {
                    return this.f24755b;
                }

                @Override
                public Integer setValue(Integer num) {
                    this.f24755b = num;
                    return u0.this.put(this.f24757d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24757d) && entry.getValue().equals(this.f24755b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24757d.hashCode() + this.f24755b.hashCode();
                }
            }

            public C0690a() {
                this.f24753b = u0.this.f24751b.iterator();
            }

            @Override
            public Map.Entry<Short, Integer> next() {
                this.f24753b.g();
                short key = this.f24753b.key();
                Short j10 = key == u0.this.f24751b.l() ? null : u0.this.j(key);
                int value = this.f24753b.value();
                return new C0691a(value != u0.this.f24751b.i() ? u0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24753b.hasNext();
            }

            @Override
            public void remove() {
                this.f24753b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            u0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return u0.this.containsKey(key) && u0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return u0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, Integer>> iterator() {
            return new C0690a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            u0 u0Var = u0.this;
            u0Var.f24751b.d(u0Var.h(sh2));
            return true;
        }

        @Override
        public int size() {
            return u0.this.f24751b.size();
        }
    }

    public u0() {
    }

    @Override
    public Integer get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24751b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        int n02 = this.f24751b.n0(l10);
        if (n02 == this.f24751b.i()) {
            return null;
        }
        return k(n02);
    }

    @Override
    public void clear() {
        this.f24751b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24751b.z(h(obj));
        }
        ee.j0 j0Var = this.f24751b;
        return j0Var.z(j0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24751b.Q(i(obj));
    }

    public ee.j0 e() {
        return this.f24751b;
    }

    @Override
    public Set<Map.Entry<Short, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(Short sh2, Integer num) {
        int va2 = this.f24751b.va(sh2 == null ? this.f24751b.l() : h(sh2), num == null ? this.f24751b.i() : i(num));
        if (va2 == this.f24751b.i()) {
            return null;
        }
        return k(va2);
    }

    @Override
    public Integer remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24751b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        int d10 = this.f24751b.d(l10);
        if (d10 == this.f24751b.i()) {
            return null;
        }
        return k(d10);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public int i(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Short j(short s10) {
        return Short.valueOf(s10);
    }

    public Integer k(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Integer> map) {
        Iterator<Map.Entry<? extends Short, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24751b = (ee.j0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24751b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24751b);
    }

    public u0(ee.j0 j0Var) {
        this.f24751b = j0Var;
    }
}
