package Xd;

import Zd.InterfaceC3463v;
import ee.InterfaceC13077s;
import he.InterfaceC13465u;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class B implements InterfaceC13077s, Serializable {

    public static final long f28286f = 1978198479659022715L;

    public final InterfaceC13077s f28287b;

    public final Object f28288c;

    public transient InterfaceC13969c f28289d = null;

    public transient Sd.e f28290e = null;

    public B(InterfaceC13077s interfaceC13077s) {
        interfaceC13077s.getClass();
        this.f28287b = interfaceC13077s;
        this.f28288c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28288c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28288c) {
            A10 = this.f28287b.A(d10);
        }
        return A10;
    }

    @Override
    public boolean Fa(double d10, double d11) {
        boolean Fa2;
        synchronized (this.f28288c) {
            Fa2 = this.f28287b.Fa(d10, d11);
        }
        return Fa2;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28288c) {
            I10 = this.f28287b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public double J2(double d10, double d11) {
        double J22;
        synchronized (this.f28288c) {
            J22 = this.f28287b.J2(d10, d11);
        }
        return J22;
    }

    @Override
    public void Rd(InterfaceC13077s interfaceC13077s) {
        synchronized (this.f28288c) {
            this.f28287b.Rd(interfaceC13077s);
        }
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28288c) {
            T10 = this.f28287b.T(d10);
        }
        return T10;
    }

    @Override
    public boolean T9(InterfaceC13465u interfaceC13465u) {
        boolean T92;
        synchronized (this.f28288c) {
            T92 = this.f28287b.T9(interfaceC13465u);
        }
        return T92;
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28288c) {
            W10 = this.f28287b.W(dArr);
        }
        return W10;
    }

    @Override
    public double a(double d10) {
        double a10;
        synchronized (this.f28288c) {
            a10 = this.f28287b.a(d10);
        }
        return a10;
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28288c) {
            b02 = this.f28287b.b0(dArr);
        }
        return b02;
    }

    @Override
    public void clear() {
        synchronized (this.f28288c) {
            this.f28287b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28288c) {
            equals = this.f28287b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28288c) {
            hashCode = this.f28287b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28287b.i();
    }

    @Override
    public boolean increment(double d10) {
        boolean increment;
        synchronized (this.f28288c) {
            increment = this.f28287b.increment(d10);
        }
        return increment;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28288c) {
            isEmpty = this.f28287b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3463v iterator() {
        return this.f28287b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28288c) {
            j10 = this.f28287b.j();
        }
        return j10;
    }

    @Override
    public double j9(double d10, double d11) {
        double j92;
        synchronized (this.f28288c) {
            j92 = this.f28287b.j9(d10, d11);
        }
        return j92;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28288c) {
            try {
                if (this.f28290e == null) {
                    this.f28290e = new A(this.f28287b.k(), this.f28288c);
                }
                eVar = this.f28290e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28288c) {
            k02 = this.f28287b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public double kd(double d10, double d11, double d12) {
        double kd2;
        synchronized (this.f28288c) {
            kd2 = this.f28287b.kd(d10, d11, d12);
        }
        return kd2;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28288c) {
            try {
                if (this.f28289d == null) {
                    this.f28289d = new H(this.f28287b.keySet(), this.f28288c);
                }
                interfaceC13969c = this.f28289d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28287b.l();
    }

    @Override
    public boolean mc(InterfaceC13465u interfaceC13465u) {
        boolean mc2;
        synchronized (this.f28288c) {
            mc2 = this.f28287b.mc(interfaceC13465u);
        }
        return mc2;
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28288c) {
            this.f28287b.p(cVar);
        }
    }

    @Override
    public double p0(double d10) {
        double p02;
        synchronized (this.f28288c) {
            p02 = this.f28287b.p0(d10);
        }
        return p02;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Double> map) {
        synchronized (this.f28288c) {
            this.f28287b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28288c) {
            size = this.f28287b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28288c) {
            obj = this.f28287b.toString();
        }
        return obj;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28288c) {
            values = this.f28287b.values();
        }
        return values;
    }

    public B(InterfaceC13077s interfaceC13077s, Object obj) {
        this.f28287b = interfaceC13077s;
        this.f28288c = obj;
    }
}
