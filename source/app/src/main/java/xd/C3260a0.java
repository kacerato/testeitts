package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class C3260a0 implements ee.K, Serializable {

    public static final long f28441f = 1978198479659022715L;

    public final ee.K f28442b;

    public final Object f28443c;

    public transient InterfaceC13971e f28444d = null;

    public transient Sd.g f28445e = null;

    public C3260a0(ee.K k10) {
        k10.getClass();
        this.f28442b = k10;
        this.f28443c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28443c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28443c) {
            F10 = this.f28442b.F(i10);
        }
        return F10;
    }

    @Override
    public boolean F0(int i10) {
        boolean F02;
        synchronized (this.f28443c) {
            F02 = this.f28442b.F0(i10);
        }
        return F02;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28443c) {
            J10 = this.f28442b.J(s10);
        }
        return J10;
    }

    @Override
    public boolean Ob(int i10, int i11) {
        boolean Ob2;
        synchronized (this.f28443c) {
            Ob2 = this.f28442b.Ob(i10, i11);
        }
        return Ob2;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28443c) {
            Q10 = this.f28442b.Q(i10);
        }
        return Q10;
    }

    @Override
    public void V6(ee.K k10) {
        synchronized (this.f28443c) {
            this.f28442b.V6(k10);
        }
    }

    @Override
    public boolean be(he.O o10) {
        boolean be2;
        synchronized (this.f28443c) {
            be2 = this.f28442b.be(o10);
        }
        return be2;
    }

    @Override
    public void clear() {
        synchronized (this.f28443c) {
            this.f28442b.clear();
        }
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28443c) {
            e02 = this.f28442b.e0(iArr);
        }
        return e02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28443c) {
            equals = this.f28442b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28443c) {
            this.f28442b.f(eVar);
        }
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28443c) {
            f02 = this.f28442b.f0(iArr);
        }
        return f02;
    }

    @Override
    public int f5(int i10, int i11) {
        int f52;
        synchronized (this.f28443c) {
            f52 = this.f28442b.f5(i10, i11);
        }
        return f52;
    }

    @Override
    public int get(int i10) {
        int i11;
        synchronized (this.f28443c) {
            i11 = this.f28442b.get(i10);
        }
        return i11;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28443c) {
            hashCode = this.f28442b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28442b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28443c) {
            isEmpty = this.f28442b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.P iterator() {
        return this.f28442b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28443c) {
            j10 = this.f28442b.j();
        }
        return j10;
    }

    @Override
    public int jd(int i10, int i11) {
        int jd2;
        synchronized (this.f28443c) {
            jd2 = this.f28442b.jd(i10, i11);
        }
        return jd2;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28443c) {
            try {
                if (this.f28445e == null) {
                    this.f28445e = new X(this.f28442b.k(), this.f28443c);
                }
                gVar = this.f28445e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public boolean k8(he.O o10) {
        boolean k82;
        synchronized (this.f28443c) {
            k82 = this.f28442b.k8(o10);
        }
        return k82;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28443c) {
            try {
                if (this.f28444d == null) {
                    this.f28444d = new C3268e0(this.f28442b.keySet(), this.f28443c);
                }
                interfaceC13971e = this.f28444d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28442b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28443c) {
            m02 = this.f28442b.m0(s10);
        }
        return m02;
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Integer> map) {
        synchronized (this.f28443c) {
            this.f28442b.putAll(map);
        }
    }

    @Override
    public int remove(int i10) {
        int remove;
        synchronized (this.f28443c) {
            remove = this.f28442b.remove(i10);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28443c) {
            size = this.f28442b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28443c) {
            obj = this.f28442b.toString();
        }
        return obj;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28443c) {
            values = this.f28442b.values();
        }
        return values;
    }

    @Override
    public int xb(int i10, int i11, int i12) {
        int xb2;
        synchronized (this.f28443c) {
            xb2 = this.f28442b.xb(i10, i11, i12);
        }
        return xb2;
    }

    public C3260a0(ee.K k10, Object obj) {
        this.f28442b = k10;
        this.f28443c = obj;
    }
}
