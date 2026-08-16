package Xd;

import Zd.InterfaceC3457o;
import ee.InterfaceC13072m;
import he.InterfaceC13459n;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3292s implements InterfaceC13072m, Serializable {

    public static final long f28585f = 1978198479659022715L;

    public final InterfaceC13072m f28586b;

    public final Object f28587c;

    public transient InterfaceC13968b f28588d = null;

    public transient Sd.g f28589e = null;

    public C3292s(InterfaceC13072m interfaceC13072m) {
        interfaceC13072m.getClass();
        this.f28586b = interfaceC13072m;
        this.f28587c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28587c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28587c) {
            C10 = this.f28586b.C(c10);
        }
        return C10;
    }

    @Override
    public boolean D0(char c10) {
        boolean D02;
        synchronized (this.f28587c) {
            D02 = this.f28586b.D0(c10);
        }
        return D02;
    }

    @Override
    public int E4(char c10, int i10) {
        int E42;
        synchronized (this.f28587c) {
            E42 = this.f28586b.E4(c10, i10);
        }
        return E42;
    }

    @Override
    public boolean Od(char c10, int i10) {
        boolean Od2;
        synchronized (this.f28587c) {
            Od2 = this.f28586b.Od(c10, i10);
        }
        return Od2;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28587c) {
            Q10 = this.f28586b.Q(i10);
        }
        return Q10;
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28587c) {
            V10 = this.f28586b.V(cArr);
        }
        return V10;
    }

    @Override
    public int b(char c10) {
        int b10;
        synchronized (this.f28587c) {
            b10 = this.f28586b.b(c10);
        }
        return b10;
    }

    @Override
    public void bb(InterfaceC13072m interfaceC13072m) {
        synchronized (this.f28587c) {
            this.f28586b.bb(interfaceC13072m);
        }
    }

    @Override
    public boolean c4(InterfaceC13459n interfaceC13459n) {
        boolean c42;
        synchronized (this.f28587c) {
            c42 = this.f28586b.c4(interfaceC13459n);
        }
        return c42;
    }

    @Override
    public void clear() {
        synchronized (this.f28587c) {
            this.f28586b.clear();
        }
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28587c) {
            e02 = this.f28586b.e0(iArr);
        }
        return e02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28587c) {
            equals = this.f28586b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28587c) {
            this.f28586b.f(eVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28587c) {
            hashCode = this.f28586b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28586b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28587c) {
            isEmpty = this.f28586b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3457o iterator() {
        return this.f28586b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28587c) {
            j10 = this.f28586b.j();
        }
        return j10;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28587c) {
            try {
                if (this.f28589e == null) {
                    this.f28589e = new X(this.f28586b.k(), this.f28587c);
                }
                gVar = this.f28589e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28587c) {
            try {
                if (this.f28588d == null) {
                    this.f28588d = new C3296w(this.f28586b.keySet(), this.f28587c);
                }
                interfaceC13968b = this.f28588d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28586b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28587c) {
            m02 = this.f28586b.m0(s10);
        }
        return m02;
    }

    @Override
    public int o0(char c10) {
        int o02;
        synchronized (this.f28587c) {
            o02 = this.f28586b.o0(c10);
        }
        return o02;
    }

    @Override
    public int o4(char c10, int i10, int i11) {
        int o42;
        synchronized (this.f28587c) {
            o42 = this.f28586b.o4(c10, i10, i11);
        }
        return o42;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Integer> map) {
        synchronized (this.f28587c) {
            this.f28586b.putAll(map);
        }
    }

    @Override
    public boolean qb(InterfaceC13459n interfaceC13459n) {
        boolean qb2;
        synchronized (this.f28587c) {
            qb2 = this.f28586b.qb(interfaceC13459n);
        }
        return qb2;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28587c) {
            size = this.f28586b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28587c) {
            obj = this.f28586b.toString();
        }
        return obj;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28587c) {
            values = this.f28586b.values();
        }
        return values;
    }

    @Override
    public int x9(char c10, int i10) {
        int x92;
        synchronized (this.f28587c) {
            x92 = this.f28586b.x9(c10, i10);
        }
        return x92;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28587c) {
            y10 = this.f28586b.y(interfaceC13462q);
        }
        return y10;
    }

    public C3292s(InterfaceC13072m interfaceC13072m, Object obj) {
        this.f28586b = interfaceC13072m;
        this.f28587c = obj;
    }
}
