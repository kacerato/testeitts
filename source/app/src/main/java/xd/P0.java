package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class P0 implements ee.m0, Serializable {

    public static final long f28394f = 1978198479659022715L;

    public final ee.m0 f28395b;

    public final Object f28396c;

    public transient InterfaceC13973g f28397d = null;

    public transient Sd.i f28398e = null;

    public P0(ee.m0 m0Var) {
        m0Var.getClass();
        this.f28395b = m0Var;
        this.f28396c = this;
    }

    @Override
    public short A5(short s10, short s11, short s12) {
        short A52;
        synchronized (this.f28396c) {
            A52 = this.f28395b.A5(s10, s11, s12);
        }
        return A52;
    }

    @Override
    public short Da(short s10, short s11) {
        short Da2;
        synchronized (this.f28396c) {
            Da2 = this.f28395b.Da(s10, s11);
        }
        return Da2;
    }

    @Override
    public boolean I0(short s10) {
        boolean I02;
        synchronized (this.f28396c) {
            I02 = this.f28395b.I0(s10);
        }
        return I02;
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28396c) {
            L10 = this.f28395b.L(s10);
        }
        return L10;
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28396c) {
            N10 = this.f28395b.N(t0Var);
        }
        return N10;
    }

    @Override
    public boolean N6(he.u0 u0Var) {
        boolean N62;
        synchronized (this.f28396c) {
            N62 = this.f28395b.N6(u0Var);
        }
        return N62;
    }

    @Override
    public short W3(short s10, short s11) {
        short W32;
        synchronized (this.f28396c) {
            W32 = this.f28395b.W3(s10, s11);
        }
        return W32;
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28396c) {
            Y10 = this.f28395b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public boolean Z9(he.u0 u0Var) {
        boolean Z92;
        synchronized (this.f28396c) {
            Z92 = this.f28395b.Z9(u0Var);
        }
        return Z92;
    }

    public final void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28396c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public void clear() {
        synchronized (this.f28396c) {
            this.f28395b.clear();
        }
    }

    @Override
    public short d(short s10) {
        short d10;
        synchronized (this.f28396c) {
            d10 = this.f28395b.d(s10);
        }
        return d10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28396c) {
            equals = this.f28395b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28396c) {
            hashCode = this.f28395b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28395b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28396c) {
            i02 = this.f28395b.i0(sArr);
        }
        return i02;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28396c) {
            isEmpty = this.f28395b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.v0 iterator() {
        return this.f28395b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28396c) {
            j10 = this.f28395b.j();
        }
        return j10;
    }

    @Override
    public boolean j8(short s10, short s11) {
        boolean j82;
        synchronized (this.f28396c) {
            j82 = this.f28395b.j8(s10, s11);
        }
        return j82;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28396c) {
            try {
                if (this.f28398e == null) {
                    this.f28398e = new H0(this.f28395b.k(), this.f28396c);
                }
                iVar = this.f28398e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28396c) {
            try {
                if (this.f28397d == null) {
                    this.f28397d = new O0(this.f28395b.keySet(), this.f28396c);
                }
                interfaceC13973g = this.f28397d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28395b.l();
    }

    @Override
    public short n0(short s10) {
        short n02;
        synchronized (this.f28396c) {
            n02 = this.f28395b.n0(s10);
        }
        return n02;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Short> map) {
        synchronized (this.f28396c) {
            this.f28395b.putAll(map);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28396c) {
            this.f28395b.r(hVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28396c) {
            size = this.f28395b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28396c) {
            obj = this.f28395b.toString();
        }
        return obj;
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28396c) {
            v10 = this.f28395b.v(t0Var);
        }
        return v10;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28396c) {
            values = this.f28395b.values();
        }
        return values;
    }

    @Override
    public void x4(ee.m0 m0Var) {
        synchronized (this.f28396c) {
            this.f28395b.x4(m0Var);
        }
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28396c) {
            z10 = this.f28395b.z(s10);
        }
        return z10;
    }

    public P0(ee.m0 m0Var, Object obj) {
        this.f28395b = m0Var;
        this.f28396c = obj;
    }
}
