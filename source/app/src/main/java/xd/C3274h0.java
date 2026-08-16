package Xd;

import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3274h0 implements ee.P, Serializable {

    public static final long f28498f = 1978198479659022715L;

    public final ee.P f28499b;

    public final Object f28500c;

    public transient InterfaceC13972f f28501d = null;

    public transient Sd.b f28502e = null;

    public C3274h0(ee.P p10) {
        p10.getClass();
        this.f28499b = p10;
        this.f28500c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28500c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28500c) {
            E10 = this.f28499b.E(j10);
        }
        return E10;
    }

    @Override
    public boolean H0(long j10) {
        boolean H02;
        synchronized (this.f28500c) {
            H02 = this.f28499b.H0(j10);
        }
        return H02;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28500c) {
            K10 = this.f28499b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28500c) {
            O10 = this.f28499b.O(c10);
        }
        return O10;
    }

    @Override
    public void P4(ee.P p10) {
        synchronized (this.f28500c) {
            this.f28499b.P4(p10);
        }
    }

    @Override
    public char X7(long j10, char c10, char c11) {
        char X72;
        synchronized (this.f28500c) {
            X72 = this.f28499b.X7(j10, c10, c11);
        }
        return X72;
    }

    @Override
    public boolean Xd(he.V v10) {
        boolean Xd2;
        synchronized (this.f28500c) {
            Xd2 = this.f28499b.Xd(v10);
        }
        return Xd2;
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28500c) {
            Z10 = this.f28499b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public boolean a8(he.V v10) {
        boolean a82;
        synchronized (this.f28500c) {
            a82 = this.f28499b.a8(v10);
        }
        return a82;
    }

    @Override
    public void clear() {
        synchronized (this.f28500c) {
            this.f28499b.clear();
        }
    }

    @Override
    public char e(long j10) {
        char e10;
        synchronized (this.f28500c) {
            e10 = this.f28499b.e(j10);
        }
        return e10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28500c) {
            equals = this.f28499b.equals(obj);
        }
        return equals;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28500c) {
            this.f28499b.g(bVar);
        }
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28500c) {
            h02 = this.f28499b.h0(jArr);
        }
        return h02;
    }

    @Override
    public char h7(long j10, char c10) {
        char h72;
        synchronized (this.f28500c) {
            h72 = this.f28499b.h7(j10, c10);
        }
        return h72;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28500c) {
            hashCode = this.f28499b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28499b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28500c) {
            isEmpty = this.f28499b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.X iterator() {
        return this.f28499b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28500c) {
            j10 = this.f28499b.j();
        }
        return j10;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28500c) {
            try {
                if (this.f28502e == null) {
                    this.f28502e = new C3289p(this.f28499b.k(), this.f28500c);
                }
                bVar = this.f28502e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public boolean kb(long j10, char c10) {
        boolean kb2;
        synchronized (this.f28500c) {
            kb2 = this.f28499b.kb(j10, c10);
        }
        return kb2;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28500c) {
            try {
                if (this.f28501d == null) {
                    this.f28501d = new C3290p0(this.f28499b.keySet(), this.f28500c);
                }
                interfaceC13972f = this.f28501d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28499b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28500c) {
            l02 = this.f28499b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Character> map) {
        synchronized (this.f28500c) {
            this.f28499b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28500c) {
            size = this.f28499b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28500c) {
            obj = this.f28499b.toString();
        }
        return obj;
    }

    @Override
    public char u(long j10) {
        char u10;
        synchronized (this.f28500c) {
            u10 = this.f28499b.u(j10);
        }
        return u10;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28500c) {
            values = this.f28499b.values();
        }
        return values;
    }

    @Override
    public char wd(long j10, char c10) {
        char wd2;
        synchronized (this.f28500c) {
            wd2 = this.f28499b.wd(j10, c10);
        }
        return wd2;
    }

    public C3274h0(ee.P p10, Object obj) {
        this.f28499b = p10;
        this.f28500c = obj;
    }
}
