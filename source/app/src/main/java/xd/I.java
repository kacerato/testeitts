package Xd;

import ee.InterfaceC13082x;
import he.InterfaceC13444A;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class I implements InterfaceC13082x, Serializable {

    public static final long f28331f = 1978198479659022715L;

    public final InterfaceC13082x f28332b;

    public final Object f28333c;

    public transient InterfaceC13969c f28334d = null;

    public transient Sd.i f28335e = null;

    public I(InterfaceC13082x interfaceC13082x) {
        interfaceC13082x.getClass();
        this.f28332b = interfaceC13082x;
        this.f28333c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28333c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28333c) {
            A10 = this.f28332b.A(d10);
        }
        return A10;
    }

    @Override
    public void H4(InterfaceC13082x interfaceC13082x) {
        synchronized (this.f28333c) {
            this.f28332b.H4(interfaceC13082x);
        }
    }

    @Override
    public boolean Je(InterfaceC13444A interfaceC13444A) {
        boolean Je2;
        synchronized (this.f28333c) {
            Je2 = this.f28332b.Je(interfaceC13444A);
        }
        return Je2;
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28333c) {
            L10 = this.f28332b.L(s10);
        }
        return L10;
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28333c) {
            N10 = this.f28332b.N(t0Var);
        }
        return N10;
    }

    @Override
    public boolean Sa(double d10, short s10) {
        boolean Sa2;
        synchronized (this.f28333c) {
            Sa2 = this.f28332b.Sa(d10, s10);
        }
        return Sa2;
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28333c) {
            W10 = this.f28332b.W(dArr);
        }
        return W10;
    }

    @Override
    public short Y2(double d10, short s10) {
        short Y22;
        synchronized (this.f28333c) {
            Y22 = this.f28332b.Y2(d10, s10);
        }
        return Y22;
    }

    @Override
    public short a(double d10) {
        short a10;
        synchronized (this.f28333c) {
            a10 = this.f28332b.a(d10);
        }
        return a10;
    }

    @Override
    public void clear() {
        synchronized (this.f28333c) {
            this.f28332b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28333c) {
            equals = this.f28332b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28333c) {
            hashCode = this.f28332b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28332b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28333c) {
            i02 = this.f28332b.i0(sArr);
        }
        return i02;
    }

    @Override
    public boolean increment(double d10) {
        boolean increment;
        synchronized (this.f28333c) {
            increment = this.f28332b.increment(d10);
        }
        return increment;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28333c) {
            isEmpty = this.f28332b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.B iterator() {
        return this.f28332b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28333c) {
            j10 = this.f28332b.j();
        }
        return j10;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28333c) {
            try {
                if (this.f28335e == null) {
                    this.f28335e = new H0(this.f28332b.k(), this.f28333c);
                }
                iVar = this.f28335e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28333c) {
            k02 = this.f28332b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28333c) {
            try {
                if (this.f28334d == null) {
                    this.f28334d = new H(this.f28332b.keySet(), this.f28333c);
                }
                interfaceC13969c = this.f28334d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28332b.l();
    }

    @Override
    public short p0(double d10) {
        short p02;
        synchronized (this.f28333c) {
            p02 = this.f28332b.p0(d10);
        }
        return p02;
    }

    @Override
    public short p8(double d10, short s10, short s11) {
        short p82;
        synchronized (this.f28333c) {
            p82 = this.f28332b.p8(d10, s10, s11);
        }
        return p82;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Short> map) {
        synchronized (this.f28333c) {
            this.f28332b.putAll(map);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28333c) {
            this.f28332b.r(hVar);
        }
    }

    @Override
    public short s9(double d10, short s10) {
        short s92;
        synchronized (this.f28333c) {
            s92 = this.f28332b.s9(d10, s10);
        }
        return s92;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28333c) {
            size = this.f28332b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28333c) {
            obj = this.f28332b.toString();
        }
        return obj;
    }

    @Override
    public boolean u9(InterfaceC13444A interfaceC13444A) {
        boolean u92;
        synchronized (this.f28333c) {
            u92 = this.f28332b.u9(interfaceC13444A);
        }
        return u92;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28333c) {
            values = this.f28332b.values();
        }
        return values;
    }

    public I(InterfaceC13082x interfaceC13082x, Object obj) {
        this.f28332b = interfaceC13082x;
        this.f28333c = obj;
    }
}
