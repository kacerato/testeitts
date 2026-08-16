package Td;

import Zd.InterfaceC3459q;
import ee.InterfaceC13073n;
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

public class C3078q extends AbstractMap<Character, Long> implements Map<Character, Long>, Externalizable, Cloneable {

    public static final long f24674c = 1;

    public InterfaceC13073n f24675b;

    public class a extends AbstractSet<Map.Entry<Character, Long>> {

        public class C0674a implements Iterator<Map.Entry<Character, Long>> {

            public final InterfaceC3459q f24677b;

            public class C0675a implements Map.Entry<Character, Long> {

                public Long f24679b;

                public final Long f24680c;

                public final Character f24681d;

                public C0675a(Long l10, Character ch2) {
                    this.f24680c = l10;
                    this.f24681d = ch2;
                    this.f24679b = l10;
                }

                @Override
                public Character getKey() {
                    return this.f24681d;
                }

                @Override
                public Long getValue() {
                    return this.f24679b;
                }

                @Override
                public Long setValue(Long l10) {
                    this.f24679b = l10;
                    return C3078q.this.put(this.f24681d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24681d) && entry.getValue().equals(this.f24679b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24681d.hashCode() + this.f24679b.hashCode();
                }
            }

            public C0674a() {
                this.f24677b = C3078q.this.f24675b.iterator();
            }

            @Override
            public Map.Entry<Character, Long> next() {
                this.f24677b.g();
                char key = this.f24677b.key();
                Character j10 = key == C3078q.this.f24675b.l() ? null : C3078q.this.j(key);
                long value = this.f24677b.value();
                return new C0675a(value != C3078q.this.f24675b.i() ? C3078q.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24677b.hasNext();
            }

            @Override
            public void remove() {
                this.f24677b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3078q.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3078q.this.containsKey(key) && C3078q.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3078q.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, Long>> iterator() {
            return new C0674a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            C3078q c3078q = C3078q.this;
            c3078q.f24675b.b(c3078q.h(ch2));
            return true;
        }

        @Override
        public int size() {
            return C3078q.this.f24675b.size();
        }
    }

    public C3078q() {
    }

    @Override
    public Long get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24675b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        long o02 = this.f24675b.o0(l10);
        if (o02 == this.f24675b.i()) {
            return null;
        }
        return k(o02);
    }

    @Override
    public void clear() {
        this.f24675b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24675b.C(h(obj));
        }
        InterfaceC13073n interfaceC13073n = this.f24675b;
        return interfaceC13073n.C(interfaceC13073n.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24675b.R(i(obj));
    }

    public InterfaceC13073n e() {
        return this.f24675b;
    }

    @Override
    public Set<Map.Entry<Character, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(Character ch2, Long l10) {
        long G42 = this.f24675b.G4(ch2 == null ? this.f24675b.l() : h(ch2), l10 == null ? this.f24675b.i() : i(l10));
        if (G42 == this.f24675b.i()) {
            return null;
        }
        return k(G42);
    }

    @Override
    public Long remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24675b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        long b10 = this.f24675b.b(l10);
        if (b10 == this.f24675b.i()) {
            return null;
        }
        return k(b10);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public long i(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Character j(char c10) {
        return Character.valueOf(c10);
    }

    public Long k(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Long> map) {
        Iterator<Map.Entry<? extends Character, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24675b = (InterfaceC13073n) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24675b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24675b);
    }

    public C3078q(InterfaceC13073n interfaceC13073n) {
        this.f24675b = interfaceC13073n;
    }
}
