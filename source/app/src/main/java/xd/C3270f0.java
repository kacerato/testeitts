package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class C3270f0 implements ee.N, Serializable {

    public static final long f28478f = 1978198479659022715L;

    public final ee.N f28479b;

    public final Object f28480c;

    public transient InterfaceC13971e f28481d = null;

    public transient Sd.i f28482e = null;

    public C3270f0(ee.N n10) {
        n10.getClass();
        this.f28479b = n10;
        this.f28480c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28480c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean E5(he.T t10) {
        boolean E52;
        synchronized (this.f28480c) {
            E52 = this.f28479b.E5(t10);
        }
        return E52;
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28480c) {
            F10 = this.f28479b.F(i10);
        }
        return F10;
    }

    @Override
    public boolean F0(int i10) {
        boolean F02;
        synchronized (this.f28480c) {
            F02 = this.f28479b.F0(i10);
        }
        return F02;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28480c) {
            J10 = this.f28479b.J(s10);
        }
        return J10;
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28480c) {
            L10 = this.f28479b.L(s10);
        }
        return L10;
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28480c) {
            N10 = this.f28479b.N(t0Var);
        }
        return N10;
    }

    @Override
    public boolean Ub(int i10, short s10) {
        boolean Ub2;
        synchronized (this.f28480c) {
            Ub2 = this.f28479b.Ub(i10, s10);
        }
        return Ub2;
    }

    @Override
    public void clear() {
        synchronized (this.f28480c) {
            this.f28479b.clear();
        }
    }

    @Override
    public boolean eb(he.T t10) {
        boolean eb2;
        synchronized (this.f28480c) {
            eb2 = this.f28479b.eb(t10);
        }
        return eb2;
    }

    @Override
    public short ed(int i10, short s10) {
        short ed2;
        synchronized (this.f28480c) {
            ed2 = this.f28479b.ed(i10, s10);
        }
        return ed2;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28480c) {
            equals = this.f28479b.equals(obj);
        }
        return equals;
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28480c) {
            f02 = this.f28479b.f0(iArr);
        }
        return f02;
    }

    @Override
    public short get(int i10) {
        short s10;
        synchronized (this.f28480c) {
            s10 = this.f28479b.get(i10);
        }
        return s10;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28480c) {
            hashCode = this.f28479b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28479b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28480c) {
            i02 = this.f28479b.i0(sArr);
        }
        return i02;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28480c) {
            isEmpty = this.f28479b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.U iterator() {
        return this.f28479b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28480c) {
            j10 = this.f28479b.j();
        }
        return j10;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28480c) {
            try {
                if (this.f28482e == null) {
                    this.f28482e = new H0(this.f28479b.k(), this.f28480c);
                }
                iVar = this.f28482e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28480c) {
            try {
                if (this.f28481d == null) {
                    this.f28481d = new C3268e0(this.f28479b.keySet(), this.f28480c);
                }
                interfaceC13971e = this.f28481d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28479b.l();
    }

    @Override
    public short md(int i10, short s10, short s11) {
        short md2;
        synchronized (this.f28480c) {
            md2 = this.f28479b.md(i10, s10, s11);
        }
        return md2;
    }

    @Override
    public short p5(int i10, short s10) {
        short p52;
        synchronized (this.f28480c) {
            p52 = this.f28479b.p5(i10, s10);
        }
        return p52;
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Short> map) {
        synchronized (this.f28480c) {
            this.f28479b.putAll(map);
        }
    }

    @Override
    public void qe(ee.N n10) {
        synchronized (this.f28480c) {
            this.f28479b.qe(n10);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28480c) {
            this.f28479b.r(hVar);
        }
    }

    @Override
    public short remove(int i10) {
        short remove;
        synchronized (this.f28480c) {
            remove = this.f28479b.remove(i10);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28480c) {
            size = this.f28479b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28480c) {
            obj = this.f28479b.toString();
        }
        return obj;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28480c) {
            values = this.f28479b.values();
        }
        return values;
    }

    public C3270f0(ee.N n10, Object obj) {
        this.f28479b = n10;
        this.f28480c = obj;
    }
}
