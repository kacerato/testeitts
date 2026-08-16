package Td;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import ke.InterfaceC13970d;

public class M extends AbstractSet<Float> implements Set<Float>, Externalizable {

    public static final long f24317c = 1;

    public InterfaceC13970d f24318b;

    public class a implements Iterator<Float> {

        public final Zd.H f24319b;

        public a() {
            this.f24319b = M.this.f24318b.iterator();
        }

        @Override
        public Float next() {
            return Float.valueOf(this.f24319b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f24319b.hasNext();
        }

        @Override
        public void remove() {
            this.f24319b.remove();
        }
    }

    public M() {
    }

    @Override
    public boolean add(Float f10) {
        return f10 != null && this.f24318b.f1(f10.floatValue());
    }

    public InterfaceC13970d b() {
        return this.f24318b;
    }

    @Override
    public void clear() {
        this.f24318b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Float) {
            return this.f24318b.Z0(((Float) obj).floatValue());
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.f24318b.equals(obj)) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f24318b.size()) {
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
            if (!(next instanceof Float)) {
                break;
            }
            if (!this.f24318b.Z0(((Float) next).floatValue())) {
                break;
            }
            size = i10;
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.f24318b.size() == 0;
    }

    @Override
    public Iterator<Float> iterator() {
        return new a();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24318b = (InterfaceC13970d) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        return (obj instanceof Float) && this.f24318b.c(((Float) obj).floatValue());
    }

    @Override
    public int size() {
        return this.f24318b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24318b);
    }

    public M(InterfaceC13970d interfaceC13970d) {
        this.f24318b = interfaceC13970d;
    }
}
