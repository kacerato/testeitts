package Qj;

import Xh.v;
import Xi.C3338d0;
import fk.InterfaceC13244j;
import fk.InterfaceC13245k;
import fk.InterfaceC13250p;
import hi.C13486b;
import hk.n;
import hk.o;
import hk.p;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.util.Enumeration;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.util.j;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;
import yh.InterfaceC16192a;

public class c implements InterfaceC13245k, InterfaceC13250p {

    public static final long f22442e = 8581661527592305464L;

    public BigInteger f22443b;

    public transient InterfaceC13244j f22444c;

    public transient InterfaceC13250p f22445d = new m();

    public c() {
    }

    private void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.f22444c = new n(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
        } else {
            this.f22444c = new n(new p((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
            objectInputStream.readObject();
            objectInputStream.readObject();
        }
        this.f22445d = new m();
    }

    private void h(ObjectOutputStream objectOutputStream) throws IOException {
        Object a10;
        objectOutputStream.defaultWriteObject();
        if (this.f22444c.b() != null) {
            a10 = this.f22444c.b();
        } else {
            objectOutputStream.writeObject(null);
            objectOutputStream.writeObject(this.f22444c.a().b());
            objectOutputStream.writeObject(this.f22444c.a().c());
            a10 = this.f22444c.a().a();
        }
        objectOutputStream.writeObject(a10);
        objectOutputStream.writeObject(this.f22444c.d());
        objectOutputStream.writeObject(this.f22444c.c());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f22445d.a(c14549x, interfaceC14516g);
    }

    public final boolean b(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f22445d.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f22445d.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13245k)) {
            return false;
        }
        InterfaceC13245k interfaceC13245k = (InterfaceC13245k) obj;
        return getX().equals(interfaceC13245k.getX()) && getParameters().a().equals(interfaceC13245k.getParameters().a()) && b(getParameters().d(), interfaceC13245k.getParameters().d()) && b(getParameters().c(), interfaceC13245k.getParameters().c());
    }

    @Override
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override
    public byte[] getEncoded() {
        byte[] byteArray = getX().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = byteArray[(byteArray.length - 1) - i10];
        }
        try {
            return (this.f22444c instanceof n ? new v(new C13486b(InterfaceC16192a.f130280l, new yh.g(new C14549x(this.f22444c.b()), new C14549x(this.f22444c.d()))), new C0(bArr)) : new v(new C13486b(InterfaceC16192a.f130280l), new C0(bArr))).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public InterfaceC13244j getParameters() {
        return this.f22444c;
    }

    @Override
    public BigInteger getX() {
        return this.f22443b;
    }

    public int hashCode() {
        return getX().hashCode() ^ this.f22444c.hashCode();
    }

    public String toString() {
        try {
            return e.b("GOST3410", this.f22443b, ((C3338d0) j.a(this)).d());
        } catch (InvalidKeyException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }

    public c(v vVar) throws IOException {
        BigInteger bigInteger;
        yh.g w10 = yh.g.w(vVar.y().x());
        InterfaceC14516g E10 = vVar.E();
        if (E10 instanceof C14539s) {
            bigInteger = C14539s.F(E10).H();
        } else {
            byte[] H10 = AbstractC14551y.F(vVar.E()).H();
            byte[] bArr = new byte[H10.length];
            for (int i10 = 0; i10 != H10.length; i10++) {
                bArr[i10] = H10[(H10.length - 1) - i10];
            }
            bigInteger = new BigInteger(1, bArr);
        }
        this.f22443b = bigInteger;
        this.f22444c = n.e(w10);
    }

    public c(C3338d0 c3338d0, n nVar) {
        this.f22443b = c3338d0.e();
        this.f22444c = nVar;
        if (nVar == null) {
            throw new IllegalArgumentException("spec is null");
        }
    }

    public c(InterfaceC13245k interfaceC13245k) {
        this.f22443b = interfaceC13245k.getX();
        this.f22444c = interfaceC13245k.getParameters();
    }

    public c(o oVar) {
        this.f22443b = oVar.d();
        this.f22444c = new n(new p(oVar.b(), oVar.c(), oVar.a()));
    }
}
