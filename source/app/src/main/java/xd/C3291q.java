package Xd;

import Zd.InterfaceC3455m;
import ee.InterfaceC13070k;
import he.InterfaceC13457l;
import he.InterfaceC13462q;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3291q implements InterfaceC13070k, Serializable {

    public static final long f28565f = 1978198479659022715L;

    public final InterfaceC13070k f28566b;

    public final Object f28567c;

    public transient InterfaceC13968b f28568d = null;

    public transient Sd.e f28569e = null;

    public C3291q(InterfaceC13070k interfaceC13070k) {
        interfaceC13070k.getClass();
        this.f28566b = interfaceC13070k;
        this.f28567c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28567c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public double A9(char c10, double d10) {
        double A92;
        synchronized (this.f28567c) {
            A92 = this.f28566b.A9(c10, d10);
        }
        return A92;
    }

    @Override
    public double B4(char c10, double d10) {
        double B42;
        synchronized (this.f28567c) {
            B42 = this.f28566b.B4(c10, d10);
        }
        return B42;
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28567c) {
            C10 = this.f28566b.C(c10);
        }
        return C10;
    }

    @Override
    public double C5(char c10, double d10, double d11) {
        double C52;
        synchronized (this.f28567c) {
            C52 = this.f28566b.C5(c10, d10, d11);
        }
        return C52;
    }

    @Override
    public boolean D0(char c10) {
        boolean D02;
        synchronized (this.f28567c) {
            D02 = this.f28566b.D0(c10);
        }
        return D02;
    }

    @Override
    public boolean Hd(InterfaceC13457l interfaceC13457l) {
        boolean Hd2;
        synchronized (this.f28567c) {
            Hd2 = this.f28566b.Hd(interfaceC13457l);
        }
        return Hd2;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28567c) {
            I10 = this.f28566b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public boolean M8(InterfaceC13457l interfaceC13457l) {
        boolean M82;
        synchronized (this.f28567c) {
            M82 = this.f28566b.M8(interfaceC13457l);
        }
        return M82;
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28567c) {
            T10 = this.f28566b.T(d10);
        }
        return T10;
    }

    @Override
    public boolean Ud(char c10, double d10) {
        boolean Ud2;
        synchronized (this.f28567c) {
            Ud2 = this.f28566b.Ud(c10, d10);
        }
        return Ud2;
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28567c) {
            V10 = this.f28566b.V(cArr);
        }
        return V10;
    }

    @Override
    public double b(char c10) {
        double b10;
        synchronized (this.f28567c) {
            b10 = this.f28566b.b(c10);
        }
        return b10;
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28567c) {
            b02 = this.f28566b.b0(dArr);
        }
        return b02;
    }

    @Override
    public void clear() {
        synchronized (this.f28567c) {
            this.f28566b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28567c) {
            equals = this.f28566b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28567c) {
            hashCode = this.f28566b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28566b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28567c) {
            isEmpty = this.f28566b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3455m iterator() {
        return this.f28566b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28567c) {
            j10 = this.f28566b.j();
        }
        return j10;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28567c) {
            try {
                if (this.f28569e == null) {
                    this.f28569e = new A(this.f28566b.k(), this.f28567c);
                }
                eVar = this.f28569e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28567c) {
            try {
                if (this.f28568d == null) {
                    this.f28568d = new C3296w(this.f28566b.keySet(), this.f28567c);
                }
                interfaceC13968b = this.f28568d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28566b.l();
    }

    @Override
    public void l6(InterfaceC13070k interfaceC13070k) {
        synchronized (this.f28567c) {
            this.f28566b.l6(interfaceC13070k);
        }
    }

    @Override
    public double o0(char c10) {
        double o02;
        synchronized (this.f28567c) {
            o02 = this.f28566b.o0(c10);
        }
        return o02;
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28567c) {
            this.f28566b.p(cVar);
        }
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Double> map) {
        synchronized (this.f28567c) {
            this.f28566b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28567c) {
            size = this.f28566b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28567c) {
            obj = this.f28566b.toString();
        }
        return obj;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28567c) {
            values = this.f28566b.values();
        }
        return values;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28567c) {
            y10 = this.f28566b.y(interfaceC13462q);
        }
        return y10;
    }

    public C3291q(InterfaceC13070k interfaceC13070k, Object obj) {
        this.f28566b = interfaceC13070k;
        this.f28567c = obj;
    }
}
