package Xd;

import Zd.InterfaceC3460s;
import ee.InterfaceC13075p;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3297x implements InterfaceC13075p, Serializable {

    public static final long f28628f = 1978198479659022715L;

    public final InterfaceC13075p f28629b;

    public final Object f28630c;

    public transient InterfaceC13968b f28631d = null;

    public transient Sd.i f28632e = null;

    public C3297x(InterfaceC13075p interfaceC13075p) {
        interfaceC13075p.getClass();
        this.f28629b = interfaceC13075p;
        this.f28630c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28630c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28630c) {
            C10 = this.f28629b.C(c10);
        }
        return C10;
    }

    @Override
    public boolean D0(char c10) {
        boolean D02;
        synchronized (this.f28630c) {
            D02 = this.f28629b.D0(c10);
        }
        return D02;
    }

    @Override
    public short D6(char c10, short s10, short s11) {
        short D62;
        synchronized (this.f28630c) {
            D62 = this.f28629b.D6(c10, s10, s11);
        }
        return D62;
    }

    @Override
    public short F2(char c10, short s10) {
        short F22;
        synchronized (this.f28630c) {
            F22 = this.f28629b.F2(c10, s10);
        }
        return F22;
    }

    @Override
    public boolean I5(he.r rVar) {
        boolean I52;
        synchronized (this.f28630c) {
            I52 = this.f28629b.I5(rVar);
        }
        return I52;
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28630c) {
            L10 = this.f28629b.L(s10);
        }
        return L10;
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28630c) {
            N10 = this.f28629b.N(t0Var);
        }
        return N10;
    }

    @Override
    public short Q9(char c10, short s10) {
        short Q92;
        synchronized (this.f28630c) {
            Q92 = this.f28629b.Q9(c10, s10);
        }
        return Q92;
    }

    @Override
    public void R9(InterfaceC13075p interfaceC13075p) {
        synchronized (this.f28630c) {
            this.f28629b.R9(interfaceC13075p);
        }
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28630c) {
            V10 = this.f28629b.V(cArr);
        }
        return V10;
    }

    @Override
    public boolean Wd(char c10, short s10) {
        boolean Wd2;
        synchronized (this.f28630c) {
            Wd2 = this.f28629b.Wd(c10, s10);
        }
        return Wd2;
    }

    @Override
    public short b(char c10) {
        short b10;
        synchronized (this.f28630c) {
            b10 = this.f28629b.b(c10);
        }
        return b10;
    }

    @Override
    public void clear() {
        synchronized (this.f28630c) {
            this.f28629b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28630c) {
            equals = this.f28629b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28630c) {
            hashCode = this.f28629b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28629b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28630c) {
            i02 = this.f28629b.i0(sArr);
        }
        return i02;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28630c) {
            isEmpty = this.f28629b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3460s iterator() {
        return this.f28629b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28630c) {
            j10 = this.f28629b.j();
        }
        return j10;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28630c) {
            try {
                if (this.f28632e == null) {
                    this.f28632e = new H0(this.f28629b.k(), this.f28630c);
                }
                iVar = this.f28632e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28630c) {
            try {
                if (this.f28631d == null) {
                    this.f28631d = new C3296w(this.f28629b.keySet(), this.f28630c);
                }
                interfaceC13968b = this.f28631d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28629b.l();
    }

    @Override
    public short o0(char c10) {
        short o02;
        synchronized (this.f28630c) {
            o02 = this.f28629b.o0(c10);
        }
        return o02;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Short> map) {
        synchronized (this.f28630c) {
            this.f28629b.putAll(map);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28630c) {
            this.f28629b.r(hVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28630c) {
            size = this.f28629b.size();
        }
        return size;
    }

    @Override
    public boolean t9(he.r rVar) {
        boolean t92;
        synchronized (this.f28630c) {
            t92 = this.f28629b.t9(rVar);
        }
        return t92;
    }

    public String toString() {
        String obj;
        synchronized (this.f28630c) {
            obj = this.f28629b.toString();
        }
        return obj;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28630c) {
            values = this.f28629b.values();
        }
        return values;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28630c) {
            y10 = this.f28629b.y(interfaceC13462q);
        }
        return y10;
    }

    public C3297x(InterfaceC13075p interfaceC13075p, Object obj) {
        this.f28629b = interfaceC13075p;
        this.f28630c = obj;
    }
}
