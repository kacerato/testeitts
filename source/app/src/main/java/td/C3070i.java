package Td;

import Zd.InterfaceC3449g;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import ke.InterfaceC13967a;

public class C3070i extends AbstractSet<Byte> implements Set<Byte>, Externalizable {

    public static final long f24542c = 1;

    public InterfaceC13967a f24543b;

    public class a implements Iterator<Byte> {

        public final InterfaceC3449g f24544b;

        public a() {
            this.f24544b = C3070i.this.f24543b.iterator();
        }

        @Override
        public Byte next() {
            return Byte.valueOf(this.f24544b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f24544b.hasNext();
        }

        @Override
        public void remove() {
            this.f24544b.remove();
        }
    }

    public C3070i() {
    }

    @Override
    public boolean add(Byte b10) {
        return b10 != null && this.f24543b.d1(b10.byteValue());
    }

    public InterfaceC13967a b() {
        return this.f24543b;
    }

    @Override
    public void clear() {
        this.f24543b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Byte) {
            return this.f24543b.a1(((Byte) obj).byteValue());
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.f24543b.equals(obj)) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f24543b.size()) {
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
            if (!(next instanceof Byte)) {
                break;
            }
            if (!this.f24543b.a1(((Byte) next).byteValue())) {
                break;
            }
            size = i10;
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.f24543b.size() == 0;
    }

    @Override
    public Iterator<Byte> iterator() {
        return new a();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24543b = (InterfaceC13967a) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        return (obj instanceof Byte) && this.f24543b.m(((Byte) obj).byteValue());
    }

    @Override
    public int size() {
        return this.f24543b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24543b);
    }

    public C3070i(InterfaceC13967a interfaceC13967a) {
        this.f24543b = interfaceC13967a;
    }
}
