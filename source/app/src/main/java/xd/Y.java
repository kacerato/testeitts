package Xd;

import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class Y implements ee.I, Serializable {

    public static final long f28428f = 1978198479659022715L;

    public final ee.I f28429b;

    public final Object f28430c;

    public transient InterfaceC13971e f28431d = null;

    public transient Sd.e f28432e = null;

    public Y(ee.I i10) {
        i10.getClass();
        this.f28429b = i10;
        this.f28430c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28430c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28430c) {
            F10 = this.f28429b.F(i10);
        }
        return F10;
    }

    @Override
    public boolean F0(int i10) {
        boolean F02;
        synchronized (this.f28430c) {
            F02 = this.f28429b.F0(i10);
        }
        return F02;
    }

    @Override
    public double F6(int i10, double d10, double d11) {
        double F62;
        synchronized (this.f28430c) {
            F62 = this.f28429b.F6(i10, d10, d11);
        }
        return F62;
    }

    @Override
    public boolean Fb(int i10, double d10) {
        boolean Fb2;
        synchronized (this.f28430c) {
            Fb2 = this.f28429b.Fb(i10, d10);
        }
        return Fb2;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28430c) {
            I10 = this.f28429b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public double Id(int i10, double d10) {
        double Id2;
        synchronized (this.f28430c) {
            Id2 = this.f28429b.Id(i10, d10);
        }
        return Id2;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28430c) {
            J10 = this.f28429b.J(s10);
        }
        return J10;
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28430c) {
            T10 = this.f28429b.T(d10);
        }
        return T10;
    }

    @Override
    public double W4(int i10, double d10) {
        double W42;
        synchronized (this.f28430c) {
            W42 = this.f28429b.W4(i10, d10);
        }
        return W42;
    }

    @Override
    public void W7(ee.I i10) {
        synchronized (this.f28430c) {
            this.f28429b.W7(i10);
        }
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28430c) {
            b02 = this.f28429b.b0(dArr);
        }
        return b02;
    }

    @Override
    public void clear() {
        synchronized (this.f28430c) {
            this.f28429b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28430c) {
            equals = this.f28429b.equals(obj);
        }
        return equals;
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28430c) {
            f02 = this.f28429b.f0(iArr);
        }
        return f02;
    }

    @Override
    public double get(int i10) {
        double d10;
        synchronized (this.f28430c) {
            d10 = this.f28429b.get(i10);
        }
        return d10;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28430c) {
            hashCode = this.f28429b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28429b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28430c) {
            isEmpty = this.f28429b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.N iterator() {
        return this.f28429b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28430c) {
            j10 = this.f28429b.j();
        }
        return j10;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28430c) {
            try {
                if (this.f28432e == null) {
                    this.f28432e = new A(this.f28429b.k(), this.f28430c);
                }
                eVar = this.f28432e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28430c) {
            try {
                if (this.f28431d == null) {
                    this.f28431d = new C3268e0(this.f28429b.keySet(), this.f28430c);
                }
                interfaceC13971e = this.f28431d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28429b.l();
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28430c) {
            this.f28429b.p(cVar);
        }
    }

    @Override
    public boolean p3(he.M m10) {
        boolean p32;
        synchronized (this.f28430c) {
            p32 = this.f28429b.p3(m10);
        }
        return p32;
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Double> map) {
        synchronized (this.f28430c) {
            this.f28429b.putAll(map);
        }
    }

    @Override
    public boolean qc(he.M m10) {
        boolean qc2;
        synchronized (this.f28430c) {
            qc2 = this.f28429b.qc(m10);
        }
        return qc2;
    }

    @Override
    public double remove(int i10) {
        double remove;
        synchronized (this.f28430c) {
            remove = this.f28429b.remove(i10);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28430c) {
            size = this.f28429b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28430c) {
            obj = this.f28429b.toString();
        }
        return obj;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28430c) {
            values = this.f28429b.values();
        }
        return values;
    }

    public Y(ee.I i10, Object obj) {
        this.f28429b = i10;
        this.f28430c = obj;
    }
}
