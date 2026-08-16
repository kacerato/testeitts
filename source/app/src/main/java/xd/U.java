package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class U implements ee.F, Serializable {

    public static final long f28410f = 1978198479659022715L;

    public final ee.F f28411b;

    public final Object f28412c;

    public transient InterfaceC13970d f28413d = null;

    public transient Sd.i f28414e = null;

    public U(ee.F f10) {
        f10.getClass();
        this.f28411b = f10;
        this.f28412c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28412c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public short Ce(float f10, short s10) {
        short Ce2;
        synchronized (this.f28412c) {
            Ce2 = this.f28411b.Ce(f10, s10);
        }
        return Ce2;
    }

    @Override
    public short E2(float f10, short s10, short s11) {
        short E22;
        synchronized (this.f28412c) {
            E22 = this.f28411b.E2(f10, s10, s11);
        }
        return E22;
    }

    @Override
    public boolean G0(float f10) {
        boolean G02;
        synchronized (this.f28412c) {
            G02 = this.f28411b.G0(f10);
        }
        return G02;
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28412c) {
            H10 = this.f28411b.H(f10);
        }
        return H10;
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28412c) {
            L10 = this.f28411b.L(s10);
        }
        return L10;
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28412c) {
            N10 = this.f28411b.N(t0Var);
        }
        return N10;
    }

    @Override
    public short T5(float f10, short s10) {
        short T52;
        synchronized (this.f28412c) {
            T52 = this.f28411b.T5(f10, s10);
        }
        return T52;
    }

    @Override
    public boolean V9(float f10, short s10) {
        boolean V92;
        synchronized (this.f28412c) {
            V92 = this.f28411b.V9(f10, s10);
        }
        return V92;
    }

    @Override
    public boolean Yd(he.J j10) {
        boolean Yd2;
        synchronized (this.f28412c) {
            Yd2 = this.f28411b.Yd(j10);
        }
        return Yd2;
    }

    @Override
    public short c(float f10) {
        short c10;
        synchronized (this.f28412c) {
            c10 = this.f28411b.c(f10);
        }
        return c10;
    }

    @Override
    public void clear() {
        synchronized (this.f28412c) {
            this.f28411b.clear();
        }
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28412c) {
            d02 = this.f28411b.d0(fArr);
        }
        return d02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28412c) {
            equals = this.f28411b.equals(obj);
        }
        return equals;
    }

    @Override
    public boolean g7(he.J j10) {
        boolean g72;
        synchronized (this.f28412c) {
            g72 = this.f28411b.g7(j10);
        }
        return g72;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28412c) {
            hashCode = this.f28411b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28411b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28412c) {
            i02 = this.f28411b.i0(sArr);
        }
        return i02;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28412c) {
            isEmpty = this.f28411b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.K iterator() {
        return this.f28411b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28412c) {
            j10 = this.f28411b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28412c) {
            j02 = this.f28411b.j0(i10);
        }
        return j02;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28412c) {
            try {
                if (this.f28414e == null) {
                    this.f28414e = new H0(this.f28411b.k(), this.f28412c);
                }
                iVar = this.f28414e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28412c) {
            try {
                if (this.f28413d == null) {
                    this.f28413d = new T(this.f28411b.keySet(), this.f28412c);
                }
                interfaceC13970d = this.f28413d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28411b.l();
    }

    @Override
    public void lb(ee.F f10) {
        synchronized (this.f28412c) {
            this.f28411b.lb(f10);
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Short> map) {
        synchronized (this.f28412c) {
            this.f28411b.putAll(map);
        }
    }

    @Override
    public short q0(float f10) {
        short q02;
        synchronized (this.f28412c) {
            q02 = this.f28411b.q0(f10);
        }
        return q02;
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28412c) {
            this.f28411b.r(hVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28412c) {
            size = this.f28411b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28412c) {
            obj = this.f28411b.toString();
        }
        return obj;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28412c) {
            values = this.f28411b.values();
        }
        return values;
    }

    public U(ee.F f10, Object obj) {
        this.f28411b = f10;
        this.f28412c = obj;
    }
}
