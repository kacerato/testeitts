package Xd;

import ee.InterfaceC13059B;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class N implements InterfaceC13059B, Serializable {

    public static final long f28376f = 1978198479659022715L;

    public final InterfaceC13059B f28377b;

    public final Object f28378c;

    public transient InterfaceC13970d f28379d = null;

    public transient Sd.f f28380e = null;

    public N(InterfaceC13059B interfaceC13059B) {
        interfaceC13059B.getClass();
        this.f28377b = interfaceC13059B;
        this.f28378c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28378c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28378c) {
            B10 = this.f28377b.B(i10);
        }
        return B10;
    }

    @Override
    public boolean G0(float f10) {
        boolean G02;
        synchronized (this.f28378c) {
            G02 = this.f28377b.G0(f10);
        }
        return G02;
    }

    @Override
    public boolean G9(float f10, float f11) {
        boolean G92;
        synchronized (this.f28378c) {
            G92 = this.f28377b.G9(f10, f11);
        }
        return G92;
    }

    @Override
    public boolean Gc(he.E e10) {
        boolean Gc2;
        synchronized (this.f28378c) {
            Gc2 = this.f28377b.Gc(e10);
        }
        return Gc2;
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28378c) {
            H10 = this.f28377b.H(f10);
        }
        return H10;
    }

    @Override
    public float J5(float f10, float f11) {
        float J52;
        synchronized (this.f28378c) {
            J52 = this.f28377b.J5(f10, f11);
        }
        return J52;
    }

    @Override
    public float Se(float f10, float f11, float f12) {
        float Se2;
        synchronized (this.f28378c) {
            Se2 = this.f28377b.Se(f10, f11, f12);
        }
        return Se2;
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28378c) {
            U10 = this.f28377b.U(f10);
        }
        return U10;
    }

    @Override
    public void U5(InterfaceC13059B interfaceC13059B) {
        synchronized (this.f28378c) {
            this.f28377b.U5(interfaceC13059B);
        }
    }

    @Override
    public float c(float f10) {
        float c10;
        synchronized (this.f28378c) {
            c10 = this.f28377b.c(f10);
        }
        return c10;
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28378c) {
            c02 = this.f28377b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void clear() {
        synchronized (this.f28378c) {
            this.f28377b.clear();
        }
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28378c) {
            d02 = this.f28377b.d0(fArr);
        }
        return d02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28378c) {
            equals = this.f28377b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28378c) {
            hashCode = this.f28377b.hashCode();
        }
        return hashCode;
    }

    @Override
    public float i() {
        return this.f28377b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28378c) {
            isEmpty = this.f28377b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.F iterator() {
        return this.f28377b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28378c) {
            j10 = this.f28377b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28378c) {
            j02 = this.f28377b.j0(i10);
        }
        return j02;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28378c) {
            try {
                if (this.f28380e == null) {
                    this.f28380e = new L(this.f28377b.k(), this.f28378c);
                }
                fVar = this.f28380e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28378c) {
            try {
                if (this.f28379d == null) {
                    this.f28379d = new T(this.f28377b.keySet(), this.f28378c);
                }
                interfaceC13970d = this.f28379d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28377b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28378c) {
            this.f28377b.n(dVar);
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Float> map) {
        synchronized (this.f28378c) {
            this.f28377b.putAll(map);
        }
    }

    @Override
    public float q0(float f10) {
        float q02;
        synchronized (this.f28378c) {
            q02 = this.f28377b.q0(f10);
        }
        return q02;
    }

    @Override
    public boolean r3(he.E e10) {
        boolean r32;
        synchronized (this.f28378c) {
            r32 = this.f28377b.r3(e10);
        }
        return r32;
    }

    @Override
    public float se(float f10, float f11) {
        float se2;
        synchronized (this.f28378c) {
            se2 = this.f28377b.se(f10, f11);
        }
        return se2;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28378c) {
            size = this.f28377b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28378c) {
            obj = this.f28377b.toString();
        }
        return obj;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28378c) {
            values = this.f28377b.values();
        }
        return values;
    }

    public N(InterfaceC13059B interfaceC13059B, Object obj) {
        this.f28377b = interfaceC13059B;
        this.f28378c = obj;
    }
}
