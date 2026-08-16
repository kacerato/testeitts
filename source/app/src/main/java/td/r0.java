package Td;

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

public class r0 extends AbstractMap<Short, Character> implements Map<Short, Character>, Externalizable, Cloneable {

    public static final long f24701c = 1;

    public ee.g0 f24702b;

    public class a extends AbstractSet<Map.Entry<Short, Character>> {

        public class C0680a implements Iterator<Map.Entry<Short, Character>> {

            public final Zd.o0 f24704b;

            public class C0681a implements Map.Entry<Short, Character> {

                public Character f24706b;

                public final Character f24707c;

                public final Short f24708d;

                public C0681a(Character ch2, Short sh2) {
                    this.f24707c = ch2;
                    this.f24708d = sh2;
                    this.f24706b = ch2;
                }

                @Override
                public Short getKey() {
                    return this.f24708d;
                }

                @Override
                public Character getValue() {
                    return this.f24706b;
                }

                @Override
                public Character setValue(Character ch2) {
                    this.f24706b = ch2;
                    return r0.this.put(this.f24708d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24708d) && entry.getValue().equals(this.f24706b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24708d.hashCode() + this.f24706b.hashCode();
                }
            }

            public C0680a() {
                this.f24704b = r0.this.f24702b.iterator();
            }

            @Override
            public Map.Entry<Short, Character> next() {
                this.f24704b.g();
                short key = this.f24704b.key();
                Short j10 = key == r0.this.f24702b.l() ? null : r0.this.j(key);
                char value = this.f24704b.value();
                return new C0681a(value != r0.this.f24702b.i() ? r0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24704b.hasNext();
            }

            @Override
            public void remove() {
                this.f24704b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            r0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return r0.this.containsKey(key) && r0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return r0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, Character>> iterator() {
            return new C0680a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            r0 r0Var = r0.this;
            r0Var.f24702b.d(r0Var.h(sh2));
            return true;
        }

        @Override
        public int size() {
            return r0.this.f24702b.size();
        }
    }

    public r0() {
    }

    @Override
    public Character get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24702b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        char n02 = this.f24702b.n0(l10);
        if (n02 == this.f24702b.i()) {
            return null;
        }
        return k(n02);
    }

    @Override
    public void clear() {
        this.f24702b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24702b.z(h(obj));
        }
        ee.g0 g0Var = this.f24702b;
        return g0Var.z(g0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24702b.O(i(obj));
    }

    public ee.g0 e() {
        return this.f24702b;
    }

    @Override
    public Set<Map.Entry<Short, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(Short sh2, Character ch2) {
        char ka2 = this.f24702b.ka(sh2 == null ? this.f24702b.l() : h(sh2), ch2 == null ? this.f24702b.i() : i(ch2));
        if (ka2 == this.f24702b.i()) {
            return null;
        }
        return k(ka2);
    }

    @Override
    public Character remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24702b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        char d10 = this.f24702b.d(l10);
        if (d10 == this.f24702b.i()) {
            return null;
        }
        return k(d10);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public char i(Object obj) {
        return ((Character) obj).charValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Short j(short s10) {
        return Short.valueOf(s10);
    }

    public Character k(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Character> map) {
        Iterator<Map.Entry<? extends Short, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24702b = (ee.g0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24702b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24702b);
    }

    public r0(ee.g0 g0Var) {
        this.f24702b = g0Var;
    }
}
