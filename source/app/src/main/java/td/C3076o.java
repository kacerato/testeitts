package Td;

import Zd.InterfaceC3457o;
import ee.InterfaceC13072m;
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

public class C3076o extends AbstractMap<Character, Integer> implements Map<Character, Integer>, Externalizable, Cloneable {

    public static final long f24645c = 1;

    public InterfaceC13072m f24646b;

    public class a extends AbstractSet<Map.Entry<Character, Integer>> {

        public class C0668a implements Iterator<Map.Entry<Character, Integer>> {

            public final InterfaceC3457o f24648b;

            public class C0669a implements Map.Entry<Character, Integer> {

                public Integer f24650b;

                public final Integer f24651c;

                public final Character f24652d;

                public C0669a(Integer num, Character ch2) {
                    this.f24651c = num;
                    this.f24652d = ch2;
                    this.f24650b = num;
                }

                @Override
                public Character getKey() {
                    return this.f24652d;
                }

                @Override
                public Integer getValue() {
                    return this.f24650b;
                }

                @Override
                public Integer setValue(Integer num) {
                    this.f24650b = num;
                    return C3076o.this.put(this.f24652d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24652d) && entry.getValue().equals(this.f24650b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24652d.hashCode() + this.f24650b.hashCode();
                }
            }

            public C0668a() {
                this.f24648b = C3076o.this.f24646b.iterator();
            }

            @Override
            public Map.Entry<Character, Integer> next() {
                this.f24648b.g();
                char key = this.f24648b.key();
                Character j10 = key == C3076o.this.f24646b.l() ? null : C3076o.this.j(key);
                int value = this.f24648b.value();
                return new C0669a(value != C3076o.this.f24646b.i() ? C3076o.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24648b.hasNext();
            }

            @Override
            public void remove() {
                this.f24648b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3076o.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3076o.this.containsKey(key) && C3076o.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3076o.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, Integer>> iterator() {
            return new C0668a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            C3076o c3076o = C3076o.this;
            c3076o.f24646b.b(c3076o.h(ch2));
            return true;
        }

        @Override
        public int size() {
            return C3076o.this.f24646b.size();
        }
    }

    public C3076o() {
    }

    @Override
    public Integer get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24646b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        int o02 = this.f24646b.o0(l10);
        if (o02 == this.f24646b.i()) {
            return null;
        }
        return k(o02);
    }

    @Override
    public void clear() {
        this.f24646b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24646b.C(h(obj));
        }
        InterfaceC13072m interfaceC13072m = this.f24646b;
        return interfaceC13072m.C(interfaceC13072m.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24646b.Q(i(obj));
    }

    public InterfaceC13072m e() {
        return this.f24646b;
    }

    @Override
    public Set<Map.Entry<Character, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(Character ch2, Integer num) {
        int E42 = this.f24646b.E4(ch2 == null ? this.f24646b.l() : h(ch2), num == null ? this.f24646b.i() : i(num));
        if (E42 == this.f24646b.i()) {
            return null;
        }
        return k(E42);
    }

    @Override
    public Integer remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24646b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        int b10 = this.f24646b.b(l10);
        if (b10 == this.f24646b.i()) {
            return null;
        }
        return k(b10);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public int i(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Character j(char c10) {
        return Character.valueOf(c10);
    }

    public Integer k(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Integer> map) {
        Iterator<Map.Entry<? extends Character, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24646b = (InterfaceC13072m) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24646b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24646b);
    }

    public C3076o(InterfaceC13072m interfaceC13072m) {
        this.f24646b = interfaceC13072m;
    }
}
