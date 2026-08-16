package org.bouncycastle.jce.provider;

import fk.InterfaceC13241g;
import fk.InterfaceC13250p;
import hi.C13486b;
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

public class C14734o implements InterfaceC13241g, DHPrivateKey, InterfaceC13250p {

    public static final long f101812e = 4819350091141529678L;

    public BigInteger f101813b;

    public hk.j f101814c;

    public org.bouncycastle.jcajce.provider.asymmetric.util.m f101815d = new org.bouncycastle.jcajce.provider.asymmetric.util.m();

    public C14734o() {
    }

    private void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f101813b = (BigInteger) objectInputStream.readObject();
        this.f101814c = new hk.j((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getX());
        objectOutputStream.writeObject(this.f101814c.b());
        objectOutputStream.writeObject(this.f101814c.a());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101815d.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101815d.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101815d.d();
    }

    @Override
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override
    public byte[] getEncoded() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.b(new C13486b(Bj.b.f1914l, new Bj.a(this.f101814c.b(), this.f101814c.a())), new C14539s(getX()));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public hk.j getParameters() {
        return this.f101814c;
    }

    @Override
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.f101814c.b(), this.f101814c.a());
    }

    @Override
    public BigInteger getX() {
        return this.f101813b;
    }

    public C14734o(Xh.v vVar) throws IOException {
        Bj.a v10 = Bj.a.v(vVar.y().x());
        this.f101813b = C14539s.F(vVar.E()).I();
        this.f101814c = new hk.j(v10.x(), v10.u());
    }

    public C14734o(Xi.X x10) {
        this.f101813b = x10.e();
        this.f101814c = new hk.j(x10.d().c(), x10.d().a());
    }

    public C14734o(InterfaceC13241g interfaceC13241g) {
        this.f101813b = interfaceC13241g.getX();
        this.f101814c = interfaceC13241g.getParameters();
    }

    public C14734o(hk.k kVar) {
        this.f101813b = kVar.b();
        this.f101814c = new hk.j(kVar.a().b(), kVar.a().a());
    }

    public C14734o(DHPrivateKey dHPrivateKey) {
        this.f101813b = dHPrivateKey.getX();
        this.f101814c = new hk.j(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    public C14734o(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f101813b = dHPrivateKeySpec.getX();
        this.f101814c = new hk.j(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }
}
