package Xd;

import Zd.InterfaceC3454l;
import ee.InterfaceC13069j;
import he.InterfaceC13456k;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3287o implements InterfaceC13069j, Serializable {

    public static final long f28551f = 1978198479659022715L;

    public final InterfaceC13069j f28552b;

    public final Object f28553c;

    public transient InterfaceC13968b f28554d = null;

    public transient Sd.b f28555e = null;

    public C3287o(InterfaceC13069j interfaceC13069j) {
        interfaceC13069j.getClass();
        this.f28552b = interfaceC13069j;
        this.f28553c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28553c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public char A4(char c10, char c11) {
        char A42;
        synchronized (this.f28553c) {
            A42 = this.f28552b.A4(c10, c11);
        }
        return A42;
    }

    @Override
    public boolean Bb(InterfaceC13456k interfaceC13456k) {
        boolean Bb2;
        synchronized (this.f28553c) {
            Bb2 = this.f28552b.Bb(interfaceC13456k);
        }
        return Bb2;
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28553c) {
            C10 = this.f28552b.C(c10);
        }
        return C10;
    }

    @Override
    public boolean D0(char c10) {
        boolean D02;
        synchronized (this.f28553c) {
            D02 = this.f28552b.D0(c10);
        }
        return D02;
    }

    @Override
    public char Ec(char c10, char c11, char c12) {
        char Ec2;
        synchronized (this.f28553c) {
            Ec2 = this.f28552b.Ec(c10, c11, c12);
        }
        return Ec2;
    }

    @Override
    public boolean Ed(char c10, char c11) {
        boolean Ed2;
        synchronized (this.f28553c) {
            Ed2 = this.f28552b.Ed(c10, c11);
        }
        return Ed2;
    }

    @Override
    public char H9(char c10, char c11) {
        char H92;
        synchronized (this.f28553c) {
            H92 = this.f28552b.H9(c10, c11);
        }
        return H92;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28553c) {
            K10 = this.f28552b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28553c) {
            O10 = this.f28552b.O(c10);
        }
        return O10;
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28553c) {
            V10 = this.f28552b.V(cArr);
        }
        return V10;
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28553c) {
            Z10 = this.f28552b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public char b(char c10) {
        char b10;
        synchronized (this.f28553c) {
            b10 = this.f28552b.b(c10);
        }
        return b10;
    }

    @Override
    public void clear() {
        synchronized (this.f28553c) {
            this.f28552b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28553c) {
            equals = this.f28552b.equals(obj);
        }
        return equals;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28553c) {
            this.f28552b.g(bVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28553c) {
            hashCode = this.f28552b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28552b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28553c) {
            isEmpty = this.f28552b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3454l iterator() {
        return this.f28552b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28553c) {
            j10 = this.f28552b.j();
        }
        return j10;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28553c) {
            try {
                if (this.f28555e == null) {
                    this.f28555e = new C3289p(this.f28552b.k(), this.f28553c);
                }
                bVar = this.f28555e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28553c) {
            try {
                if (this.f28554d == null) {
                    this.f28554d = new C3296w(this.f28552b.keySet(), this.f28553c);
                }
                interfaceC13968b = this.f28554d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28552b.l();
    }

    @Override
    public boolean nb(InterfaceC13456k interfaceC13456k) {
        boolean nb2;
        synchronized (this.f28553c) {
            nb2 = this.f28552b.nb(interfaceC13456k);
        }
        return nb2;
    }

    @Override
    public char o0(char c10) {
        char o02;
        synchronized (this.f28553c) {
            o02 = this.f28552b.o0(c10);
        }
        return o02;
    }

    @Override
    public void pd(InterfaceC13069j interfaceC13069j) {
        synchronized (this.f28553c) {
            this.f28552b.pd(interfaceC13069j);
        }
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Character> map) {
        synchronized (this.f28553c) {
            this.f28552b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28553c) {
            size = this.f28552b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28553c) {
            obj = this.f28552b.toString();
        }
        return obj;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28553c) {
            values = this.f28552b.values();
        }
        return values;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28553c) {
            y10 = this.f28552b.y(interfaceC13462q);
        }
        return y10;
    }

    public C3287o(InterfaceC13069j interfaceC13069j, Object obj) {
        this.f28552b = interfaceC13069j;
        this.f28553c = obj;
    }
}
