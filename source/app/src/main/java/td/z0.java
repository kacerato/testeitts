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

public class z0 extends AbstractMap<Short, Short> implements Map<Short, Short>, Externalizable, Cloneable {

    public static final long f24821c = 1;

    public ee.m0 f24822b;

    public class a extends AbstractSet<Map.Entry<Short, Short>> {

        public class C0704a implements Iterator<Map.Entry<Short, Short>> {

            public final Zd.v0 f24824b;

            public class C0705a implements Map.Entry<Short, Short> {

                public Short f24826b;

                public final Short f24827c;

                public final Short f24828d;

                public C0705a(Short sh2, Short sh3) {
                    this.f24827c = sh2;
                    this.f24828d = sh3;
                    this.f24826b = sh2;
                }

                @Override
                public Short getKey() {
                    return this.f24828d;
                }

                @Override
                public Short getValue() {
                    return this.f24826b;
                }

                @Override
                public Short setValue(Short sh2) {
                    this.f24826b = sh2;
                    return z0.this.put(this.f24828d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24828d) && entry.getValue().equals(this.f24826b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24828d.hashCode() + this.f24826b.hashCode();
                }
            }

            public C0704a() {
                this.f24824b = z0.this.f24822b.iterator();
            }

            @Override
            public Map.Entry<Short, Short> next() {
                this.f24824b.g();
                short key = this.f24824b.key();
                Short j10 = key == z0.this.f24822b.l() ? null : z0.this.j(key);
                short value = this.f24824b.value();
                return new C0705a(value != z0.this.f24822b.i() ? z0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24824b.hasNext();
            }

            @Override
            public void remove() {
                this.f24824b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            z0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return z0.this.containsKey(key) && z0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return z0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, Short>> iterator() {
            return new C0704a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            z0 z0Var = z0.this;
            z0Var.f24822b.d(z0Var.h(sh2));
            return true;
        }

        @Override
        public int size() {
            return z0.this.f24822b.size();
        }
    }

    public z0() {
    }

    @Override
    public Short get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24822b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        short n02 = this.f24822b.n0(l10);
        if (n02 == this.f24822b.i()) {
            return null;
        }
        return k(n02);
    }

    @Override
    public void clear() {
        this.f24822b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24822b.z(h(obj));
        }
        ee.m0 m0Var = this.f24822b;
        return m0Var.z(m0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24822b.L(i(obj));
    }

    public ee.m0 e() {
        return this.f24822b;
    }

    @Override
    public Set<Map.Entry<Short, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(Short sh2, Short sh3) {
        short Da2 = this.f24822b.Da(sh2 == null ? this.f24822b.l() : h(sh2), sh3 == null ? this.f24822b.i() : i(sh3));
        if (Da2 == this.f24822b.i()) {
            return null;
        }
        return k(Da2);
    }

    @Override
    public Short remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24822b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        short d10 = this.f24822b.d(l10);
        if (d10 == this.f24822b.i()) {
            return null;
        }
        return k(d10);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public short i(Object obj) {
        return ((Short) obj).shortValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Short j(short s10) {
        return Short.valueOf(s10);
    }

    public Short k(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Short> map) {
        Iterator<Map.Entry<? extends Short, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24822b = (ee.m0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24822b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24822b);
    }

    public z0(ee.m0 m0Var) {
        this.f24822b = m0Var;
    }
}
