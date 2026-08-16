package Pj;

import Xh.v;
import Xi.X;
import fk.InterfaceC13241g;
import fk.InterfaceC13250p;
import hi.C13486b;
import hk.j;
import hk.k;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;

public class c implements InterfaceC13241g, DHPrivateKey, InterfaceC13250p {

    public static final long f21541e = 4819350091141529678L;

    public BigInteger f21542b;

    public transient j f21543c;

    public transient m f21544d = new m();

    public c() {
    }

    private void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f21543c = new j((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.f21544d = new m();
    }

    private void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f21543c.b());
        objectOutputStream.writeObject(this.f21543c.a());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f21544d.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f21544d.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f21544d.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPrivateKey)) {
            return false;
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) obj;
        return getX().equals(dHPrivateKey.getX()) && getParams().getG().equals(dHPrivateKey.getParams().getG()) && getParams().getP().equals(dHPrivateKey.getParams().getP()) && getParams().getL() == dHPrivateKey.getParams().getL();
    }

    @Override
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new v(new C13486b(Bj.b.f1914l, new Bj.a(this.f21543c.b(), this.f21543c.a())), new C14539s(getX())).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public j getParameters() {
        return this.f21543c;
    }

    @Override
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.f21543c.b(), this.f21543c.a());
    }

    @Override
    public BigInteger getX() {
        return this.f21542b;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public c(v vVar) throws IOException {
        Bj.a v10 = Bj.a.v(vVar.y().x());
        this.f21542b = C14539s.F(vVar.E()).I();
        this.f21543c = new j(v10.x(), v10.u());
    }

    public c(X x10) {
        this.f21542b = x10.e();
        this.f21543c = new j(x10.d().c(), x10.d().a());
    }

    public c(InterfaceC13241g interfaceC13241g) {
        this.f21542b = interfaceC13241g.getX();
        this.f21543c = interfaceC13241g.getParameters();
    }

    public c(k kVar) {
        this.f21542b = kVar.b();
        this.f21543c = new j(kVar.a().b(), kVar.a().a());
    }

    public c(DHPrivateKey dHPrivateKey) {
        this.f21542b = dHPrivateKey.getX();
        this.f21543c = new j(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    public c(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f21542b = dHPrivateKeySpec.getX();
        this.f21543c = new j(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }
}
