package Td;

import Zd.InterfaceC3453k;
import ee.InterfaceC13068i;
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

public class C3072k extends AbstractMap<Character, Byte> implements Map<Character, Byte>, Externalizable, Cloneable {

    public static final long f24573c = 1;

    public InterfaceC13068i f24574b;

    public class a extends AbstractSet<Map.Entry<Character, Byte>> {

        public class C0652a implements Iterator<Map.Entry<Character, Byte>> {

            public final InterfaceC3453k f24576b;

            public class C0653a implements Map.Entry<Character, Byte> {

                public Byte f24578b;

                public final Byte f24579c;

                public final Character f24580d;

                public C0653a(Byte b10, Character ch2) {
                    this.f24579c = b10;
                    this.f24580d = ch2;
                    this.f24578b = b10;
                }

                @Override
                public Character getKey() {
                    return this.f24580d;
                }

                @Override
                public Byte getValue() {
                    return this.f24578b;
                }

                @Override
                public Byte setValue(Byte b10) {
                    this.f24578b = b10;
                    return C3072k.this.put(this.f24580d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24580d) && entry.getValue().equals(this.f24578b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24580d.hashCode() + this.f24578b.hashCode();
                }
            }

            public C0652a() {
                this.f24576b = C3072k.this.f24574b.iterator();
            }

            @Override
            public Map.Entry<Character, Byte> next() {
                this.f24576b.g();
                char key = this.f24576b.key();
                Character j10 = key == C3072k.this.f24574b.l() ? null : C3072k.this.j(key);
                byte value = this.f24576b.value();
                return new C0653a(value != C3072k.this.f24574b.i() ? C3072k.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24576b.hasNext();
            }

            @Override
            public void remove() {
                this.f24576b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3072k.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3072k.this.containsKey(key) && C3072k.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3072k.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, Byte>> iterator() {
            return new C0652a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            C3072k c3072k = C3072k.this;
            c3072k.f24574b.b(c3072k.h(ch2));
            return true;
        }

        @Override
        public int size() {
            return C3072k.this.f24574b.size();
        }
    }

    public C3072k() {
    }

    @Override
    public Byte get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24574b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        byte o02 = this.f24574b.o0(l10);
        if (o02 == this.f24574b.i()) {
            return null;
        }
        return k(o02);
    }

    @Override
    public void clear() {
        this.f24574b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24574b.C(h(obj));
        }
        InterfaceC13068i interfaceC13068i = this.f24574b;
        return interfaceC13068i.C(interfaceC13068i.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24574b.P(i(obj));
    }

    public InterfaceC13068i e() {
        return this.f24574b;
    }

    @Override
    public Set<Map.Entry<Character, Byte>> entrySet() {
        return new a();
    }

    @Override
    public Byte put(Character ch2, Byte b10) {
        byte z42 = this.f24574b.z4(ch2 == null ? this.f24574b.l() : h(ch2), b10 == null ? this.f24574b.i() : i(b10));
        if (z42 == this.f24574b.i()) {
            return null;
        }
        return k(z42);
    }

    @Override
    public Byte remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24574b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        byte b10 = this.f24574b.b(l10);
        if (b10 == this.f24574b.i()) {
            return null;
        }
        return k(b10);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public byte i(Object obj) {
        return ((Byte) obj).byteValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Character j(char c10) {
        return Character.valueOf(c10);
    }

    public Byte k(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Byte> map) {
        Iterator<Map.Entry<? extends Character, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24574b = (InterfaceC13068i) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24574b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24574b);
    }

    public C3072k(InterfaceC13068i interfaceC13068i) {
        this.f24574b = interfaceC13068i;
    }
}
