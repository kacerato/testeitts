package Td;

import Zd.InterfaceC3447e;
import ee.InterfaceC13063d;
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

public class C3065d extends AbstractMap<Byte, Float> implements Map<Byte, Float>, Externalizable, Cloneable {

    public static final long f24471c = 1;

    public InterfaceC13063d f24472b;

    public class a extends AbstractSet<Map.Entry<Byte, Float>> {

        public class C0632a implements Iterator<Map.Entry<Byte, Float>> {

            public final InterfaceC3447e f24474b;

            public class C0633a implements Map.Entry<Byte, Float> {

                public Float f24476b;

                public final Float f24477c;

                public final Byte f24478d;

                public C0633a(Float f10, Byte b10) {
                    this.f24477c = f10;
                    this.f24478d = b10;
                    this.f24476b = f10;
                }

                @Override
                public Byte getKey() {
                    return this.f24478d;
                }

                @Override
                public Float getValue() {
                    return this.f24476b;
                }

                @Override
                public Float setValue(Float f10) {
                    this.f24476b = f10;
                    return C3065d.this.put(this.f24478d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24478d) && entry.getValue().equals(this.f24476b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24478d.hashCode() + this.f24476b.hashCode();
                }
            }

            public C0632a() {
                this.f24474b = C3065d.this.f24472b.iterator();
            }

            @Override
            public Map.Entry<Byte, Float> next() {
                this.f24474b.g();
                byte key = this.f24474b.key();
                Byte j10 = key == C3065d.this.f24472b.l() ? null : C3065d.this.j(key);
                float value = this.f24474b.value();
                return new C0633a(value != C3065d.this.f24472b.i() ? C3065d.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24474b.hasNext();
            }

            @Override
            public void remove() {
                this.f24474b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3065d.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3065d.this.containsKey(key) && C3065d.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3065d.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, Float>> iterator() {
            return new C0632a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3065d c3065d = C3065d.this;
            c3065d.f24472b.m(c3065d.h(b10));
            return true;
        }

        @Override
        public int size() {
            return C3065d.this.f24472b.size();
        }
    }

    public C3065d() {
    }

    @Override
    public Float get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24472b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        float s02 = this.f24472b.s0(l10);
        if (s02 == this.f24472b.i()) {
            return null;
        }
        return k(s02);
    }

    @Override
    public void clear() {
        this.f24472b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24472b.D(h(obj));
        }
        InterfaceC13063d interfaceC13063d = this.f24472b;
        return interfaceC13063d.D(interfaceC13063d.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24472b.U(i(obj));
    }

    public InterfaceC13063d e() {
        return this.f24472b;
    }

    @Override
    public Set<Map.Entry<Byte, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(Byte b10, Float f10) {
        float V32 = this.f24472b.V3(b10 == null ? this.f24472b.l() : h(b10), f10 == null ? this.f24472b.i() : i(f10));
        if (V32 == this.f24472b.i()) {
            return null;
        }
        return k(V32);
    }

    @Override
    public Float remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24472b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        float m10 = this.f24472b.m(l10);
        if (m10 == this.f24472b.i()) {
            return null;
        }
        return k(m10);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public float i(Object obj) {
        return ((Float) obj).floatValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Byte j(byte b10) {
        return Byte.valueOf(b10);
    }

    public Float k(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Float> map) {
        Iterator<Map.Entry<? extends Byte, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24472b = (InterfaceC13063d) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24472b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24472b);
    }

    public C3065d(InterfaceC13063d interfaceC13063d) {
        this.f24472b = interfaceC13063d;
    }
}
