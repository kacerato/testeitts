package Td;

import Zd.InterfaceC3462u;
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

public class C3082v extends AbstractMap<Double, Character> implements Map<Double, Character>, Externalizable, Cloneable {

    public static final long f24759c = 1;

    public ee.r f24760b;

    public class a extends AbstractSet<Map.Entry<Double, Character>> {

        public class C0692a implements Iterator<Map.Entry<Double, Character>> {

            public final InterfaceC3462u f24762b;

            public class C0693a implements Map.Entry<Double, Character> {

                public Character f24764b;

                public final Character f24765c;

                public final Double f24766d;

                public C0693a(Character ch2, Double d10) {
                    this.f24765c = ch2;
                    this.f24766d = d10;
                    this.f24764b = ch2;
                }

                @Override
                public Double getKey() {
                    return this.f24766d;
                }

                @Override
                public Character getValue() {
                    return this.f24764b;
                }

                @Override
                public Character setValue(Character ch2) {
                    this.f24764b = ch2;
                    return C3082v.this.put(this.f24766d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24766d) && entry.getValue().equals(this.f24764b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24766d.hashCode() + this.f24764b.hashCode();
                }
            }

            public C0692a() {
                this.f24762b = C3082v.this.f24760b.iterator();
            }

            @Override
            public Map.Entry<Double, Character> next() {
                this.f24762b.g();
                double key = this.f24762b.key();
                Double j10 = key == C3082v.this.f24760b.l() ? null : C3082v.this.j(key);
                char value = this.f24762b.value();
                return new C0693a(value != C3082v.this.f24760b.i() ? C3082v.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24762b.hasNext();
            }

            @Override
            public void remove() {
                this.f24762b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3082v.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3082v.this.containsKey(key) && C3082v.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3082v.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, Character>> iterator() {
            return new C0692a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            C3082v c3082v = C3082v.this;
            c3082v.f24760b.a(c3082v.h(d10));
            return true;
        }

        @Override
        public int size() {
            return C3082v.this.f24760b.size();
        }
    }

    public C3082v() {
    }

    @Override
    public Character get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24760b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        char p02 = this.f24760b.p0(l10);
        if (p02 == this.f24760b.i()) {
            return null;
        }
        return k(p02);
    }

    @Override
    public void clear() {
        this.f24760b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24760b.A(h(obj));
        }
        ee.r rVar = this.f24760b;
        return rVar.A(rVar.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24760b.O(i(obj));
    }

    public ee.r e() {
        return this.f24760b;
    }

    @Override
    public Set<Map.Entry<Double, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(Double d10, Character ch2) {
        char I22 = this.f24760b.I2(d10 == null ? this.f24760b.l() : h(d10), ch2 == null ? this.f24760b.i() : i(ch2));
        if (I22 == this.f24760b.i()) {
            return null;
        }
        return k(I22);
    }

    @Override
    public Character remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24760b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        char a10 = this.f24760b.a(l10);
        if (a10 == this.f24760b.i()) {
            return null;
        }
        return k(a10);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public char i(Object obj) {
        return ((Character) obj).charValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Double j(double d10) {
        return Double.valueOf(d10);
    }

    public Character k(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Character> map) {
        Iterator<Map.Entry<? extends Double, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24760b = (ee.r) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24760b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24760b);
    }

    public C3082v(ee.r rVar) {
        this.f24760b = rVar;
    }
}
