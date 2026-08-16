package Xd;

import Zd.InterfaceC3464w;
import ee.InterfaceC13078t;
import he.InterfaceC13466v;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class C implements InterfaceC13078t, Serializable {

    public static final long f28292f = 1978198479659022715L;

    public final InterfaceC13078t f28293b;

    public final Object f28294c;

    public transient InterfaceC13969c f28295d = null;

    public transient Sd.f f28296e = null;

    public C(InterfaceC13078t interfaceC13078t) {
        interfaceC13078t.getClass();
        this.f28293b = interfaceC13078t;
        this.f28294c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28294c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28294c) {
            A10 = this.f28293b.A(d10);
        }
        return A10;
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28294c) {
            B10 = this.f28293b.B(i10);
        }
        return B10;
    }

    @Override
    public float Dc(double d10, float f10, float f11) {
        float Dc2;
        synchronized (this.f28294c) {
            Dc2 = this.f28293b.Dc(d10, f10, f11);
        }
        return Dc2;
    }

    @Override
    public float K2(double d10, float f10) {
        float K22;
        synchronized (this.f28294c) {
            K22 = this.f28293b.K2(d10, f10);
        }
        return K22;
    }

    @Override
    public boolean Ra(double d10, float f10) {
        boolean Ra2;
        synchronized (this.f28294c) {
            Ra2 = this.f28293b.Ra(d10, f10);
        }
        return Ra2;
    }

    @Override
    public void Sb(InterfaceC13078t interfaceC13078t) {
        synchronized (this.f28294c) {
            this.f28293b.Sb(interfaceC13078t);
        }
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28294c) {
            U10 = this.f28293b.U(f10);
        }
        return U10;
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28294c) {
            W10 = this.f28293b.W(dArr);
        }
        return W10;
    }

    @Override
    public boolean X6(InterfaceC13466v interfaceC13466v) {
        boolean X62;
        synchronized (this.f28294c) {
            X62 = this.f28293b.X6(interfaceC13466v);
        }
        return X62;
    }

    @Override
    public float a(double d10) {
        float a10;
        synchronized (this.f28294c) {
            a10 = this.f28293b.a(d10);
        }
        return a10;
    }

    @Override
    public float b9(double d10, float f10) {
        float b92;
        synchronized (this.f28294c) {
            b92 = this.f28293b.b9(d10, f10);
        }
        return b92;
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28294c) {
            c02 = this.f28293b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void clear() {
        synchronized (this.f28294c) {
            this.f28293b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28294c) {
            equals = this.f28293b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28294c) {
            hashCode = this.f28293b.hashCode();
        }
        return hashCode;
    }

    @Override
    public float i() {
        return this.f28293b.i();
    }

    @Override
    public boolean increment(double d10) {
        boolean increment;
        synchronized (this.f28294c) {
            increment = this.f28293b.increment(d10);
        }
        return increment;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28294c) {
            isEmpty = this.f28293b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3464w iterator() {
        return this.f28293b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28294c) {
            j10 = this.f28293b.j();
        }
        return j10;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28294c) {
            try {
                if (this.f28296e == null) {
                    this.f28296e = new L(this.f28293b.k(), this.f28294c);
                }
                fVar = this.f28296e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28294c) {
            k02 = this.f28293b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28294c) {
            try {
                if (this.f28295d == null) {
                    this.f28295d = new H(this.f28293b.keySet(), this.f28294c);
                }
                interfaceC13969c = this.f28295d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28293b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28294c) {
            this.f28293b.n(dVar);
        }
    }

    @Override
    public float p0(double d10) {
        float p02;
        synchronized (this.f28294c) {
            p02 = this.f28293b.p0(d10);
        }
        return p02;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Float> map) {
        synchronized (this.f28294c) {
            this.f28293b.putAll(map);
        }
    }

    @Override
    public boolean q9(InterfaceC13466v interfaceC13466v) {
        boolean q92;
        synchronized (this.f28294c) {
            q92 = this.f28293b.q9(interfaceC13466v);
        }
        return q92;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28294c) {
            size = this.f28293b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28294c) {
            obj = this.f28293b.toString();
        }
        return obj;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28294c) {
            values = this.f28293b.values();
        }
        return values;
    }

    public C(InterfaceC13078t interfaceC13078t, Object obj) {
        this.f28293b = interfaceC13078t;
        this.f28294c = obj;
    }
}
