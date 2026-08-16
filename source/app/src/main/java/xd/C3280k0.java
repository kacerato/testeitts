package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3280k0 implements ee.S, Serializable {

    public static final long f28523f = 1978198479659022715L;

    public final ee.S f28524b;

    public final Object f28525c;

    public transient InterfaceC13972f f28526d = null;

    public transient Sd.f f28527e = null;

    public C3280k0(ee.S s10) {
        s10.getClass();
        this.f28524b = s10;
        this.f28525c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28525c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28525c) {
            B10 = this.f28524b.B(i10);
        }
        return B10;
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28525c) {
            E10 = this.f28524b.E(j10);
        }
        return E10;
    }

    @Override
    public boolean H0(long j10) {
        boolean H02;
        synchronized (this.f28525c) {
            H02 = this.f28524b.H0(j10);
        }
        return H02;
    }

    @Override
    public float I7(long j10, float f10, float f11) {
        float I72;
        synchronized (this.f28525c) {
            I72 = this.f28524b.I7(j10, f10, f11);
        }
        return I72;
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28525c) {
            U10 = this.f28524b.U(f10);
        }
        return U10;
    }

    @Override
    public boolean Y5(he.X x10) {
        boolean Y52;
        synchronized (this.f28525c) {
            Y52 = this.f28524b.Y5(x10);
        }
        return Y52;
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28525c) {
            c02 = this.f28524b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void clear() {
        synchronized (this.f28525c) {
            this.f28524b.clear();
        }
    }

    @Override
    public void d7(ee.S s10) {
        synchronized (this.f28525c) {
            this.f28524b.d7(s10);
        }
    }

    @Override
    public float e(long j10) {
        float e10;
        synchronized (this.f28525c) {
            e10 = this.f28524b.e(j10);
        }
        return e10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28525c) {
            equals = this.f28524b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28525c) {
            h02 = this.f28524b.h0(jArr);
        }
        return h02;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28525c) {
            hashCode = this.f28524b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean hb(long j10, float f10) {
        boolean hb2;
        synchronized (this.f28525c) {
            hb2 = this.f28524b.hb(j10, f10);
        }
        return hb2;
    }

    @Override
    public float i() {
        return this.f28524b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28525c) {
            isEmpty = this.f28524b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.Z iterator() {
        return this.f28524b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28525c) {
            j10 = this.f28524b.j();
        }
        return j10;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28525c) {
            try {
                if (this.f28527e == null) {
                    this.f28527e = new L(this.f28524b.k(), this.f28525c);
                }
                fVar = this.f28527e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public float k7(long j10, float f10) {
        float k72;
        synchronized (this.f28525c) {
            k72 = this.f28524b.k7(j10, f10);
        }
        return k72;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28525c) {
            try {
                if (this.f28526d == null) {
                    this.f28526d = new C3290p0(this.f28524b.keySet(), this.f28525c);
                }
                interfaceC13972f = this.f28526d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28524b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28525c) {
            l02 = this.f28524b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28525c) {
            this.f28524b.n(dVar);
        }
    }

    @Override
    public float od(long j10, float f10) {
        float od2;
        synchronized (this.f28525c) {
            od2 = this.f28524b.od(j10, f10);
        }
        return od2;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Float> map) {
        synchronized (this.f28525c) {
            this.f28524b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28525c) {
            size = this.f28524b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28525c) {
            obj = this.f28524b.toString();
        }
        return obj;
    }

    @Override
    public float u(long j10) {
        float u10;
        synchronized (this.f28525c) {
            u10 = this.f28524b.u(j10);
        }
        return u10;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28525c) {
            values = this.f28524b.values();
        }
        return values;
    }

    @Override
    public boolean wc(he.X x10) {
        boolean wc2;
        synchronized (this.f28525c) {
            wc2 = this.f28524b.wc(x10);
        }
        return wc2;
    }

    public C3280k0(ee.S s10, Object obj) {
        this.f28524b = s10;
        this.f28525c = obj;
    }
}
