package Xd;

import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class I0 implements ee.h0, Serializable {

    public static final long f28336f = 1978198479659022715L;

    public final ee.h0 f28337b;

    public final Object f28338c;

    public transient InterfaceC13973g f28339d = null;

    public transient Sd.e f28340e = null;

    public I0(ee.h0 h0Var) {
        h0Var.getClass();
        this.f28337b = h0Var;
        this.f28338c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28338c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public double E3(short s10, double d10) {
        double E32;
        synchronized (this.f28338c) {
            E32 = this.f28337b.E3(s10, d10);
        }
        return E32;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28338c) {
            I10 = this.f28337b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public boolean I0(short s10) {
        boolean I02;
        synchronized (this.f28338c) {
            I02 = this.f28337b.I0(s10);
        }
        return I02;
    }

    @Override
    public boolean Nc(he.o0 o0Var) {
        boolean Nc2;
        synchronized (this.f28338c) {
            Nc2 = this.f28337b.Nc(o0Var);
        }
        return Nc2;
    }

    @Override
    public void Q7(ee.h0 h0Var) {
        synchronized (this.f28338c) {
            this.f28337b.Q7(h0Var);
        }
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28338c) {
            T10 = this.f28337b.T(d10);
        }
        return T10;
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28338c) {
            Y10 = this.f28337b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28338c) {
            b02 = this.f28337b.b0(dArr);
        }
        return b02;
    }

    @Override
    public void clear() {
        synchronized (this.f28338c) {
            this.f28337b.clear();
        }
    }

    @Override
    public double d(short s10) {
        double d10;
        synchronized (this.f28338c) {
            d10 = this.f28337b.d(s10);
        }
        return d10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28338c) {
            equals = this.f28337b.equals(obj);
        }
        return equals;
    }

    @Override
    public boolean g8(short s10, double d10) {
        boolean g82;
        synchronized (this.f28338c) {
            g82 = this.f28337b.g8(s10, d10);
        }
        return g82;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28338c) {
            hashCode = this.f28337b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28337b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28338c) {
            isEmpty = this.f28337b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.p0 iterator() {
        return this.f28337b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28338c) {
            j10 = this.f28337b.j();
        }
        return j10;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28338c) {
            try {
                if (this.f28340e == null) {
                    this.f28340e = new A(this.f28337b.k(), this.f28338c);
                }
                eVar = this.f28340e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28338c) {
            try {
                if (this.f28339d == null) {
                    this.f28339d = new O0(this.f28337b.keySet(), this.f28338c);
                }
                interfaceC13973g = this.f28339d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28337b.l();
    }

    @Override
    public double lc(short s10, double d10, double d11) {
        double lc2;
        synchronized (this.f28338c) {
            lc2 = this.f28337b.lc(s10, d10, d11);
        }
        return lc2;
    }

    @Override
    public boolean m8(he.o0 o0Var) {
        boolean m82;
        synchronized (this.f28338c) {
            m82 = this.f28337b.m8(o0Var);
        }
        return m82;
    }

    @Override
    public double ma(short s10, double d10) {
        double ma2;
        synchronized (this.f28338c) {
            ma2 = this.f28337b.ma(s10, d10);
        }
        return ma2;
    }

    @Override
    public double n0(short s10) {
        double n02;
        synchronized (this.f28338c) {
            n02 = this.f28337b.n0(s10);
        }
        return n02;
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28338c) {
            this.f28337b.p(cVar);
        }
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Double> map) {
        synchronized (this.f28338c) {
            this.f28337b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28338c) {
            size = this.f28337b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28338c) {
            obj = this.f28337b.toString();
        }
        return obj;
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28338c) {
            v10 = this.f28337b.v(t0Var);
        }
        return v10;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28338c) {
            values = this.f28337b.values();
        }
        return values;
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28338c) {
            z10 = this.f28337b.z(s10);
        }
        return z10;
    }

    public I0(ee.h0 h0Var, Object obj) {
        this.f28337b = h0Var;
        this.f28338c = obj;
    }
}
