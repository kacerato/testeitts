package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class Z implements ee.J, Serializable {

    public static final long f28433f = 1978198479659022715L;

    public final ee.J f28434b;

    public final Object f28435c;

    public transient InterfaceC13971e f28436d = null;

    public transient Sd.f f28437e = null;

    public Z(ee.J j10) {
        j10.getClass();
        this.f28434b = j10;
        this.f28435c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28435c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28435c) {
            B10 = this.f28434b.B(i10);
        }
        return B10;
    }

    @Override
    public boolean Db(int i10, float f10) {
        boolean Db2;
        synchronized (this.f28435c) {
            Db2 = this.f28434b.Db(i10, f10);
        }
        return Db2;
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28435c) {
            F10 = this.f28434b.F(i10);
        }
        return F10;
    }

    @Override
    public boolean F0(int i10) {
        boolean F02;
        synchronized (this.f28435c) {
            F02 = this.f28434b.F0(i10);
        }
        return F02;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28435c) {
            J10 = this.f28434b.J(s10);
        }
        return J10;
    }

    @Override
    public float Nd(int i10, float f10) {
        float Nd2;
        synchronized (this.f28435c) {
            Nd2 = this.f28434b.Nd(i10, f10);
        }
        return Nd2;
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28435c) {
            U10 = this.f28434b.U(f10);
        }
        return U10;
    }

    @Override
    public float Yb(int i10, float f10, float f11) {
        float Yb2;
        synchronized (this.f28435c) {
            Yb2 = this.f28434b.Yb(i10, f10, f11);
        }
        return Yb2;
    }

    @Override
    public float Z4(int i10, float f10) {
        float Z42;
        synchronized (this.f28435c) {
            Z42 = this.f28434b.Z4(i10, f10);
        }
        return Z42;
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28435c) {
            c02 = this.f28434b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void c9(ee.J j10) {
        synchronized (this.f28435c) {
            this.f28434b.c9(j10);
        }
    }

    @Override
    public void clear() {
        synchronized (this.f28435c) {
            this.f28434b.clear();
        }
    }

    @Override
    public boolean db(he.N n10) {
        boolean db2;
        synchronized (this.f28435c) {
            db2 = this.f28434b.db(n10);
        }
        return db2;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28435c) {
            equals = this.f28434b.equals(obj);
        }
        return equals;
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28435c) {
            f02 = this.f28434b.f0(iArr);
        }
        return f02;
    }

    @Override
    public float get(int i10) {
        float f10;
        synchronized (this.f28435c) {
            f10 = this.f28434b.get(i10);
        }
        return f10;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28435c) {
            hashCode = this.f28434b.hashCode();
        }
        return hashCode;
    }

    @Override
    public float i() {
        return this.f28434b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28435c) {
            isEmpty = this.f28434b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.O iterator() {
        return this.f28434b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28435c) {
            j10 = this.f28434b.j();
        }
        return j10;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28435c) {
            try {
                if (this.f28437e == null) {
                    this.f28437e = new L(this.f28434b.k(), this.f28435c);
                }
                fVar = this.f28437e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28435c) {
            try {
                if (this.f28436d == null) {
                    this.f28436d = new C3268e0(this.f28434b.keySet(), this.f28435c);
                }
                interfaceC13971e = this.f28436d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28434b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28435c) {
            this.f28434b.n(dVar);
        }
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Float> map) {
        synchronized (this.f28435c) {
            this.f28434b.putAll(map);
        }
    }

    @Override
    public float remove(int i10) {
        float remove;
        synchronized (this.f28435c) {
            remove = this.f28434b.remove(i10);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28435c) {
            size = this.f28434b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28435c) {
            obj = this.f28434b.toString();
        }
        return obj;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28435c) {
            values = this.f28434b.values();
        }
        return values;
    }

    @Override
    public boolean vd(he.N n10) {
        boolean vd2;
        synchronized (this.f28435c) {
            vd2 = this.f28434b.vd(n10);
        }
        return vd2;
    }

    public Z(ee.J j10, Object obj) {
        this.f28434b = j10;
        this.f28435c = obj;
    }
}
