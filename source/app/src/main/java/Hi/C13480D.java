package hi;

import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;
import java.util.Vector;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.asn1.ASN1ParsingException;

public class C13480D {

    public static final Set f90607c;

    public Hashtable f90608a = new Hashtable();

    public Vector f90609b = new Vector();

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(C13478B.f90533i);
        hashSet.add(C13478B.f90534j);
        hashSet.add(C13478B.f90529e);
        hashSet.add(C13478B.f90542r);
        f90607c = Collections.unmodifiableSet(hashSet);
    }

    public void a(C13478B c13478b) {
        if (!this.f90608a.containsKey(c13478b.x())) {
            this.f90609b.addElement(c13478b.x());
            this.f90608a.put(c13478b.x(), c13478b);
        } else {
            throw new IllegalArgumentException("extension " + ((Object) c13478b.x()) + " already added");
        }
    }

    public void b(C13479C c13479c) {
        C14549x[] y10 = c13479c.y();
        for (int i10 = 0; i10 != y10.length; i10++) {
            C14549x c14549x = y10[i10];
            C13478B x10 = c13479c.x(c14549x);
            d(C14549x.K(c14549x), x10.B(), x10.y().H());
        }
    }

    public void c(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws IOException {
        d(c14549x, z10, interfaceC14516g.r().s(InterfaceC14520i.f98892a));
    }

    public void d(C14549x c14549x, boolean z10, byte[] bArr) {
        if (!this.f90608a.containsKey(c14549x)) {
            this.f90609b.addElement(c14549x);
            this.f90608a.put(c14549x, new C13478B(c14549x, z10, new oh.C0(org.bouncycastle.util.a.p(bArr))));
            return;
        }
        if (!f90607c.contains(c14549x)) {
            throw new IllegalArgumentException("extension " + ((Object) c14549x) + " already added");
        }
        oh.E G10 = oh.E.G(AbstractC14551y.F(((C13478B) this.f90608a.get(c14549x)).y()).H());
        oh.E G11 = oh.E.G(bArr);
        C14518h c14518h = new C14518h(G10.size() + G11.size());
        Enumeration J10 = G10.J();
        while (J10.hasMoreElements()) {
            c14518h.a((InterfaceC14516g) J10.nextElement());
        }
        Enumeration J11 = G11.J();
        while (J11.hasMoreElements()) {
            c14518h.a((InterfaceC14516g) J11.nextElement());
        }
        try {
            this.f90608a.put(c14549x, new C13478B(c14549x, z10, new G0(c14518h).getEncoded()));
        } catch (IOException e10) {
            throw new ASN1ParsingException(e10.getMessage(), e10);
        }
    }

    public C13479C e() {
        C13478B[] c13478bArr = new C13478B[this.f90609b.size()];
        for (int i10 = 0; i10 != this.f90609b.size(); i10++) {
            c13478bArr[i10] = (C13478B) this.f90608a.get(this.f90609b.elementAt(i10));
        }
        return new C13479C(c13478bArr);
    }

    public C13478B f(C14549x c14549x) {
        return (C13478B) this.f90608a.get(c14549x);
    }

    public boolean g(C14549x c14549x) {
        return this.f90608a.containsKey(c14549x);
    }

    public boolean h() {
        return this.f90609b.isEmpty();
    }

    public void i(C14549x c14549x) {
        if (this.f90608a.containsKey(c14549x)) {
            this.f90609b.removeElement(c14549x);
            this.f90608a.remove(c14549x);
        } else {
            throw new IllegalArgumentException("extension " + ((Object) c14549x) + " not present");
        }
    }

    public void j(C13478B c13478b) {
        if (this.f90608a.containsKey(c13478b.x())) {
            this.f90608a.put(c13478b.x(), c13478b);
            return;
        }
        throw new IllegalArgumentException("extension " + ((Object) c13478b.x()) + " not present");
    }

    public void k(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws IOException {
        l(c14549x, z10, interfaceC14516g.r().s(InterfaceC14520i.f98892a));
    }

    public void l(C14549x c14549x, boolean z10, byte[] bArr) {
        j(new C13478B(c14549x, z10, bArr));
    }

    public void m() {
        this.f90608a = new Hashtable();
        this.f90609b = new Vector();
    }
}
