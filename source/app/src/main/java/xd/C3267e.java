package Xd;

import Zd.InterfaceC3449g;
import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;

public class C3267e implements Sd.a, Serializable {

    public static final long f28469d = 3053995032091335093L;

    public final Sd.a f28470b;

    public final Object f28471c;

    public C3267e(Sd.a aVar) {
        aVar.getClass();
        this.f28470b = aVar;
        this.f28471c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28471c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean E1(Sd.a aVar) {
        boolean E12;
        synchronized (this.f28471c) {
            E12 = this.f28470b.E1(aVar);
        }
        return E12;
    }

    @Override
    public byte[] R0(byte[] bArr) {
        byte[] R02;
        synchronized (this.f28471c) {
            R02 = this.f28470b.R0(bArr);
        }
        return R02;
    }

    @Override
    public boolean V0(InterfaceC13453h interfaceC13453h) {
        boolean V02;
        synchronized (this.f28471c) {
            V02 = this.f28470b.V0(interfaceC13453h);
        }
        return V02;
    }

    @Override
    public boolean W1(byte[] bArr) {
        boolean W12;
        synchronized (this.f28471c) {
            W12 = this.f28470b.W1(bArr);
        }
        return W12;
    }

    @Override
    public boolean a1(byte b10) {
        boolean a12;
        synchronized (this.f28471c) {
            a12 = this.f28470b.a1(b10);
        }
        return a12;
    }

    @Override
    public boolean addAll(Collection<? extends Byte> collection) {
        boolean addAll;
        synchronized (this.f28471c) {
            addAll = this.f28470b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public void clear() {
        synchronized (this.f28471c) {
            this.f28470b.clear();
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28471c) {
            containsAll = this.f28470b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public boolean d1(byte b10) {
        boolean d12;
        synchronized (this.f28471c) {
            d12 = this.f28470b.d1(b10);
        }
        return d12;
    }

    @Override
    public byte i() {
        return this.f28470b.i();
    }

    @Override
    public boolean i2(Sd.a aVar) {
        boolean i22;
        synchronized (this.f28471c) {
            i22 = this.f28470b.i2(aVar);
        }
        return i22;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28471c) {
            isEmpty = this.f28470b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3449g iterator() {
        return this.f28470b.iterator();
    }

    @Override
    public boolean m(byte b10) {
        boolean m10;
        synchronized (this.f28471c) {
            m10 = this.f28470b.m(b10);
        }
        return m10;
    }

    @Override
    public boolean o2(byte[] bArr) {
        boolean o22;
        synchronized (this.f28471c) {
            o22 = this.f28470b.o2(bArr);
        }
        return o22;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28471c) {
            removeAll = this.f28470b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28471c) {
            retainAll = this.f28470b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public boolean s2(Sd.a aVar) {
        boolean s22;
        synchronized (this.f28471c) {
            s22 = this.f28470b.s2(aVar);
        }
        return s22;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28471c) {
            size = this.f28470b.size();
        }
        return size;
    }

    @Override
    public boolean t1(byte[] bArr) {
        boolean t12;
        synchronized (this.f28471c) {
            t12 = this.f28470b.t1(bArr);
        }
        return t12;
    }

    @Override
    public byte[] toArray() {
        byte[] array;
        synchronized (this.f28471c) {
            array = this.f28470b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28471c) {
            obj = this.f28470b.toString();
        }
        return obj;
    }

    @Override
    public boolean w2(Sd.a aVar) {
        boolean w22;
        synchronized (this.f28471c) {
            w22 = this.f28470b.w2(aVar);
        }
        return w22;
    }

    @Override
    public boolean y1(byte[] bArr) {
        boolean y12;
        synchronized (this.f28471c) {
            y12 = this.f28470b.y1(bArr);
        }
        return y12;
    }

    public C3267e(Sd.a aVar, Object obj) {
        this.f28470b = aVar;
        this.f28471c = obj;
    }
}
