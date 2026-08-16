package Td;

import Zd.InterfaceC3445c;
import ee.InterfaceC13061b;
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

public class C3063b extends AbstractMap<Byte, Character> implements Map<Byte, Character>, Externalizable, Cloneable {

    public static final long f24435c = 1;

    public InterfaceC13061b f24436b;

    public class a extends AbstractSet<Map.Entry<Byte, Character>> {

        public class C0624a implements Iterator<Map.Entry<Byte, Character>> {

            public final InterfaceC3445c f24438b;

            public class C0625a implements Map.Entry<Byte, Character> {

                public Character f24440b;

                public final Character f24441c;

                public final Byte f24442d;

                public C0625a(Character ch2, Byte b10) {
                    this.f24441c = ch2;
                    this.f24442d = b10;
                    this.f24440b = ch2;
                }

                @Override
                public Byte getKey() {
                    return this.f24442d;
                }

                @Override
                public Character getValue() {
                    return this.f24440b;
                }

                @Override
                public Character setValue(Character ch2) {
                    this.f24440b = ch2;
                    return C3063b.this.put(this.f24442d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24442d) && entry.getValue().equals(this.f24440b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24442d.hashCode() + this.f24440b.hashCode();
                }
            }

            public C0624a() {
                this.f24438b = C3063b.this.f24436b.iterator();
            }

            @Override
            public Map.Entry<Byte, Character> next() {
                this.f24438b.g();
                byte key = this.f24438b.key();
                Byte j10 = key == C3063b.this.f24436b.l() ? null : C3063b.this.j(key);
                char value = this.f24438b.value();
                return new C0625a(value != C3063b.this.f24436b.i() ? C3063b.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24438b.hasNext();
            }

            @Override
            public void remove() {
                this.f24438b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3063b.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3063b.this.containsKey(key) && C3063b.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3063b.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, Character>> iterator() {
            return new C0624a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3063b c3063b = C3063b.this;
            c3063b.f24436b.m(c3063b.h(b10));
            return true;
        }

        @Override
        public int size() {
            return C3063b.this.f24436b.size();
        }
    }

    public C3063b() {
    }

    @Override
    public Character get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24436b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        char s02 = this.f24436b.s0(l10);
        if (s02 == this.f24436b.i()) {
            return null;
        }
        return k(s02);
    }

    @Override
    public void clear() {
        this.f24436b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24436b.D(h(obj));
        }
        InterfaceC13061b interfaceC13061b = this.f24436b;
        return interfaceC13061b.D(interfaceC13061b.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24436b.O(i(obj));
    }

    public InterfaceC13061b e() {
        return this.f24436b;
    }

    @Override
    public Set<Map.Entry<Byte, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(Byte b10, Character ch2) {
        char R32 = this.f24436b.R3(b10 == null ? this.f24436b.l() : h(b10), ch2 == null ? this.f24436b.i() : i(ch2));
        if (R32 == this.f24436b.i()) {
            return null;
        }
        return k(R32);
    }

    @Override
    public Character remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24436b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        char m10 = this.f24436b.m(l10);
        if (m10 == this.f24436b.i()) {
            return null;
        }
        return k(m10);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public char i(Object obj) {
        return ((Character) obj).charValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Byte j(byte b10) {
        return Byte.valueOf(b10);
    }

    public Character k(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Character> map) {
        Iterator<Map.Entry<? extends Byte, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24436b = (InterfaceC13061b) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24436b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24436b);
    }

    public C3063b(InterfaceC13061b interfaceC13061b) {
        this.f24436b = interfaceC13061b;
    }
}
