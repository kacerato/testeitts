package Td;

import Zd.InterfaceC3454l;
import ee.InterfaceC13069j;
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

public class C3073l extends AbstractMap<Character, Character> implements Map<Character, Character>, Externalizable, Cloneable {

    public static final long f24591c = 1;

    public InterfaceC13069j f24592b;

    public class a extends AbstractSet<Map.Entry<Character, Character>> {

        public class C0656a implements Iterator<Map.Entry<Character, Character>> {

            public final InterfaceC3454l f24594b;

            public class C0657a implements Map.Entry<Character, Character> {

                public Character f24596b;

                public final Character f24597c;

                public final Character f24598d;

                public C0657a(Character ch2, Character ch3) {
                    this.f24597c = ch2;
                    this.f24598d = ch3;
                    this.f24596b = ch2;
                }

                @Override
                public Character getKey() {
                    return this.f24598d;
                }

                @Override
                public Character getValue() {
                    return this.f24596b;
                }

                @Override
                public Character setValue(Character ch2) {
                    this.f24596b = ch2;
                    return C3073l.this.put(this.f24598d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24598d) && entry.getValue().equals(this.f24596b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24598d.hashCode() + this.f24596b.hashCode();
                }
            }

            public C0656a() {
                this.f24594b = C3073l.this.f24592b.iterator();
            }

            @Override
            public Map.Entry<Character, Character> next() {
                this.f24594b.g();
                char key = this.f24594b.key();
                Character j10 = key == C3073l.this.f24592b.l() ? null : C3073l.this.j(key);
                char value = this.f24594b.value();
                return new C0657a(value != C3073l.this.f24592b.i() ? C3073l.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24594b.hasNext();
            }

            @Override
            public void remove() {
                this.f24594b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3073l.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3073l.this.containsKey(key) && C3073l.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3073l.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, Character>> iterator() {
            return new C0656a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            C3073l c3073l = C3073l.this;
            c3073l.f24592b.b(c3073l.h(ch2));
            return true;
        }

        @Override
        public int size() {
            return C3073l.this.f24592b.size();
        }
    }

    public C3073l() {
    }

    @Override
    public Character get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24592b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        char o02 = this.f24592b.o0(l10);
        if (o02 == this.f24592b.i()) {
            return null;
        }
        return k(o02);
    }

    @Override
    public void clear() {
        this.f24592b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24592b.C(h(obj));
        }
        InterfaceC13069j interfaceC13069j = this.f24592b;
        return interfaceC13069j.C(interfaceC13069j.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24592b.O(i(obj));
    }

    public InterfaceC13069j e() {
        return this.f24592b;
    }

    @Override
    public Set<Map.Entry<Character, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(Character ch2, Character ch3) {
        char A42 = this.f24592b.A4(ch2 == null ? this.f24592b.l() : h(ch2), ch3 == null ? this.f24592b.i() : i(ch3));
        if (A42 == this.f24592b.i()) {
            return null;
        }
        return k(A42);
    }

    @Override
    public Character remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24592b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        char b10 = this.f24592b.b(l10);
        if (b10 == this.f24592b.i()) {
            return null;
        }
        return k(b10);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public char i(Object obj) {
        return ((Character) obj).charValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Character j(char c10) {
        return Character.valueOf(c10);
    }

    public Character k(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Character> map) {
        Iterator<Map.Entry<? extends Character, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24592b = (InterfaceC13069j) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24592b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24592b);
    }

    public C3073l(InterfaceC13069j interfaceC13069j) {
        this.f24592b = interfaceC13069j;
    }
}
