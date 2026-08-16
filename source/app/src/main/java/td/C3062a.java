package Td;

import Zd.InterfaceC3444b;
import ee.InterfaceC13060a;
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

public class C3062a extends AbstractMap<Byte, Byte> implements Map<Byte, Byte>, Externalizable, Cloneable {

    public static final long f24417c = 1;

    public InterfaceC13060a f24418b;

    public class C0619a extends AbstractSet<Map.Entry<Byte, Byte>> {

        public class C0620a implements Iterator<Map.Entry<Byte, Byte>> {

            public final InterfaceC3444b f24420b;

            public class C0621a implements Map.Entry<Byte, Byte> {

                public Byte f24422b;

                public final Byte f24423c;

                public final Byte f24424d;

                public C0621a(Byte b10, Byte b11) {
                    this.f24423c = b10;
                    this.f24424d = b11;
                    this.f24422b = b10;
                }

                @Override
                public Byte getKey() {
                    return this.f24424d;
                }

                @Override
                public Byte getValue() {
                    return this.f24422b;
                }

                @Override
                public Byte setValue(Byte b10) {
                    this.f24422b = b10;
                    return C3062a.this.put(this.f24424d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24424d) && entry.getValue().equals(this.f24422b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24424d.hashCode() + this.f24422b.hashCode();
                }
            }

            public C0620a() {
                this.f24420b = C3062a.this.f24418b.iterator();
            }

            @Override
            public Map.Entry<Byte, Byte> next() {
                this.f24420b.g();
                byte key = this.f24420b.key();
                Byte j10 = key == C3062a.this.f24418b.l() ? null : C3062a.this.j(key);
                byte value = this.f24420b.value();
                return new C0621a(value != C3062a.this.f24418b.i() ? C3062a.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24420b.hasNext();
            }

            @Override
            public void remove() {
                this.f24420b.remove();
            }
        }

        public C0619a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3062a.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3062a.this.containsKey(key) && C3062a.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3062a.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, Byte>> iterator() {
            return new C0620a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3062a c3062a = C3062a.this;
            c3062a.f24418b.m(c3062a.h(b10));
            return true;
        }

        @Override
        public int size() {
            return C3062a.this.f24418b.size();
        }
    }

    public C3062a() {
    }

    @Override
    public Byte get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24418b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        byte s02 = this.f24418b.s0(l10);
        if (s02 == this.f24418b.i()) {
            return null;
        }
        return k(s02);
    }

    @Override
    public void clear() {
        this.f24418b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24418b.D(h(obj));
        }
        InterfaceC13060a interfaceC13060a = this.f24418b;
        return interfaceC13060a.D(interfaceC13060a.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24418b.P(i(obj));
    }

    public InterfaceC13060a e() {
        return this.f24418b;
    }

    @Override
    public Set<Map.Entry<Byte, Byte>> entrySet() {
        return new C0619a();
    }

    @Override
    public Byte put(Byte b10, Byte b11) {
        byte P32 = this.f24418b.P3(b10 == null ? this.f24418b.l() : h(b10), b11 == null ? this.f24418b.i() : i(b11));
        if (P32 == this.f24418b.i()) {
            return null;
        }
        return k(P32);
    }

    @Override
    public Byte remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24418b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        byte m10 = this.f24418b.m(l10);
        if (m10 == this.f24418b.i()) {
            return null;
        }
        return k(m10);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public byte i(Object obj) {
        return ((Byte) obj).byteValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Byte j(byte b10) {
        return Byte.valueOf(b10);
    }

    public Byte k(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Byte> map) {
        Iterator<Map.Entry<? extends Byte, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24418b = (InterfaceC13060a) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24418b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24418b);
    }

    public C3062a(InterfaceC13060a interfaceC13060a) {
        this.f24418b = interfaceC13060a;
    }
}
