package Qj;

import Xi.C3340e0;
import fk.InterfaceC13244j;
import fk.InterfaceC13246l;
import hi.C13486b;
import hi.h0;
import hk.n;
import hk.p;
import hk.q;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import oh.C0;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.asymmetric.util.j;
import org.bouncycastle.jcajce.provider.asymmetric.util.l;
import yh.InterfaceC16192a;

public class d implements InterfaceC13246l {

    public static final long f22446d = -6251023343619275990L;

    public BigInteger f22447b;

    public transient InterfaceC13244j f22448c;

    public d(C3340e0 c3340e0, n nVar) {
        this.f22447b = c3340e0.e();
        this.f22448c = nVar;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.f22448c = new n(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
            return;
        }
        this.f22448c = new n(new p((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
        objectInputStream.readObject();
        objectInputStream.readObject();
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        Object a10;
        objectOutputStream.defaultWriteObject();
        if (this.f22448c.b() != null) {
            a10 = this.f22448c.b();
        } else {
            objectOutputStream.writeObject(null);
            objectOutputStream.writeObject(this.f22448c.a().b());
            objectOutputStream.writeObject(this.f22448c.a().c());
            a10 = this.f22448c.a().a();
        }
        objectOutputStream.writeObject(a10);
        objectOutputStream.writeObject(this.f22448c.d());
        objectOutputStream.writeObject(this.f22448c.c());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f22447b.equals(dVar.f22447b) && this.f22448c.equals(dVar.f22448c);
    }

    @Override
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override
    public byte[] getEncoded() {
        byte[] byteArray = getY().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = byteArray[(byteArray.length - 1) - i10];
        }
        try {
            InterfaceC13244j interfaceC13244j = this.f22448c;
            return l.e(interfaceC13244j instanceof n ? interfaceC13244j.c() != null ? new h0(new C13486b(InterfaceC16192a.f130280l, new yh.g(new C14549x(this.f22448c.b()), new C14549x(this.f22448c.d()), new C14549x(this.f22448c.c()))), new C0(bArr)) : new h0(new C13486b(InterfaceC16192a.f130280l, new yh.g(new C14549x(this.f22448c.b()), new C14549x(this.f22448c.d()))), new C0(bArr)) : new h0(new C13486b(InterfaceC16192a.f130280l), new C0(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public InterfaceC13244j getParameters() {
        return this.f22448c;
    }

    @Override
    public BigInteger getY() {
        return this.f22447b;
    }

    public int hashCode() {
        return this.f22447b.hashCode() ^ this.f22448c.hashCode();
    }

    public String toString() {
        try {
            return e.c("GOST3410", this.f22447b, ((C3340e0) j.b(this)).d());
        } catch (InvalidKeyException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }

    public d(InterfaceC13246l interfaceC13246l) {
        this.f22447b = interfaceC13246l.getY();
        this.f22448c = interfaceC13246l.getParameters();
    }

    public d(h0 h0Var) {
        yh.g w10 = yh.g.w(h0Var.u().x());
        try {
            byte[] H10 = ((C0) h0Var.A()).H();
            byte[] bArr = new byte[H10.length];
            for (int i10 = 0; i10 != H10.length; i10++) {
                bArr[i10] = H10[(H10.length - 1) - i10];
            }
            this.f22447b = new BigInteger(1, bArr);
            this.f22448c = n.e(w10);
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in GOST3410 public key");
        }
    }

    public d(q qVar) {
        this.f22447b = qVar.d();
        this.f22448c = new n(new p(qVar.b(), qVar.c(), qVar.a()));
    }

    public d(BigInteger bigInteger, n nVar) {
        this.f22447b = bigInteger;
        this.f22448c = nVar;
    }
}
