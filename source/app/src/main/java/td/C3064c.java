package Td;

import Zd.InterfaceC3446d;
import ee.InterfaceC13062c;
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

public class C3064c extends AbstractMap<Byte, Double> implements Map<Byte, Double>, Externalizable, Cloneable {

    public static final long f24453c = 1;

    public InterfaceC13062c f24454b;

    public class a extends AbstractSet<Map.Entry<Byte, Double>> {

        public class C0628a implements Iterator<Map.Entry<Byte, Double>> {

            public final InterfaceC3446d f24456b;

            public class C0629a implements Map.Entry<Byte, Double> {

                public Double f24458b;

                public final Double f24459c;

                public final Byte f24460d;

                public C0629a(Double d10, Byte b10) {
                    this.f24459c = d10;
                    this.f24460d = b10;
                    this.f24458b = d10;
                }

                @Override
                public Byte getKey() {
                    return this.f24460d;
                }

                @Override
                public Double getValue() {
                    return this.f24458b;
                }

                @Override
                public Double setValue(Double d10) {
                    this.f24458b = d10;
                    return C3064c.this.put(this.f24460d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24460d) && entry.getValue().equals(this.f24458b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24460d.hashCode() + this.f24458b.hashCode();
                }
            }

            public C0628a() {
                this.f24456b = C3064c.this.f24454b.iterator();
            }

            @Override
            public Map.Entry<Byte, Double> next() {
                this.f24456b.g();
                byte key = this.f24456b.key();
                Byte j10 = key == C3064c.this.f24454b.l() ? null : C3064c.this.j(key);
                double value = this.f24456b.value();
                return new C0629a(value != C3064c.this.f24454b.i() ? C3064c.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24456b.hasNext();
            }

            @Override
            public void remove() {
                this.f24456b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3064c.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3064c.this.containsKey(key) && C3064c.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3064c.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, Double>> iterator() {
            return new C0628a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3064c c3064c = C3064c.this;
            c3064c.f24454b.m(c3064c.h(b10));
            return true;
        }

        @Override
        public int size() {
            return C3064c.this.f24454b.size();
        }
    }

    public C3064c() {
    }

    @Override
    public Double get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24454b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        double s02 = this.f24454b.s0(l10);
        if (s02 == this.f24454b.i()) {
            return null;
        }
        return k(s02);
    }

    @Override
    public void clear() {
        this.f24454b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24454b.D(h(obj));
        }
        InterfaceC13062c interfaceC13062c = this.f24454b;
        return interfaceC13062c.D(interfaceC13062c.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24454b.T(i(obj));
    }

    public InterfaceC13062c e() {
        return this.f24454b;
    }

    @Override
    public Set<Map.Entry<Byte, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(Byte b10, Double d10) {
        double U32 = this.f24454b.U3(b10 == null ? this.f24454b.l() : h(b10), d10 == null ? this.f24454b.i() : i(d10));
        if (U32 == this.f24454b.i()) {
            return null;
        }
        return k(U32);
    }

    @Override
    public Double remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24454b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        double m10 = this.f24454b.m(l10);
        if (m10 == this.f24454b.i()) {
            return null;
        }
        return k(m10);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public double i(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Byte j(byte b10) {
        return Byte.valueOf(b10);
    }

    public Double k(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Double> map) {
        Iterator<Map.Entry<? extends Byte, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24454b = (InterfaceC13062c) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24454b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24454b);
    }

    public C3064c(InterfaceC13062c interfaceC13062c) {
        this.f24454b = interfaceC13062c;
    }
}
