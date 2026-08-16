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

public class a0 extends AbstractMap<Long, Character> implements Map<Long, Character>, Externalizable, Cloneable {

    public static final long f24426c = 1;

    public ee.P f24427b;

    public class a extends AbstractSet<Map.Entry<Long, Character>> {

        public class C0622a implements Iterator<Map.Entry<Long, Character>> {

            public final Zd.X f24429b;

            public class C0623a implements Map.Entry<Long, Character> {

                public Character f24431b;

                public final Character f24432c;

                public final Long f24433d;

                public C0623a(Character ch2, Long l10) {
                    this.f24432c = ch2;
                    this.f24433d = l10;
                    this.f24431b = ch2;
                }

                @Override
                public Long getKey() {
                    return this.f24433d;
                }

                @Override
                public Character getValue() {
                    return this.f24431b;
                }

                @Override
                public Character setValue(Character ch2) {
                    this.f24431b = ch2;
                    return a0.this.put(this.f24433d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24433d) && entry.getValue().equals(this.f24431b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24433d.hashCode() + this.f24431b.hashCode();
                }
            }

            public C0622a() {
                this.f24429b = a0.this.f24427b.iterator();
            }

            @Override
            public Map.Entry<Long, Character> next() {
                this.f24429b.g();
                long key = this.f24429b.key();
                Long j10 = key == a0.this.f24427b.l() ? null : a0.this.j(key);
                char value = this.f24429b.value();
                return new C0623a(value != a0.this.f24427b.i() ? a0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24429b.hasNext();
            }

            @Override
            public void remove() {
                this.f24429b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            a0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return a0.this.containsKey(key) && a0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return a0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, Character>> iterator() {
            return new C0622a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            a0 a0Var = a0.this;
            a0Var.f24427b.e(a0Var.h(l10));
            return true;
        }

        @Override
        public int size() {
            return a0.this.f24427b.size();
        }
    }

    public a0() {
    }

    @Override
    public Character get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24427b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        char u10 = this.f24427b.u(l10);
        if (u10 == this.f24427b.i()) {
            return null;
        }
        return k(u10);
    }

    @Override
    public void clear() {
        this.f24427b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24427b.E(h(obj));
        }
        ee.P p10 = this.f24427b;
        return p10.E(p10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24427b.O(i(obj));
    }

    public ee.P e() {
        return this.f24427b;
    }

    @Override
    public Set<Map.Entry<Long, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(Long l10, Character ch2) {
        char h72 = this.f24427b.h7(l10 == null ? this.f24427b.l() : h(l10), ch2 == null ? this.f24427b.i() : i(ch2));
        if (h72 == this.f24427b.i()) {
            return null;
        }
        return k(h72);
    }

    @Override
    public Character remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24427b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        char e10 = this.f24427b.e(l10);
        if (e10 == this.f24427b.i()) {
            return null;
        }
        return k(e10);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public char i(Object obj) {
        return ((Character) obj).charValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Long j(long j10) {
        return Long.valueOf(j10);
    }

    public Character k(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Character> map) {
        Iterator<Map.Entry<? extends Long, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24427b = (ee.P) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24427b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24427b);
    }

    public a0(ee.P p10) {
        this.f24427b = p10;
    }
}
