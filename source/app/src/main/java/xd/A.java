package Xd;

import Zd.InterfaceC3466y;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;

public class A implements Sd.e, Serializable {

    public static final long f28282d = 3053995032091335093L;

    public final Sd.e f28283b;

    public final Object f28284c;

    public A(Sd.e eVar) {
        eVar.getClass();
        this.f28283b = eVar;
        this.f28284c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28284c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean C1(Sd.e eVar) {
        boolean C12;
        synchronized (this.f28284c) {
            C12 = this.f28283b.C1(eVar);
        }
        return C12;
    }

    @Override
    public boolean G1(Sd.e eVar) {
        boolean G12;
        synchronized (this.f28284c) {
            G12 = this.f28283b.G1(eVar);
        }
        return G12;
    }

    @Override
    public boolean J1(Sd.e eVar) {
        boolean J12;
        synchronized (this.f28284c) {
            J12 = this.f28283b.J1(eVar);
        }
        return J12;
    }

    @Override
    public boolean Y0(double d10) {
        boolean Y02;
        synchronized (this.f28284c) {
            Y02 = this.f28283b.Y0(d10);
        }
        return Y02;
    }

    @Override
    public boolean Y1(double[] dArr) {
        boolean Y12;
        synchronized (this.f28284c) {
            Y12 = this.f28283b.Y1(dArr);
        }
        return Y12;
    }

    @Override
    public boolean a(double d10) {
        boolean a10;
        synchronized (this.f28284c) {
            a10 = this.f28283b.a(d10);
        }
        return a10;
    }

    @Override
    public boolean add(double d10) {
        boolean add;
        synchronized (this.f28284c) {
            add = this.f28283b.add(d10);
        }
        return add;
    }

    @Override
    public boolean addAll(Collection<? extends Double> collection) {
        boolean addAll;
        synchronized (this.f28284c) {
            addAll = this.f28283b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public void clear() {
        synchronized (this.f28284c) {
            this.f28283b.clear();
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28284c) {
            containsAll = this.f28283b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public double i() {
        return this.f28283b.i();
    }

    @Override
    public boolean i1(InterfaceC13470z interfaceC13470z) {
        boolean i12;
        synchronized (this.f28284c) {
            i12 = this.f28283b.i1(interfaceC13470z);
        }
        return i12;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28284c) {
            isEmpty = this.f28283b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3466y iterator() {
        return this.f28283b.iterator();
    }

    @Override
    public boolean m2(double[] dArr) {
        boolean m22;
        synchronized (this.f28284c) {
            m22 = this.f28283b.m2(dArr);
        }
        return m22;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28284c) {
            removeAll = this.f28283b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28284c) {
            retainAll = this.f28283b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public boolean s1(double[] dArr) {
        boolean s12;
        synchronized (this.f28284c) {
            s12 = this.f28283b.s1(dArr);
        }
        return s12;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28284c) {
            size = this.f28283b.size();
        }
        return size;
    }

    @Override
    public double[] toArray() {
        double[] array;
        synchronized (this.f28284c) {
            array = this.f28283b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28284c) {
            obj = this.f28283b.toString();
        }
        return obj;
    }

    @Override
    public boolean w1(double[] dArr) {
        boolean w12;
        synchronized (this.f28284c) {
            w12 = this.f28283b.w1(dArr);
        }
        return w12;
    }

    @Override
    public boolean x2(Sd.e eVar) {
        boolean x22;
        synchronized (this.f28284c) {
            x22 = this.f28283b.x2(eVar);
        }
        return x22;
    }

    @Override
    public double[] toArray(double[] dArr) {
        double[] array;
        synchronized (this.f28284c) {
            array = this.f28283b.toArray(dArr);
        }
        return array;
    }

    public A(Sd.e eVar, Object obj) {
        this.f28283b = eVar;
        this.f28284c = obj;
    }
}
