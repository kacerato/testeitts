package org.bouncycastle.jce.provider;

import fk.InterfaceC13250p;
import hi.C13486b;
import hi.C13508u;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.util.Enumeration;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class C14738t implements DSAPrivateKey, InterfaceC13250p {

    public static final long f101834e = -4677259546958385734L;

    public BigInteger f101835b;

    public DSAParams f101836c;

    public org.bouncycastle.jcajce.provider.asymmetric.util.m f101837d = new org.bouncycastle.jcajce.provider.asymmetric.util.m();

    public C14738t() {
    }

    private void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f101835b = (BigInteger) objectInputStream.readObject();
        this.f101836c = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        org.bouncycastle.jcajce.provider.asymmetric.util.m mVar = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101837d = mVar;
        mVar.f(objectInputStream);
    }

    private void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.f101835b);
        objectOutputStream.writeObject(this.f101836c.getP());
        objectOutputStream.writeObject(this.f101836c.getQ());
        objectOutputStream.writeObject(this.f101836c.getG());
        this.f101837d.h(objectOutputStream);
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101837d.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101837d.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101837d.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPrivateKey)) {
            return false;
        }
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) obj;
        return getX().equals(dSAPrivateKey.getX()) && getParams().getG().equals(dSAPrivateKey.getParams().getG()) && getParams().getP().equals(dSAPrivateKey.getParams().getP()) && getParams().getQ().equals(dSAPrivateKey.getParams().getQ());
    }

    @Override
    public String getAlgorithm() {
        return "DSA";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new Xh.v(new C13486b(ki.r.f95349s6, new C13508u(this.f101836c.getP(), this.f101836c.getQ(), this.f101836c.getG())), new C14539s(getX())).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public DSAParams getParams() {
        return this.f101836c;
    }

    @Override
    public BigInteger getX() {
        return this.f101835b;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    public C14738t(Xh.v vVar) throws IOException {
        C13508u v10 = C13508u.v(vVar.y().x());
        this.f101835b = C14539s.F(vVar.E()).I();
        this.f101836c = new DSAParameterSpec(v10.x(), v10.y(), v10.u());
    }

    public C14738t(Xi.A a10) {
        this.f101835b = a10.e();
        this.f101836c = new DSAParameterSpec(a10.d().b(), a10.d().c(), a10.d().a());
    }

    public C14738t(DSAPrivateKey dSAPrivateKey) {
        this.f101835b = dSAPrivateKey.getX();
        this.f101836c = dSAPrivateKey.getParams();
    }

    public C14738t(DSAPrivateKeySpec dSAPrivateKeySpec) {
        this.f101835b = dSAPrivateKeySpec.getX();
        this.f101836c = new DSAParameterSpec(dSAPrivateKeySpec.getP(), dSAPrivateKeySpec.getQ(), dSAPrivateKeySpec.getG());
    }
}
