package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;

public class H0 implements Sd.i, Serializable {

    public static final long f28328d = 3053995032091335093L;

    public final Sd.i f28329b;

    public final Object f28330c;

    public H0(Sd.i iVar) {
        iVar.getClass();
        this.f28329b = iVar;
        this.f28330c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28330c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A2(short[] sArr) {
        boolean A22;
        synchronized (this.f28330c) {
            A22 = this.f28329b.A2(sArr);
        }
        return A22;
    }

    @Override
    public boolean F1(Sd.i iVar) {
        boolean F12;
        synchronized (this.f28330c) {
            F12 = this.f28329b.F1(iVar);
        }
        return F12;
    }

    @Override
    public short[] N0(short[] sArr) {
        short[] N02;
        synchronized (this.f28330c) {
            N02 = this.f28329b.N0(sArr);
        }
        return N02;
    }

    @Override
    public boolean W0(short s10) {
        boolean W02;
        synchronized (this.f28330c) {
            W02 = this.f28329b.W0(s10);
        }
        return W02;
    }

    @Override
    public boolean Z1(short[] sArr) {
        boolean Z12;
        synchronized (this.f28330c) {
            Z12 = this.f28329b.Z1(sArr);
        }
        return Z12;
    }

    @Override
    public boolean addAll(Collection<? extends Short> collection) {
        boolean addAll;
        synchronized (this.f28330c) {
            addAll = this.f28329b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public boolean c1(short s10) {
        boolean c12;
        synchronized (this.f28330c) {
            c12 = this.f28329b.c1(s10);
        }
        return c12;
    }

    @Override
    public void clear() {
        synchronized (this.f28330c) {
            this.f28329b.clear();
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28330c) {
            containsAll = this.f28329b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public boolean d(short s10) {
        boolean d10;
        synchronized (this.f28330c) {
            d10 = this.f28329b.d(s10);
        }
        return d10;
    }

    @Override
    public boolean h1(he.t0 t0Var) {
        boolean h12;
        synchronized (this.f28330c) {
            h12 = this.f28329b.h1(t0Var);
        }
        return h12;
    }

    @Override
    public short i() {
        return this.f28329b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28330c) {
            isEmpty = this.f28329b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.s0 iterator() {
        return this.f28329b.iterator();
    }

    @Override
    public boolean n1(short[] sArr) {
        boolean n12;
        synchronized (this.f28330c) {
            n12 = this.f28329b.n1(sArr);
        }
        return n12;
    }

    @Override
    public boolean o1(Sd.i iVar) {
        boolean o12;
        synchronized (this.f28330c) {
            o12 = this.f28329b.o1(iVar);
        }
        return o12;
    }

    @Override
    public boolean q2(Sd.i iVar) {
        boolean q22;
        synchronized (this.f28330c) {
            q22 = this.f28329b.q2(iVar);
        }
        return q22;
    }

    @Override
    public boolean r1(short[] sArr) {
        boolean r12;
        synchronized (this.f28330c) {
            r12 = this.f28329b.r1(sArr);
        }
        return r12;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28330c) {
            removeAll = this.f28329b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28330c) {
            retainAll = this.f28329b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28330c) {
            size = this.f28329b.size();
        }
        return size;
    }

    @Override
    public short[] toArray() {
        short[] array;
        synchronized (this.f28330c) {
            array = this.f28329b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28330c) {
            obj = this.f28329b.toString();
        }
        return obj;
    }

    @Override
    public boolean v2(Sd.i iVar) {
        boolean v22;
        synchronized (this.f28330c) {
            v22 = this.f28329b.v2(iVar);
        }
        return v22;
    }

    public H0(Sd.i iVar, Object obj) {
        this.f28329b = iVar;
        this.f28330c = obj;
    }
}
