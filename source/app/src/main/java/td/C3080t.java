package Td;

import Zd.InterfaceC3460s;
import ee.InterfaceC13075p;
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

public class C3080t extends AbstractMap<Character, Short> implements Map<Character, Short>, Externalizable, Cloneable {

    public static final long f24723c = 1;

    public InterfaceC13075p f24724b;

    public class a extends AbstractSet<Map.Entry<Character, Short>> {

        public class C0684a implements Iterator<Map.Entry<Character, Short>> {

            public final InterfaceC3460s f24726b;

            public class C0685a implements Map.Entry<Character, Short> {

                public Short f24728b;

                public final Short f24729c;

                public final Character f24730d;

                public C0685a(Short sh2, Character ch2) {
                    this.f24729c = sh2;
                    this.f24730d = ch2;
                    this.f24728b = sh2;
                }

                @Override
                public Character getKey() {
                    return this.f24730d;
                }

                @Override
                public Short getValue() {
                    return this.f24728b;
                }

                @Override
                public Short setValue(Short sh2) {
                    this.f24728b = sh2;
                    return C3080t.this.put(this.f24730d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24730d) && entry.getValue().equals(this.f24728b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24730d.hashCode() + this.f24728b.hashCode();
                }
            }

            public C0684a() {
                this.f24726b = C3080t.this.f24724b.iterator();
            }

            @Override
            public Map.Entry<Character, Short> next() {
                this.f24726b.g();
                char key = this.f24726b.key();
                Character j10 = key == C3080t.this.f24724b.l() ? null : C3080t.this.j(key);
                short value = this.f24726b.value();
                return new C0685a(value != C3080t.this.f24724b.i() ? C3080t.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24726b.hasNext();
            }

            @Override
            public void remove() {
                this.f24726b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3080t.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3080t.this.containsKey(key) && C3080t.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3080t.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, Short>> iterator() {
            return new C0684a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            C3080t c3080t = C3080t.this;
            c3080t.f24724b.b(c3080t.h(ch2));
            return true;
        }

        @Override
        public int size() {
            return C3080t.this.f24724b.size();
        }
    }

    public C3080t() {
    }

    @Override
    public Short get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24724b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        short o02 = this.f24724b.o0(l10);
        if (o02 == this.f24724b.i()) {
            return null;
        }
        return k(o02);
    }

    @Override
    public void clear() {
        this.f24724b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24724b.C(h(obj));
        }
        InterfaceC13075p interfaceC13075p = this.f24724b;
        return interfaceC13075p.C(interfaceC13075p.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24724b.L(i(obj));
    }

    public InterfaceC13075p e() {
        return this.f24724b;
    }

    @Override
    public Set<Map.Entry<Character, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(Character ch2, Short sh2) {
        short F22 = this.f24724b.F2(ch2 == null ? this.f24724b.l() : h(ch2), sh2 == null ? this.f24724b.i() : i(sh2));
        if (F22 == this.f24724b.i()) {
            return null;
        }
        return k(F22);
    }

    @Override
    public Short remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24724b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        short b10 = this.f24724b.b(l10);
        if (b10 == this.f24724b.i()) {
            return null;
        }
        return k(b10);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public short i(Object obj) {
        return ((Short) obj).shortValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Character j(char c10) {
        return Character.valueOf(c10);
    }

    public Short k(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Short> map) {
        Iterator<Map.Entry<? extends Character, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24724b = (InterfaceC13075p) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24724b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24724b);
    }

    public C3080t(InterfaceC13075p interfaceC13075p) {
        this.f24724b = interfaceC13075p;
    }
}
