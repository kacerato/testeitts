package Xd;

import Zd.InterfaceC3459q;
import ee.InterfaceC13073n;
import he.InterfaceC13460o;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3294u implements InterfaceC13073n, Serializable {

    public static final long f28602f = 1978198479659022715L;

    public final InterfaceC13073n f28603b;

    public final Object f28604c;

    public transient InterfaceC13968b f28605d = null;

    public transient Sd.h f28606e = null;

    public C3294u(InterfaceC13073n interfaceC13073n) {
        interfaceC13073n.getClass();
        this.f28603b = interfaceC13073n;
        this.f28604c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28604c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28604c) {
            C10 = this.f28603b.C(c10);
        }
        return C10;
    }

    @Override
    public boolean D0(char c10) {
        boolean D02;
        synchronized (this.f28604c) {
            D02 = this.f28603b.D0(c10);
        }
        return D02;
    }

    @Override
    public long D2(char c10, long j10, long j11) {
        long D22;
        synchronized (this.f28604c) {
            D22 = this.f28603b.D2(c10, j10, j11);
        }
        return D22;
    }

    @Override
    public long G4(char c10, long j10) {
        long G42;
        synchronized (this.f28604c) {
            G42 = this.f28603b.G4(c10, j10);
        }
        return G42;
    }

    @Override
    public boolean Ke(InterfaceC13460o interfaceC13460o) {
        boolean Ke2;
        synchronized (this.f28604c) {
            Ke2 = this.f28603b.Ke(interfaceC13460o);
        }
        return Ke2;
    }

    @Override
    public boolean Ld(char c10, long j10) {
        boolean Ld2;
        synchronized (this.f28604c) {
            Ld2 = this.f28603b.Ld(c10, j10);
        }
        return Ld2;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28604c) {
            R10 = this.f28603b.R(j10);
        }
        return R10;
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28604c) {
            V10 = this.f28603b.V(cArr);
        }
        return V10;
    }

    @Override
    public boolean V7(InterfaceC13460o interfaceC13460o) {
        boolean V72;
        synchronized (this.f28604c) {
            V72 = this.f28603b.V7(interfaceC13460o);
        }
        return V72;
    }

    @Override
    public long b(char c10) {
        long b10;
        synchronized (this.f28604c) {
            b10 = this.f28603b.b(c10);
        }
        return b10;
    }

    @Override
    public void clear() {
        synchronized (this.f28604c) {
            this.f28603b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28604c) {
            equals = this.f28603b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28604c) {
            g02 = this.f28603b.g0(jArr);
        }
        return g02;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28604c) {
            this.f28603b.h(fVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28604c) {
            hashCode = this.f28603b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28603b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28604c) {
            isEmpty = this.f28603b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3459q iterator() {
        return this.f28603b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28604c) {
            j10 = this.f28603b.j();
        }
        return j10;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28604c) {
            try {
                if (this.f28606e == null) {
                    this.f28606e = new C3276i0(this.f28603b.k(), this.f28604c);
                }
                hVar = this.f28606e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28604c) {
            try {
                if (this.f28605d == null) {
                    this.f28605d = new C3296w(this.f28603b.keySet(), this.f28604c);
                }
                interfaceC13968b = this.f28605d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28603b.l();
    }

    @Override
    public long o0(char c10) {
        long o02;
        synchronized (this.f28604c) {
            o02 = this.f28603b.o0(c10);
        }
        return o02;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Long> map) {
        synchronized (this.f28604c) {
            this.f28603b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28604c) {
            size = this.f28603b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28604c) {
            obj = this.f28603b.toString();
        }
        return obj;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28604c) {
            values = this.f28603b.values();
        }
        return values;
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28604c) {
            x10 = this.f28603b.x(b0Var);
        }
        return x10;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28604c) {
            y10 = this.f28603b.y(interfaceC13462q);
        }
        return y10;
    }

    @Override
    public long z9(char c10, long j10) {
        long z92;
        synchronized (this.f28604c) {
            z92 = this.f28603b.z9(c10, j10);
        }
        return z92;
    }

    @Override
    public void za(InterfaceC13073n interfaceC13073n) {
        synchronized (this.f28604c) {
            this.f28603b.za(interfaceC13073n);
        }
    }

    public C3294u(InterfaceC13073n interfaceC13073n, Object obj) {
        this.f28603b = interfaceC13073n;
        this.f28604c = obj;
    }
}
