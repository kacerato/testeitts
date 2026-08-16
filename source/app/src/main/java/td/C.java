package Td;

import Zd.InterfaceC3466y;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import ke.InterfaceC13969c;

public class C extends AbstractSet<Double> implements Set<Double>, Externalizable {

    public static final long f24239c = 1;

    public InterfaceC13969c f24240b;

    public class a implements Iterator<Double> {

        public final InterfaceC3466y f24241b;

        public a() {
            this.f24241b = C.this.f24240b.iterator();
        }

        @Override
        public Double next() {
            return Double.valueOf(this.f24241b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f24241b.hasNext();
        }

        @Override
        public void remove() {
            this.f24241b.remove();
        }
    }

    public C() {
    }

    @Override
    public boolean add(Double d10) {
        return d10 != null && this.f24240b.add(d10.doubleValue());
    }

    public InterfaceC13969c b() {
        return this.f24240b;
    }

    @Override
    public void clear() {
        this.f24240b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Double) {
            return this.f24240b.Y0(((Double) obj).doubleValue());
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.f24240b.equals(obj)) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f24240b.size()) {
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
            if (!(next instanceof Double)) {
                break;
            }
            if (!this.f24240b.Y0(((Double) next).doubleValue())) {
                break;
            }
            size = i10;
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.f24240b.size() == 0;
    }

    @Override
    public Iterator<Double> iterator() {
        return new a();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24240b = (InterfaceC13969c) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        return (obj instanceof Double) && this.f24240b.a(((Double) obj).doubleValue());
    }

    @Override
    public int size() {
        return this.f24240b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24240b);
    }

    public C(InterfaceC13969c interfaceC13969c) {
        this.f24240b = interfaceC13969c;
    }
}
