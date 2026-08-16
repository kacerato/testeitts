package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class C3264c0 implements ee.L, Serializable {

    public static final long f28454f = 1978198479659022715L;

    public final ee.L f28455b;

    public final Object f28456c;

    public transient InterfaceC13971e f28457d = null;

    public transient Sd.h f28458e = null;

    public C3264c0(ee.L l10) {
        l10.getClass();
        this.f28455b = l10;
        this.f28456c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28456c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28456c) {
            F10 = this.f28455b.F(i10);
        }
        return F10;
    }

    @Override
    public boolean F0(int i10) {
        boolean F02;
        synchronized (this.f28456c) {
            F02 = this.f28455b.F0(i10);
        }
        return F02;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28456c) {
            J10 = this.f28455b.J(s10);
        }
        return J10;
    }

    @Override
    public boolean Nb(int i10, long j10) {
        boolean Nb2;
        synchronized (this.f28456c) {
            Nb2 = this.f28455b.Nb(i10, j10);
        }
        return Nb2;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28456c) {
            R10 = this.f28455b.R(j10);
        }
        return R10;
    }

    @Override
    public boolean Ua(he.P p10) {
        boolean Ua2;
        synchronized (this.f28456c) {
            Ua2 = this.f28455b.Ua(p10);
        }
        return Ua2;
    }

    @Override
    public void Va(ee.L l10) {
        synchronized (this.f28456c) {
            this.f28455b.Va(l10);
        }
    }

    @Override
    public void clear() {
        synchronized (this.f28456c) {
            this.f28455b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28456c) {
            equals = this.f28455b.equals(obj);
        }
        return equals;
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28456c) {
            f02 = this.f28455b.f0(iArr);
        }
        return f02;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28456c) {
            g02 = this.f28455b.g0(jArr);
        }
        return g02;
    }

    @Override
    public long get(int i10) {
        long j10;
        synchronized (this.f28456c) {
            j10 = this.f28455b.get(i10);
        }
        return j10;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28456c) {
            this.f28455b.h(fVar);
        }
    }

    @Override
    public long h5(int i10, long j10) {
        long h52;
        synchronized (this.f28456c) {
            h52 = this.f28455b.h5(i10, j10);
        }
        return h52;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28456c) {
            hashCode = this.f28455b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28455b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28456c) {
            isEmpty = this.f28455b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.S iterator() {
        return this.f28455b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28456c) {
            j10 = this.f28455b.j();
        }
        return j10;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28456c) {
            try {
                if (this.f28458e == null) {
                    this.f28458e = new C3276i0(this.f28455b.k(), this.f28456c);
                }
                hVar = this.f28458e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28456c) {
            try {
                if (this.f28457d == null) {
                    this.f28457d = new C3268e0(this.f28455b.keySet(), this.f28456c);
                }
                interfaceC13971e = this.f28457d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28455b.l();
    }

    @Override
    public long la(int i10, long j10, long j11) {
        long la2;
        synchronized (this.f28456c) {
            la2 = this.f28455b.la(i10, j10, j11);
        }
        return la2;
    }

    @Override
    public long nd(int i10, long j10) {
        long nd2;
        synchronized (this.f28456c) {
            nd2 = this.f28455b.nd(i10, j10);
        }
        return nd2;
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Long> map) {
        synchronized (this.f28456c) {
            this.f28455b.putAll(map);
        }
    }

    @Override
    public long remove(int i10) {
        long remove;
        synchronized (this.f28456c) {
            remove = this.f28455b.remove(i10);
        }
        return remove;
    }

    @Override
    public boolean sc(he.P p10) {
        boolean sc2;
        synchronized (this.f28456c) {
            sc2 = this.f28455b.sc(p10);
        }
        return sc2;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28456c) {
            size = this.f28455b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28456c) {
            obj = this.f28455b.toString();
        }
        return obj;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28456c) {
            values = this.f28455b.values();
        }
        return values;
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28456c) {
            x10 = this.f28455b.x(b0Var);
        }
        return x10;
    }

    public C3264c0(ee.L l10, Object obj) {
        this.f28455b = l10;
        this.f28456c = obj;
    }
}
