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

public class P extends AbstractMap<Integer, Character> implements Map<Integer, Character>, Externalizable, Cloneable {

    public static final long f24339c = 1;

    public ee.H f24340b;

    public class a extends AbstractSet<Map.Entry<Integer, Character>> {

        public class C0603a implements Iterator<Map.Entry<Integer, Character>> {

            public final Zd.M f24342b;

            public class C0604a implements Map.Entry<Integer, Character> {

                public Character f24344b;

                public final Character f24345c;

                public final Integer f24346d;

                public C0604a(Character ch2, Integer num) {
                    this.f24345c = ch2;
                    this.f24346d = num;
                    this.f24344b = ch2;
                }

                @Override
                public Integer getKey() {
                    return this.f24346d;
                }

                @Override
                public Character getValue() {
                    return this.f24344b;
                }

                @Override
                public Character setValue(Character ch2) {
                    this.f24344b = ch2;
                    return P.this.put(this.f24346d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24346d) && entry.getValue().equals(this.f24344b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24346d.hashCode() + this.f24344b.hashCode();
                }
            }

            public C0603a() {
                this.f24342b = P.this.f24340b.iterator();
            }

            @Override
            public Map.Entry<Integer, Character> next() {
                this.f24342b.g();
                int key = this.f24342b.key();
                Integer j10 = key == P.this.f24340b.l() ? null : P.this.j(key);
                char value = this.f24342b.value();
                return new C0604a(value != P.this.f24340b.i() ? P.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24342b.hasNext();
            }

            @Override
            public void remove() {
                this.f24342b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            P.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return P.this.containsKey(key) && P.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return P.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, Character>> iterator() {
            return new C0603a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            P p10 = P.this;
            p10.f24340b.remove(p10.h(num));
            return true;
        }

        @Override
        public int size() {
            return P.this.f24340b.size();
        }
    }

    public P() {
    }

    @Override
    public Character get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24340b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        char c10 = this.f24340b.get(l10);
        if (c10 == this.f24340b.i()) {
            return null;
        }
        return k(c10);
    }

    @Override
    public void clear() {
        this.f24340b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24340b.F(h(obj));
        }
        ee.H h10 = this.f24340b;
        return h10.F(h10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24340b.O(i(obj));
    }

    public ee.H e() {
        return this.f24340b;
    }

    @Override
    public Set<Map.Entry<Integer, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(Integer num, Character ch2) {
        char X42 = this.f24340b.X4(num == null ? this.f24340b.l() : h(num), ch2 == null ? this.f24340b.i() : i(ch2));
        if (X42 == this.f24340b.i()) {
            return null;
        }
        return k(X42);
    }

    @Override
    public Character remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24340b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        char remove = this.f24340b.remove(l10);
        if (remove == this.f24340b.i()) {
            return null;
        }
        return k(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public char i(Object obj) {
        return ((Character) obj).charValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Integer j(int i10) {
        return Integer.valueOf(i10);
    }

    public Character k(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Character> map) {
        Iterator<Map.Entry<? extends Integer, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24340b = (ee.H) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24340b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24340b);
    }

    public P(ee.H h10) {
        this.f24340b = h10;
    }
}
