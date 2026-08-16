package Td;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import ke.InterfaceC13971e;

public class X extends AbstractSet<Integer> implements Set<Integer>, Externalizable {

    public static final long f24395c = 1;

    public InterfaceC13971e f24396b;

    public class a implements Iterator<Integer> {

        public final Zd.Q f24397b;

        public a() {
            this.f24397b = X.this.f24396b.iterator();
        }

        @Override
        public Integer next() {
            return Integer.valueOf(this.f24397b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f24397b.hasNext();
        }

        @Override
        public void remove() {
            this.f24397b.remove();
        }
    }

    public X() {
    }

    @Override
    public boolean add(Integer num) {
        return num != null && this.f24396b.add(num.intValue());
    }

    public InterfaceC13971e b() {
        return this.f24396b;
    }

    @Override
    public void clear() {
        this.f24396b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Integer) {
            return this.f24396b.contains(((Integer) obj).intValue());
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.f24396b.equals(obj)) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f24396b.size()) {
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
            if (!(next instanceof Integer)) {
                break;
            }
            if (!this.f24396b.contains(((Integer) next).intValue())) {
                break;
            }
            size = i10;
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.f24396b.size() == 0;
    }

    @Override
    public Iterator<Integer> iterator() {
        return new a();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24396b = (InterfaceC13971e) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        return (obj instanceof Integer) && this.f24396b.remove(((Integer) obj).intValue());
    }

    @Override
    public int size() {
        return this.f24396b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24396b);
    }

    public X(InterfaceC13971e interfaceC13971e) {
        this.f24396b = interfaceC13971e;
    }
}
