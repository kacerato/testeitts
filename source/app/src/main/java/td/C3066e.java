package Td;

import Zd.InterfaceC3448f;
import ee.InterfaceC13064e;
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

public class C3066e extends AbstractMap<Byte, Integer> implements Map<Byte, Integer>, Externalizable, Cloneable {

    public static final long f24489c = 1;

    public InterfaceC13064e f24490b;

    public class a extends AbstractSet<Map.Entry<Byte, Integer>> {

        public class C0636a implements Iterator<Map.Entry<Byte, Integer>> {

            public final InterfaceC3448f f24492b;

            public class C0637a implements Map.Entry<Byte, Integer> {

                public Integer f24494b;

                public final Integer f24495c;

                public final Byte f24496d;

                public C0637a(Integer num, Byte b10) {
                    this.f24495c = num;
                    this.f24496d = b10;
                    this.f24494b = num;
                }

                @Override
                public Byte getKey() {
                    return this.f24496d;
                }

                @Override
                public Integer getValue() {
                    return this.f24494b;
                }

                @Override
                public Integer setValue(Integer num) {
                    this.f24494b = num;
                    return C3066e.this.put(this.f24496d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24496d) && entry.getValue().equals(this.f24494b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24496d.hashCode() + this.f24494b.hashCode();
                }
            }

            public C0636a() {
                this.f24492b = C3066e.this.f24490b.iterator();
            }

            @Override
            public Map.Entry<Byte, Integer> next() {
                this.f24492b.g();
                byte key = this.f24492b.key();
                Byte j10 = key == C3066e.this.f24490b.l() ? null : C3066e.this.j(key);
                int value = this.f24492b.value();
                return new C0637a(value != C3066e.this.f24490b.i() ? C3066e.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24492b.hasNext();
            }

            @Override
            public void remove() {
                this.f24492b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3066e.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3066e.this.containsKey(key) && C3066e.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3066e.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, Integer>> iterator() {
            return new C0636a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3066e c3066e = C3066e.this;
            c3066e.f24490b.m(c3066e.h(b10));
            return true;
        }

        @Override
        public int size() {
            return C3066e.this.f24490b.size();
        }
    }

    public C3066e() {
    }

    @Override
    public Integer get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24490b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        int s02 = this.f24490b.s0(l10);
        if (s02 == this.f24490b.i()) {
            return null;
        }
        return k(s02);
    }

    @Override
    public void clear() {
        this.f24490b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24490b.D(h(obj));
        }
        InterfaceC13064e interfaceC13064e = this.f24490b;
        return interfaceC13064e.D(interfaceC13064e.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24490b.Q(i(obj));
    }

    public InterfaceC13064e e() {
        return this.f24490b;
    }

    @Override
    public Set<Map.Entry<Byte, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(Byte b10, Integer num) {
        int Y32 = this.f24490b.Y3(b10 == null ? this.f24490b.l() : h(b10), num == null ? this.f24490b.i() : i(num));
        if (Y32 == this.f24490b.i()) {
            return null;
        }
        return k(Y32);
    }

    @Override
    public Integer remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24490b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        int m10 = this.f24490b.m(l10);
        if (m10 == this.f24490b.i()) {
            return null;
        }
        return k(m10);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public int i(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Byte j(byte b10) {
        return Byte.valueOf(b10);
    }

    public Integer k(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Integer> map) {
        Iterator<Map.Entry<? extends Byte, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24490b = (InterfaceC13064e) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24490b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24490b);
    }

    public C3066e(InterfaceC13064e interfaceC13064e) {
        this.f24490b = interfaceC13064e;
    }
}
