package Xd;

import ee.InterfaceC13058A;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class M implements InterfaceC13058A, Serializable {

    public static final long f28366f = 1978198479659022715L;

    public final InterfaceC13058A f28367b;

    public final Object f28368c;

    public transient InterfaceC13970d f28369d = null;

    public transient Sd.e f28370e = null;

    public M(InterfaceC13058A interfaceC13058A) {
        interfaceC13058A.getClass();
        this.f28367b = interfaceC13058A;
        this.f28368c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28368c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean G0(float f10) {
        boolean G02;
        synchronized (this.f28368c) {
            G02 = this.f28367b.G0(f10);
        }
        return G02;
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28368c) {
            H10 = this.f28367b.H(f10);
        }
        return H10;
    }

    @Override
    public double H5(float f10, double d10) {
        double H52;
        synchronized (this.f28368c) {
            H52 = this.f28367b.H5(f10, d10);
        }
        return H52;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28368c) {
            I10 = this.f28367b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public boolean I9(float f10, double d10) {
        boolean I92;
        synchronized (this.f28368c) {
            I92 = this.f28367b.I9(f10, d10);
        }
        return I92;
    }

    @Override
    public boolean K5(he.D d10) {
        boolean K52;
        synchronized (this.f28368c) {
            K52 = this.f28367b.K5(d10);
        }
        return K52;
    }

    @Override
    public double M9(float f10, double d10, double d11) {
        double M92;
        synchronized (this.f28368c) {
            M92 = this.f28367b.M9(f10, d10, d11);
        }
        return M92;
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28368c) {
            T10 = this.f28367b.T(d10);
        }
        return T10;
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28368c) {
            b02 = this.f28367b.b0(dArr);
        }
        return b02;
    }

    @Override
    public double c(float f10) {
        double c10;
        synchronized (this.f28368c) {
            c10 = this.f28367b.c(f10);
        }
        return c10;
    }

    @Override
    public boolean cb(he.D d10) {
        boolean cb2;
        synchronized (this.f28368c) {
            cb2 = this.f28367b.cb(d10);
        }
        return cb2;
    }

    @Override
    public void clear() {
        synchronized (this.f28368c) {
            this.f28367b.clear();
        }
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28368c) {
            d02 = this.f28367b.d0(fArr);
        }
        return d02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28368c) {
            equals = this.f28367b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28368c) {
            hashCode = this.f28367b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28367b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28368c) {
            isEmpty = this.f28367b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.E iterator() {
        return this.f28367b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28368c) {
            j10 = this.f28367b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28368c) {
            j02 = this.f28367b.j0(i10);
        }
        return j02;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28368c) {
            try {
                if (this.f28370e == null) {
                    this.f28370e = new A(this.f28367b.k(), this.f28368c);
                }
                eVar = this.f28370e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28368c) {
            try {
                if (this.f28369d == null) {
                    this.f28369d = new T(this.f28367b.keySet(), this.f28368c);
                }
                interfaceC13970d = this.f28369d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28367b.l();
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28368c) {
            this.f28367b.p(cVar);
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Double> map) {
        synchronized (this.f28368c) {
            this.f28367b.putAll(map);
        }
    }

    @Override
    public double q0(float f10) {
        double q02;
        synchronized (this.f28368c) {
            q02 = this.f28367b.q0(f10);
        }
        return q02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28368c) {
            size = this.f28367b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28368c) {
            obj = this.f28367b.toString();
        }
        return obj;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28368c) {
            values = this.f28367b.values();
        }
        return values;
    }

    @Override
    public void w5(InterfaceC13058A interfaceC13058A) {
        synchronized (this.f28368c) {
            this.f28367b.w5(interfaceC13058A);
        }
    }

    @Override
    public double ye(float f10, double d10) {
        double ye2;
        synchronized (this.f28368c) {
            ye2 = this.f28367b.ye(f10, d10);
        }
        return ye2;
    }

    public M(InterfaceC13058A interfaceC13058A, Object obj) {
        this.f28367b = interfaceC13058A;
        this.f28368c = obj;
    }
}
