package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class J0 implements ee.i0, Serializable {

    public static final long f28346f = 1978198479659022715L;

    public final ee.i0 f28347b;

    public final Object f28348c;

    public transient InterfaceC13973g f28349d = null;

    public transient Sd.f f28350e = null;

    public J0(ee.i0 i0Var) {
        i0Var.getClass();
        this.f28347b = i0Var;
        this.f28348c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28348c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public void A6(ee.i0 i0Var) {
        synchronized (this.f28348c) {
            this.f28347b.A6(i0Var);
        }
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28348c) {
            B10 = this.f28347b.B(i10);
        }
        return B10;
    }

    @Override
    public boolean B8(he.p0 p0Var) {
        boolean B82;
        synchronized (this.f28348c) {
            B82 = this.f28347b.B8(p0Var);
        }
        return B82;
    }

    @Override
    public boolean I0(short s10) {
        boolean I02;
        synchronized (this.f28348c) {
            I02 = this.f28347b.I0(s10);
        }
        return I02;
    }

    @Override
    public float J3(short s10, float f10) {
        float J32;
        synchronized (this.f28348c) {
            J32 = this.f28347b.J3(s10, f10);
        }
        return J32;
    }

    @Override
    public boolean Kd(he.p0 p0Var) {
        boolean Kd2;
        synchronized (this.f28348c) {
            Kd2 = this.f28347b.Kd(p0Var);
        }
        return Kd2;
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28348c) {
            U10 = this.f28347b.U(f10);
        }
        return U10;
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28348c) {
            Y10 = this.f28347b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28348c) {
            c02 = this.f28347b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void clear() {
        synchronized (this.f28348c) {
            this.f28347b.clear();
        }
    }

    @Override
    public float d(short s10) {
        float d10;
        synchronized (this.f28348c) {
            d10 = this.f28347b.d(s10);
        }
        return d10;
    }

    @Override
    public boolean e8(short s10, float f10) {
        boolean e82;
        synchronized (this.f28348c) {
            e82 = this.f28347b.e8(s10, f10);
        }
        return e82;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28348c) {
            equals = this.f28347b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28348c) {
            hashCode = this.f28347b.hashCode();
        }
        return hashCode;
    }

    @Override
    public float i() {
        return this.f28347b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28348c) {
            isEmpty = this.f28347b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.q0 iterator() {
        return this.f28347b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28348c) {
            j10 = this.f28347b.j();
        }
        return j10;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28348c) {
            try {
                if (this.f28350e == null) {
                    this.f28350e = new L(this.f28347b.k(), this.f28348c);
                }
                fVar = this.f28350e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28348c) {
            try {
                if (this.f28349d == null) {
                    this.f28349d = new O0(this.f28347b.keySet(), this.f28348c);
                }
                interfaceC13973g = this.f28349d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28347b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28348c) {
            this.f28347b.n(dVar);
        }
    }

    @Override
    public float n0(short s10) {
        float n02;
        synchronized (this.f28348c) {
            n02 = this.f28347b.n0(s10);
        }
        return n02;
    }

    @Override
    public float pa(short s10, float f10) {
        float pa2;
        synchronized (this.f28348c) {
            pa2 = this.f28347b.pa(s10, f10);
        }
        return pa2;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Float> map) {
        synchronized (this.f28348c) {
            this.f28347b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28348c) {
            size = this.f28347b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28348c) {
            obj = this.f28347b.toString();
        }
        return obj;
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28348c) {
            v10 = this.f28347b.v(t0Var);
        }
        return v10;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28348c) {
            values = this.f28347b.values();
        }
        return values;
    }

    @Override
    public float yb(short s10, float f10, float f11) {
        float yb2;
        synchronized (this.f28348c) {
            yb2 = this.f28347b.yb(s10, f10, f11);
        }
        return yb2;
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28348c) {
            z10 = this.f28347b.z(s10);
        }
        return z10;
    }

    public J0(ee.i0 i0Var, Object obj) {
        this.f28347b = i0Var;
        this.f28348c = obj;
    }
}
