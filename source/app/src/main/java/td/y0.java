package Td;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import ke.InterfaceC13973g;

public class y0 extends AbstractSet<Short> implements Set<Short>, Externalizable {

    public static final long f24815c = 1;

    public InterfaceC13973g f24816b;

    public class a implements Iterator<Short> {

        public final Zd.s0 f24817b;

        public a() {
            this.f24817b = y0.this.f24816b.iterator();
        }

        @Override
        public Short next() {
            return Short.valueOf(this.f24817b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f24817b.hasNext();
        }

        @Override
        public void remove() {
            this.f24817b.remove();
        }
    }

    public y0() {
    }

    @Override
    public boolean add(Short sh2) {
        return sh2 != null && this.f24816b.c1(sh2.shortValue());
    }

    public InterfaceC13973g b() {
        return this.f24816b;
    }

    @Override
    public void clear() {
        this.f24816b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Short) {
            return this.f24816b.W0(((Short) obj).shortValue());
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.f24816b.equals(obj)) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f24816b.size()) {
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
            if (!(next instanceof Short)) {
                break;
            }
            if (!this.f24816b.W0(((Short) next).shortValue())) {
                break;
            }
            size = i10;
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.f24816b.size() == 0;
    }

    @Override
    public Iterator<Short> iterator() {
        return new a();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24816b = (InterfaceC13973g) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        return (obj instanceof Short) && this.f24816b.d(((Short) obj).shortValue());
    }

    @Override
    public int size() {
        return this.f24816b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24816b);
    }

    public y0(InterfaceC13973g interfaceC13973g) {
        this.f24816b = interfaceC13973g;
    }
}
