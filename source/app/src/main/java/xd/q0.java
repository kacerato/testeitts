package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class q0 implements ee.W, Serializable {

    public static final long f28570f = 1978198479659022715L;

    public final ee.W f28571b;

    public final Object f28572c;

    public transient InterfaceC13972f f28573d = null;

    public transient Sd.i f28574e = null;

    public q0(ee.W w10) {
        w10.getClass();
        this.f28571b = w10;
        this.f28572c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28572c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28572c) {
            E10 = this.f28571b.E(j10);
        }
        return E10;
    }

    @Override
    public boolean E9(he.c0 c0Var) {
        boolean E92;
        synchronized (this.f28572c) {
            E92 = this.f28571b.E9(c0Var);
        }
        return E92;
    }

    @Override
    public boolean H0(long j10) {
        boolean H02;
        synchronized (this.f28572c) {
            H02 = this.f28571b.H0(j10);
        }
        return H02;
    }

    @Override
    public boolean I6(he.c0 c0Var) {
        boolean I62;
        synchronized (this.f28572c) {
            I62 = this.f28571b.I6(c0Var);
        }
        return I62;
    }

    @Override
    public short Kc(long j10, short s10) {
        short Kc2;
        synchronized (this.f28572c) {
            Kc2 = this.f28571b.Kc(j10, s10);
        }
        return Kc2;
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28572c) {
            L10 = this.f28571b.L(s10);
        }
        return L10;
    }

    @Override
    public short Md(long j10, short s10, short s11) {
        short Md2;
        synchronized (this.f28572c) {
            Md2 = this.f28571b.Md(j10, s10, s11);
        }
        return Md2;
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28572c) {
            N10 = this.f28571b.N(t0Var);
        }
        return N10;
    }

    @Override
    public void S9(ee.W w10) {
        synchronized (this.f28572c) {
            this.f28571b.S9(w10);
        }
    }

    @Override
    public void clear() {
        synchronized (this.f28572c) {
            this.f28571b.clear();
        }
    }

    @Override
    public short e(long j10) {
        short e10;
        synchronized (this.f28572c) {
            e10 = this.f28571b.e(j10);
        }
        return e10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28572c) {
            equals = this.f28571b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28572c) {
            h02 = this.f28571b.h0(jArr);
        }
        return h02;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28572c) {
            hashCode = this.f28571b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28571b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28572c) {
            i02 = this.f28571b.i0(sArr);
        }
        return i02;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28572c) {
            isEmpty = this.f28571b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.e0 iterator() {
        return this.f28571b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28572c) {
            j10 = this.f28571b.j();
        }
        return j10;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28572c) {
            try {
                if (this.f28574e == null) {
                    this.f28574e = new H0(this.f28571b.k(), this.f28572c);
                }
                iVar = this.f28574e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28572c) {
            try {
                if (this.f28573d == null) {
                    this.f28573d = new C3290p0(this.f28571b.keySet(), this.f28572c);
                }
                interfaceC13972f = this.f28573d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28571b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28572c) {
            l02 = this.f28571b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Short> map) {
        synchronized (this.f28572c) {
            this.f28571b.putAll(map);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28572c) {
            this.f28571b.r(hVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28572c) {
            size = this.f28571b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28572c) {
            obj = this.f28571b.toString();
        }
        return obj;
    }

    @Override
    public short u(long j10) {
        short u10;
        synchronized (this.f28572c) {
            u10 = this.f28571b.u(j10);
        }
        return u10;
    }

    @Override
    public short u7(long j10, short s10) {
        short u72;
        synchronized (this.f28572c) {
            u72 = this.f28571b.u7(j10, s10);
        }
        return u72;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28572c) {
            values = this.f28571b.values();
        }
        return values;
    }

    @Override
    public boolean vb(long j10, short s10) {
        boolean vb2;
        synchronized (this.f28572c) {
            vb2 = this.f28571b.vb(j10, s10);
        }
        return vb2;
    }

    public q0(ee.W w10, Object obj) {
        this.f28571b = w10;
        this.f28572c = obj;
    }
}
