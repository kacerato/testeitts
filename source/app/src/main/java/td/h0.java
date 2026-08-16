package Td;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import ke.InterfaceC13972f;

public class h0 extends AbstractSet<Long> implements Set<Long>, Externalizable {

    public static final long f24538c = 1;

    public InterfaceC13972f f24539b;

    public class a implements Iterator<Long> {

        public final Zd.b0 f24540b;

        public a() {
            this.f24540b = h0.this.f24539b.iterator();
        }

        @Override
        public Long next() {
            return Long.valueOf(this.f24540b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f24540b.hasNext();
        }

        @Override
        public void remove() {
            this.f24540b.remove();
        }
    }

    public h0() {
    }

    @Override
    public boolean add(Long l10) {
        return l10 != null && this.f24539b.M0(l10.longValue());
    }

    public InterfaceC13972f b() {
        return this.f24539b;
    }

    @Override
    public void clear() {
        this.f24539b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Long) {
            return this.f24539b.X0(((Long) obj).longValue());
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.f24539b.equals(obj)) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f24539b.size()) {
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
            if (!(next instanceof Long)) {
                break;
            }
            if (!this.f24539b.X0(((Long) next).longValue())) {
                break;
            }
            size = i10;
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.f24539b.size() == 0;
    }

    @Override
    public Iterator<Long> iterator() {
        return new a();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24539b = (InterfaceC13972f) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        return (obj instanceof Long) && this.f24539b.e(((Long) obj).longValue());
    }

    @Override
    public int size() {
        return this.f24539b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24539b);
    }

    public h0(InterfaceC13972f interfaceC13972f) {
        this.f24539b = interfaceC13972f;
    }
}
