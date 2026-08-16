package Xd;

import Zd.InterfaceC3453k;
import ee.InterfaceC13068i;
import he.InterfaceC13453h;
import he.InterfaceC13455j;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3285n implements InterfaceC13068i, Serializable {

    public static final long f28541f = 1978198479659022715L;

    public final InterfaceC13068i f28542b;

    public final Object f28543c;

    public transient InterfaceC13968b f28544d = null;

    public transient Sd.a f28545e = null;

    public C3285n(InterfaceC13068i interfaceC13068i) {
        interfaceC13068i.getClass();
        this.f28542b = interfaceC13068i;
        this.f28543c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28543c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28543c) {
            C10 = this.f28542b.C(c10);
        }
        return C10;
    }

    @Override
    public boolean D0(char c10) {
        boolean D02;
        synchronized (this.f28543c) {
            D02 = this.f28542b.D0(c10);
        }
        return D02;
    }

    @Override
    public byte F9(char c10, byte b10) {
        byte F92;
        synchronized (this.f28543c) {
            F92 = this.f28542b.F9(c10, b10);
        }
        return F92;
    }

    @Override
    public boolean Fd(char c10, byte b10) {
        boolean Fd2;
        synchronized (this.f28543c) {
            Fd2 = this.f28542b.Fd(c10, b10);
        }
        return Fd2;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28543c) {
            M10 = this.f28542b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28543c) {
            P10 = this.f28542b.P(b10);
        }
        return P10;
    }

    @Override
    public boolean Q4(InterfaceC13455j interfaceC13455j) {
        boolean Q42;
        synchronized (this.f28543c) {
            Q42 = this.f28542b.Q4(interfaceC13455j);
        }
        return Q42;
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28543c) {
            V10 = this.f28542b.V(cArr);
        }
        return V10;
    }

    @Override
    public void Vc(InterfaceC13068i interfaceC13068i) {
        synchronized (this.f28543c) {
            this.f28542b.Vc(interfaceC13068i);
        }
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28543c) {
            a02 = this.f28542b.a0(bArr);
        }
        return a02;
    }

    @Override
    public byte b(char c10) {
        byte b10;
        synchronized (this.f28543c) {
            b10 = this.f28542b.b(c10);
        }
        return b10;
    }

    @Override
    public void clear() {
        synchronized (this.f28543c) {
            this.f28542b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28543c) {
            equals = this.f28542b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28543c) {
            hashCode = this.f28542b.hashCode();
        }
        return hashCode;
    }

    @Override
    public byte i() {
        return this.f28542b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28543c) {
            isEmpty = this.f28542b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3453k iterator() {
        return this.f28542b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28543c) {
            j10 = this.f28542b.j();
        }
        return j10;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28543c) {
            try {
                if (this.f28545e == null) {
                    this.f28545e = new C3267e(this.f28542b.k(), this.f28543c);
                }
                aVar = this.f28545e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28543c) {
            try {
                if (this.f28544d == null) {
                    this.f28544d = new C3296w(this.f28542b.keySet(), this.f28543c);
                }
                interfaceC13968b = this.f28544d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28542b.l();
    }

    @Override
    public boolean na(InterfaceC13455j interfaceC13455j) {
        boolean na2;
        synchronized (this.f28543c) {
            na2 = this.f28542b.na(interfaceC13455j);
        }
        return na2;
    }

    @Override
    public byte o0(char c10) {
        byte o02;
        synchronized (this.f28543c) {
            o02 = this.f28542b.o0(c10);
        }
        return o02;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Byte> map) {
        synchronized (this.f28543c) {
            this.f28542b.putAll(map);
        }
    }

    @Override
    public byte rc(char c10, byte b10, byte b11) {
        byte rc2;
        synchronized (this.f28543c) {
            rc2 = this.f28542b.rc(c10, b10, b11);
        }
        return rc2;
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28543c) {
            this.f28542b.s(aVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28543c) {
            size = this.f28542b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28543c) {
            obj = this.f28542b.toString();
        }
        return obj;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28543c) {
            values = this.f28542b.values();
        }
        return values;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28543c) {
            y10 = this.f28542b.y(interfaceC13462q);
        }
        return y10;
    }

    @Override
    public byte z4(char c10, byte b10) {
        byte z42;
        synchronized (this.f28543c) {
            z42 = this.f28542b.z4(c10, b10);
        }
        return z42;
    }

    public C3285n(InterfaceC13068i interfaceC13068i, Object obj) {
        this.f28542b = interfaceC13068i;
        this.f28543c = obj;
    }
}
