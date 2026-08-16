package Td;

import Zd.InterfaceC3458p;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import ke.InterfaceC13968b;

public class C3079s extends AbstractSet<Character> implements Set<Character>, Externalizable {

    public static final long f24710c = 1;

    public InterfaceC13968b f24711b;

    public class a implements Iterator<Character> {

        public final InterfaceC3458p f24712b;

        public a() {
            this.f24712b = C3079s.this.f24711b.iterator();
        }

        @Override
        public Character next() {
            return Character.valueOf(this.f24712b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f24712b.hasNext();
        }

        @Override
        public void remove() {
            this.f24712b.remove();
        }
    }

    public C3079s() {
    }

    @Override
    public boolean add(Character ch2) {
        return ch2 != null && this.f24711b.e1(ch2.charValue());
    }

    public InterfaceC13968b b() {
        return this.f24711b;
    }

    @Override
    public void clear() {
        this.f24711b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Character) {
            return this.f24711b.b1(((Character) obj).charValue());
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.f24711b.equals(obj)) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f24711b.size()) {
            return false;
        }
        Iterator it = set.iterator();
        int size = set.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return true;
            }
            Object next = it.next();
            if (!(next instanceof Character)) {
                break;
            }
            if (!this.f24711b.b1(((Character) next).charValue())) {
                break;
            }
            size = i10;
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.f24711b.size() == 0;
    }

    @Override
    public Iterator<Character> iterator() {
        return new a();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24711b = (InterfaceC13968b) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        return (obj instanceof Character) && this.f24711b.b(((Character) obj).charValue());
    }

    @Override
    public int size() {
        return this.f24711b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24711b);
    }

    public C3079s(InterfaceC13968b interfaceC13968b) {
        this.f24711b = interfaceC13968b;
    }
}
