package Td;

import Zd.InterfaceC3452j;
import ee.InterfaceC13067h;
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

public class C3071j extends AbstractMap<Byte, Short> implements Map<Byte, Short>, Externalizable, Cloneable {

    public static final long f24555c = 1;

    public InterfaceC13067h f24556b;

    public class a extends AbstractSet<Map.Entry<Byte, Short>> {

        public class C0648a implements Iterator<Map.Entry<Byte, Short>> {

            public final InterfaceC3452j f24558b;

            public class C0649a implements Map.Entry<Byte, Short> {

                public Short f24560b;

                public final Short f24561c;

                public final Byte f24562d;

                public C0649a(Short sh2, Byte b10) {
                    this.f24561c = sh2;
                    this.f24562d = b10;
                    this.f24560b = sh2;
                }

                @Override
                public Byte getKey() {
                    return this.f24562d;
                }

                @Override
                public Short getValue() {
                    return this.f24560b;
                }

                @Override
                public Short setValue(Short sh2) {
                    this.f24560b = sh2;
                    return C3071j.this.put(this.f24562d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24562d) && entry.getValue().equals(this.f24560b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24562d.hashCode() + this.f24560b.hashCode();
                }
            }

            public C0648a() {
                this.f24558b = C3071j.this.f24556b.iterator();
            }

            @Override
            public Map.Entry<Byte, Short> next() {
                this.f24558b.g();
                byte key = this.f24558b.key();
                Byte j10 = key == C3071j.this.f24556b.l() ? null : C3071j.this.j(key);
                short value = this.f24558b.value();
                return new C0649a(value != C3071j.this.f24556b.i() ? C3071j.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24558b.hasNext();
            }

            @Override
            public void remove() {
                this.f24558b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3071j.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3071j.this.containsKey(key) && C3071j.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3071j.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, Short>> iterator() {
            return new C0648a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3071j c3071j = C3071j.this;
            c3071j.f24556b.m(c3071j.h(b10));
            return true;
        }

        @Override
        public int size() {
            return C3071j.this.f24556b.size();
        }
    }

    public C3071j() {
    }

    @Override
    public Short get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24556b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        short s02 = this.f24556b.s0(l10);
        if (s02 == this.f24556b.i()) {
            return null;
        }
        return k(s02);
    }

    @Override
    public void clear() {
        this.f24556b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24556b.D(h(obj));
        }
        InterfaceC13067h interfaceC13067h = this.f24556b;
        return interfaceC13067h.D(interfaceC13067h.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24556b.L(i(obj));
    }

    public InterfaceC13067h e() {
        return this.f24556b;
    }

    @Override
    public Set<Map.Entry<Byte, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(Byte b10, Short sh2) {
        short s42 = this.f24556b.s4(b10 == null ? this.f24556b.l() : h(b10), sh2 == null ? this.f24556b.i() : i(sh2));
        if (s42 == this.f24556b.i()) {
            return null;
        }
        return k(s42);
    }

    @Override
    public Short remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24556b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        short m10 = this.f24556b.m(l10);
        if (m10 == this.f24556b.i()) {
            return null;
        }
        return k(m10);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public short i(Object obj) {
        return ((Short) obj).shortValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Byte j(byte b10) {
        return Byte.valueOf(b10);
    }

    public Short k(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Short> map) {
        Iterator<Map.Entry<? extends Byte, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24556b = (InterfaceC13067h) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24556b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24556b);
    }

    public C3071j(InterfaceC13067h interfaceC13067h) {
        this.f24556b = interfaceC13067h;
    }
}
