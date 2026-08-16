package Xd;

import Zd.InterfaceC3458p;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;

public class C3289p implements Sd.b, Serializable {

    public static final long f28561d = 3053995032091335093L;

    public final Sd.b f28562b;

    public final Object f28563c;

    public C3289p(Sd.b bVar) {
        bVar.getClass();
        this.f28562b = bVar;
        this.f28563c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28563c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public char[] Q0(char[] cArr) {
        char[] Q02;
        synchronized (this.f28563c) {
            Q02 = this.f28562b.Q0(cArr);
        }
        return Q02;
    }

    @Override
    public boolean X1(char[] cArr) {
        boolean X12;
        synchronized (this.f28563c) {
            X12 = this.f28562b.X1(cArr);
        }
        return X12;
    }

    @Override
    public boolean addAll(Collection<? extends Character> collection) {
        boolean addAll;
        synchronized (this.f28563c) {
            addAll = this.f28562b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public boolean b(char c10) {
        boolean b10;
        synchronized (this.f28563c) {
            b10 = this.f28562b.b(c10);
        }
        return b10;
    }

    @Override
    public boolean b1(char c10) {
        boolean b12;
        synchronized (this.f28563c) {
            b12 = this.f28562b.b1(c10);
        }
        return b12;
    }

    @Override
    public void clear() {
        synchronized (this.f28563c) {
            this.f28562b.clear();
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28563c) {
            containsAll = this.f28562b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public boolean e1(char c10) {
        boolean e12;
        synchronized (this.f28563c) {
            e12 = this.f28562b.e1(c10);
        }
        return e12;
    }

    @Override
    public boolean g1(InterfaceC13462q interfaceC13462q) {
        boolean g12;
        synchronized (this.f28563c) {
            g12 = this.f28562b.g1(interfaceC13462q);
        }
        return g12;
    }

    @Override
    public char i() {
        return this.f28562b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28563c) {
            isEmpty = this.f28562b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3458p iterator() {
        return this.f28562b.iterator();
    }

    @Override
    public boolean n2(char[] cArr) {
        boolean n22;
        synchronized (this.f28563c) {
            n22 = this.f28562b.n2(cArr);
        }
        return n22;
    }

    @Override
    public boolean p2(Sd.b bVar) {
        boolean p22;
        synchronized (this.f28563c) {
            p22 = this.f28562b.p2(bVar);
        }
        return p22;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28563c) {
            removeAll = this.f28562b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28563c) {
            retainAll = this.f28562b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28563c) {
            size = this.f28562b.size();
        }
        return size;
    }

    @Override
    public boolean t2(Sd.b bVar) {
        boolean t22;
        synchronized (this.f28563c) {
            t22 = this.f28562b.t2(bVar);
        }
        return t22;
    }

    @Override
    public char[] toArray() {
        char[] array;
        synchronized (this.f28563c) {
            array = this.f28562b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28563c) {
            obj = this.f28562b.toString();
        }
        return obj;
    }

    @Override
    public boolean u1(char[] cArr) {
        boolean u12;
        synchronized (this.f28563c) {
            u12 = this.f28562b.u1(cArr);
        }
        return u12;
    }

    @Override
    public boolean u2(Sd.b bVar) {
        boolean u22;
        synchronized (this.f28563c) {
            u22 = this.f28562b.u2(bVar);
        }
        return u22;
    }

    @Override
    public boolean v1(char[] cArr) {
        boolean v12;
        synchronized (this.f28563c) {
            v12 = this.f28562b.v1(cArr);
        }
        return v12;
    }

    @Override
    public boolean z1(Sd.b bVar) {
        boolean z12;
        synchronized (this.f28563c) {
            z12 = this.f28562b.z1(bVar);
        }
        return z12;
    }

    public C3289p(Sd.b bVar, Object obj) {
        this.f28562b = bVar;
        this.f28563c = obj;
    }
}
