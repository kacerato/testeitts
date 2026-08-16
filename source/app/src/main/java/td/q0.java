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

public class q0 extends AbstractMap<Short, Byte> implements Map<Short, Byte>, Externalizable, Cloneable {

    public static final long f24683c = 1;

    public ee.f0 f24684b;

    public class a extends AbstractSet<Map.Entry<Short, Byte>> {

        public class C0676a implements Iterator<Map.Entry<Short, Byte>> {

            public final Zd.n0 f24686b;

            public class C0677a implements Map.Entry<Short, Byte> {

                public Byte f24688b;

                public final Byte f24689c;

                public final Short f24690d;

                public C0677a(Byte b10, Short sh2) {
                    this.f24689c = b10;
                    this.f24690d = sh2;
                    this.f24688b = b10;
                }

                @Override
                public Short getKey() {
                    return this.f24690d;
                }

                @Override
                public Byte getValue() {
                    return this.f24688b;
                }

                @Override
                public Byte setValue(Byte b10) {
                    this.f24688b = b10;
                    return q0.this.put(this.f24690d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24690d) && entry.getValue().equals(this.f24688b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24690d.hashCode() + this.f24688b.hashCode();
                }
            }

            public C0676a() {
                this.f24686b = q0.this.f24684b.iterator();
            }

            @Override
            public Map.Entry<Short, Byte> next() {
                this.f24686b.g();
                short key = this.f24686b.key();
                Short j10 = key == q0.this.f24684b.l() ? null : q0.this.j(key);
                byte value = this.f24686b.value();
                return new C0677a(value != q0.this.f24684b.i() ? q0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24686b.hasNext();
            }

            @Override
            public void remove() {
                this.f24686b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            q0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return q0.this.containsKey(key) && q0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return q0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, Byte>> iterator() {
            return new C0676a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            q0 q0Var = q0.this;
            q0Var.f24684b.d(q0Var.h(sh2));
            return true;
        }

        @Override
        public int size() {
            return q0.this.f24684b.size();
        }
    }

    public q0() {
    }

    @Override
    public Byte get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24684b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        byte n02 = this.f24684b.n0(l10);
        if (n02 == this.f24684b.i()) {
            return null;
        }
        return k(n02);
    }

    @Override
    public void clear() {
        this.f24684b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24684b.z(h(obj));
        }
        ee.f0 f0Var = this.f24684b;
        return f0Var.z(f0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24684b.P(i(obj));
    }

    public ee.f0 e() {
        return this.f24684b;
    }

    @Override
    public Set<Map.Entry<Short, Byte>> entrySet() {
        return new a();
    }

    @Override
    public Byte put(Short sh2, Byte b10) {
        byte ja2 = this.f24684b.ja(sh2 == null ? this.f24684b.l() : h(sh2), b10 == null ? this.f24684b.i() : i(b10));
        if (ja2 == this.f24684b.i()) {
            return null;
        }
        return k(ja2);
    }

    @Override
    public Byte remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24684b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        byte d10 = this.f24684b.d(l10);
        if (d10 == this.f24684b.i()) {
            return null;
        }
        return k(d10);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public byte i(Object obj) {
        return ((Byte) obj).byteValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Short j(short s10) {
        return Short.valueOf(s10);
    }

    public Byte k(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Byte> map) {
        Iterator<Map.Entry<? extends Short, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24684b = (ee.f0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24684b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24684b);
    }

    public q0(ee.f0 f0Var) {
        this.f24684b = f0Var;
    }
}
