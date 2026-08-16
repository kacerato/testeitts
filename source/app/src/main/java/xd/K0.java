package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class K0 implements ee.j0, Serializable {

    public static final long f28356f = 1978198479659022715L;

    public final ee.j0 f28357b;

    public final Object f28358c;

    public transient InterfaceC13973g f28359d = null;

    public transient Sd.g f28360e = null;

    public K0(ee.j0 j0Var) {
        j0Var.getClass();
        this.f28357b = j0Var;
        this.f28358c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28358c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public int A3(short s10, int i10) {
        int A32;
        synchronized (this.f28358c) {
            A32 = this.f28357b.A3(s10, i10);
        }
        return A32;
    }

    @Override
    public boolean De(he.q0 q0Var) {
        boolean De2;
        synchronized (this.f28358c) {
            De2 = this.f28357b.De(q0Var);
        }
        return De2;
    }

    @Override
    public boolean I0(short s10) {
        boolean I02;
        synchronized (this.f28358c) {
            I02 = this.f28357b.I0(s10);
        }
        return I02;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28358c) {
            Q10 = this.f28357b.Q(i10);
        }
        return Q10;
    }

    @Override
    public void Ta(ee.j0 j0Var) {
        synchronized (this.f28358c) {
            this.f28357b.Ta(j0Var);
        }
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28358c) {
            Y10 = this.f28357b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public void clear() {
        synchronized (this.f28358c) {
            this.f28357b.clear();
        }
    }

    @Override
    public int d(short s10) {
        int d10;
        synchronized (this.f28358c) {
            d10 = this.f28357b.d(s10);
        }
        return d10;
    }

    @Override
    public boolean d8(short s10, int i10) {
        boolean d82;
        synchronized (this.f28358c) {
            d82 = this.f28357b.d8(s10, i10);
        }
        return d82;
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28358c) {
            e02 = this.f28357b.e0(iArr);
        }
        return e02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28358c) {
            equals = this.f28357b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28358c) {
            this.f28357b.f(eVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28358c) {
            hashCode = this.f28357b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28357b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28358c) {
            isEmpty = this.f28357b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.r0 iterator() {
        return this.f28357b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28358c) {
            j10 = this.f28357b.j();
        }
        return j10;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28358c) {
            try {
                if (this.f28360e == null) {
                    this.f28360e = new X(this.f28357b.k(), this.f28358c);
                }
                gVar = this.f28360e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28358c) {
            try {
                if (this.f28359d == null) {
                    this.f28359d = new O0(this.f28357b.keySet(), this.f28358c);
                }
                interfaceC13973g = this.f28359d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28357b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28358c) {
            m02 = this.f28357b.m0(s10);
        }
        return m02;
    }

    @Override
    public int n0(short s10) {
        int n02;
        synchronized (this.f28358c) {
            n02 = this.f28357b.n0(s10);
        }
        return n02;
    }

    @Override
    public int o9(short s10, int i10, int i11) {
        int o92;
        synchronized (this.f28358c) {
            o92 = this.f28357b.o9(s10, i10, i11);
        }
        return o92;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Integer> map) {
        synchronized (this.f28358c) {
            this.f28357b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28358c) {
            size = this.f28357b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28358c) {
            obj = this.f28357b.toString();
        }
        return obj;
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28358c) {
            v10 = this.f28357b.v(t0Var);
        }
        return v10;
    }

    @Override
    public int va(short s10, int i10) {
        int va2;
        synchronized (this.f28358c) {
            va2 = this.f28357b.va(s10, i10);
        }
        return va2;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28358c) {
            values = this.f28357b.values();
        }
        return values;
    }

    @Override
    public boolean w8(he.q0 q0Var) {
        boolean w82;
        synchronized (this.f28358c) {
            w82 = this.f28357b.w8(q0Var);
        }
        return w82;
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28358c) {
            z10 = this.f28357b.z(s10);
        }
        return z10;
    }

    public K0(ee.j0 j0Var, Object obj) {
        this.f28357b = j0Var;
        this.f28358c = obj;
    }
}
