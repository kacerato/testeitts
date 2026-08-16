package Td;

import ee.InterfaceC13084z;
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

public class F extends AbstractMap<Float, Character> implements Map<Float, Character>, Externalizable, Cloneable {

    public static final long f24261c = 1;

    public InterfaceC13084z f24262b;

    public class a extends AbstractSet<Map.Entry<Float, Character>> {

        public class C0587a implements Iterator<Map.Entry<Float, Character>> {

            public final Zd.D f24264b;

            public class C0588a implements Map.Entry<Float, Character> {

                public Character f24266b;

                public final Character f24267c;

                public final Float f24268d;

                public C0588a(Character ch2, Float f10) {
                    this.f24267c = ch2;
                    this.f24268d = f10;
                    this.f24266b = ch2;
                }

                @Override
                public Float getKey() {
                    return this.f24268d;
                }

                @Override
                public Character getValue() {
                    return this.f24266b;
                }

                @Override
                public Character setValue(Character ch2) {
                    this.f24266b = ch2;
                    return F.this.put(this.f24268d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24268d) && entry.getValue().equals(this.f24266b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24268d.hashCode() + this.f24266b.hashCode();
                }
            }

            public C0587a() {
                this.f24264b = F.this.f24262b.iterator();
            }

            @Override
            public Map.Entry<Float, Character> next() {
                this.f24264b.g();
                float key = this.f24264b.key();
                Float j10 = key == F.this.f24262b.l() ? null : F.this.j(key);
                char value = this.f24264b.value();
                return new C0588a(value != F.this.f24262b.i() ? F.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24264b.hasNext();
            }

            @Override
            public void remove() {
                this.f24264b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            F.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return F.this.containsKey(key) && F.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return F.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, Character>> iterator() {
            return new C0587a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            F f11 = F.this;
            f11.f24262b.c(f11.h(f10));
            return true;
        }

        @Override
        public int size() {
            return F.this.f24262b.size();
        }
    }

    public F() {
    }

    @Override
    public Character get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24262b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        char q02 = this.f24262b.q0(l10);
        if (q02 == this.f24262b.i()) {
            return null;
        }
        return k(q02);
    }

    @Override
    public void clear() {
        this.f24262b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24262b.H(h(obj));
        }
        InterfaceC13084z interfaceC13084z = this.f24262b;
        return interfaceC13084z.H(interfaceC13084z.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24262b.O(i(obj));
    }

    public InterfaceC13084z e() {
        return this.f24262b;
    }

    @Override
    public Set<Map.Entry<Float, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(Float f10, Character ch2) {
        char F52 = this.f24262b.F5(f10 == null ? this.f24262b.l() : h(f10), ch2 == null ? this.f24262b.i() : i(ch2));
        if (F52 == this.f24262b.i()) {
            return null;
        }
        return k(F52);
    }

    @Override
    public Character remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24262b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        char c10 = this.f24262b.c(l10);
        if (c10 == this.f24262b.i()) {
            return null;
        }
        return k(c10);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public char i(Object obj) {
        return ((Character) obj).charValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Float j(float f10) {
        return Float.valueOf(f10);
    }

    public Character k(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Character> map) {
        Iterator<Map.Entry<? extends Float, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24262b = (InterfaceC13084z) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24262b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24262b);
    }

    public F(InterfaceC13084z interfaceC13084z) {
        this.f24262b = interfaceC13084z;
    }
}
