package Td;

import Zd.InterfaceC3455m;
import ee.InterfaceC13070k;
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

public class C3074m extends AbstractMap<Character, Double> implements Map<Character, Double>, Externalizable, Cloneable {

    public static final long f24609c = 1;

    public InterfaceC13070k f24610b;

    public class a extends AbstractSet<Map.Entry<Character, Double>> {

        public class C0660a implements Iterator<Map.Entry<Character, Double>> {

            public final InterfaceC3455m f24612b;

            public class C0661a implements Map.Entry<Character, Double> {

                public Double f24614b;

                public final Double f24615c;

                public final Character f24616d;

                public C0661a(Double d10, Character ch2) {
                    this.f24615c = d10;
                    this.f24616d = ch2;
                    this.f24614b = d10;
                }

                @Override
                public Character getKey() {
                    return this.f24616d;
                }

                @Override
                public Double getValue() {
                    return this.f24614b;
                }

                @Override
                public Double setValue(Double d10) {
                    this.f24614b = d10;
                    return C3074m.this.put(this.f24616d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24616d) && entry.getValue().equals(this.f24614b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24616d.hashCode() + this.f24614b.hashCode();
                }
            }

            public C0660a() {
                this.f24612b = C3074m.this.f24610b.iterator();
            }

            @Override
            public Map.Entry<Character, Double> next() {
                this.f24612b.g();
                char key = this.f24612b.key();
                Character j10 = key == C3074m.this.f24610b.l() ? null : C3074m.this.j(key);
                double value = this.f24612b.value();
                return new C0661a(value != C3074m.this.f24610b.i() ? C3074m.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24612b.hasNext();
            }

            @Override
            public void remove() {
                this.f24612b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3074m.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3074m.this.containsKey(key) && C3074m.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3074m.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, Double>> iterator() {
            return new C0660a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            C3074m c3074m = C3074m.this;
            c3074m.f24610b.b(c3074m.h(ch2));
            return true;
        }

        @Override
        public int size() {
            return C3074m.this.f24610b.size();
        }
    }

    public C3074m() {
    }

    @Override
    public Double get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24610b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        double o02 = this.f24610b.o0(l10);
        if (o02 == this.f24610b.i()) {
            return null;
        }
        return k(o02);
    }

    @Override
    public void clear() {
        this.f24610b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24610b.C(h(obj));
        }
        InterfaceC13070k interfaceC13070k = this.f24610b;
        return interfaceC13070k.C(interfaceC13070k.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24610b.T(i(obj));
    }

    public InterfaceC13070k e() {
        return this.f24610b;
    }

    @Override
    public Set<Map.Entry<Character, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(Character ch2, Double d10) {
        double B42 = this.f24610b.B4(ch2 == null ? this.f24610b.l() : h(ch2), d10 == null ? this.f24610b.i() : i(d10));
        if (B42 == this.f24610b.i()) {
            return null;
        }
        return k(B42);
    }

    @Override
    public Double remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24610b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        double b10 = this.f24610b.b(l10);
        if (b10 == this.f24610b.i()) {
            return null;
        }
        return k(b10);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public double i(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Character j(char c10) {
        return Character.valueOf(c10);
    }

    public Double k(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Double> map) {
        Iterator<Map.Entry<? extends Character, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24610b = (InterfaceC13070k) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24610b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24610b);
    }

    public C3074m(InterfaceC13070k interfaceC13070k) {
        this.f24610b = interfaceC13070k;
    }
}
