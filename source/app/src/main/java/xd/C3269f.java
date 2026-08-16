package Xd;

import Zd.InterfaceC3446d;
import ee.InterfaceC13062c;
import he.InterfaceC13448c;
import he.InterfaceC13453h;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3269f implements InterfaceC13062c, Serializable {

    public static final long f28473f = 1978198479659022715L;

    public final InterfaceC13062c f28474b;

    public final Object f28475c;

    public transient InterfaceC13967a f28476d = null;

    public transient Sd.e f28477e = null;

    public C3269f(InterfaceC13062c interfaceC13062c) {
        interfaceC13062c.getClass();
        this.f28474b = interfaceC13062c;
        this.f28475c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28475c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean Ac(InterfaceC13448c interfaceC13448c) {
        boolean Ac2;
        synchronized (this.f28475c) {
            Ac2 = this.f28474b.Ac(interfaceC13448c);
        }
        return Ac2;
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28475c) {
            D10 = this.f28474b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean E0(byte b10) {
        boolean E02;
        synchronized (this.f28475c) {
            E02 = this.f28474b.E0(b10);
        }
        return E02;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28475c) {
            I10 = this.f28474b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public void Jb(InterfaceC13062c interfaceC13062c) {
        synchronized (this.f28475c) {
            this.f28474b.Jb(interfaceC13062c);
        }
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28475c) {
            T10 = this.f28474b.T(d10);
        }
        return T10;
    }

    @Override
    public double T4(byte b10, double d10, double d11) {
        double T42;
        synchronized (this.f28475c) {
            T42 = this.f28474b.T4(b10, d10, d11);
        }
        return T42;
    }

    @Override
    public double U3(byte b10, double d10) {
        double U32;
        synchronized (this.f28475c) {
            U32 = this.f28474b.U3(b10, d10);
        }
        return U32;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28475c) {
            X10 = this.f28474b.X(bArr);
        }
        return X10;
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28475c) {
            b02 = this.f28474b.b0(dArr);
        }
        return b02;
    }

    @Override
    public void clear() {
        synchronized (this.f28475c) {
            this.f28474b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28475c) {
            equals = this.f28474b.equals(obj);
        }
        return equals;
    }

    @Override
    public double fa(byte b10, double d10) {
        double fa2;
        synchronized (this.f28475c) {
            fa2 = this.f28474b.fa(b10, d10);
        }
        return fa2;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28475c) {
            hashCode = this.f28474b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28474b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28475c) {
            isEmpty = this.f28474b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3446d iterator() {
        return this.f28474b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28475c) {
            j10 = this.f28474b.j();
        }
        return j10;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28475c) {
            try {
                if (this.f28477e == null) {
                    this.f28477e = new A(this.f28474b.k(), this.f28475c);
                }
                eVar = this.f28477e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public boolean ke(byte b10, double d10) {
        boolean ke2;
        synchronized (this.f28475c) {
            ke2 = this.f28474b.ke(b10, d10);
        }
        return ke2;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28475c) {
            try {
                if (this.f28476d == null) {
                    this.f28476d = new C3281l(this.f28474b.keySet(), this.f28475c);
                }
                interfaceC13967a = this.f28476d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28474b.l();
    }

    @Override
    public double m(byte b10) {
        double m10;
        synchronized (this.f28475c) {
            m10 = this.f28474b.m(b10);
        }
        return m10;
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28475c) {
            this.f28474b.p(cVar);
        }
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Double> map) {
        synchronized (this.f28475c) {
            this.f28474b.putAll(map);
        }
    }

    @Override
    public double s0(byte b10) {
        double s02;
        synchronized (this.f28475c) {
            s02 = this.f28474b.s0(b10);
        }
        return s02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28475c) {
            size = this.f28474b.size();
        }
        return size;
    }

    @Override
    public boolean t3(InterfaceC13448c interfaceC13448c) {
        boolean t32;
        synchronized (this.f28475c) {
            t32 = this.f28474b.t3(interfaceC13448c);
        }
        return t32;
    }

    public String toString() {
        String obj;
        synchronized (this.f28475c) {
            obj = this.f28474b.toString();
        }
        return obj;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28475c) {
            values = this.f28474b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28475c) {
            w10 = this.f28474b.w(interfaceC13453h);
        }
        return w10;
    }

    public C3269f(InterfaceC13062c interfaceC13062c, Object obj) {
        this.f28474b = interfaceC13062c;
        this.f28475c = obj;
    }
}
