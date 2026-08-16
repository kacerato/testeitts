package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import Xh.v;
import Xi.A;
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
import ki.r;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.jcajce.provider.asymmetric.util.l;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;
import org.bouncycastle.util.w;

public class c implements DSAPrivateKey, InterfaceC13250p {

    public static final long f101139e = -4677259546958385734L;

    public BigInteger f101140b;

    public transient DSAParams f101141c;

    public transient m f101142d = new m();

    public c() {
    }

    private void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f101141c = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.f101142d = new m();
    }

    private void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f101141c.getP());
        objectOutputStream.writeObject(this.f101141c.getQ());
        objectOutputStream.writeObject(this.f101141c.getG());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101142d.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101142d.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101142d.d();
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
        return l.b(new C13486b(r.f95349s6, new C13508u(this.f101141c.getP(), this.f101141c.getQ(), this.f101141c.getG()).r()), new C14539s(getX()));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public DSAParams getParams() {
        return this.f101141c;
    }

    @Override
    public BigInteger getX() {
        return this.f101140b;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        BigInteger modPow = getParams().getG().modPow(this.f101140b, getParams().getP());
        stringBuffer.append("DSA Private Key [");
        stringBuffer.append(f.a(modPow, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(modPow.toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public c(v vVar) throws IOException {
        C13508u v10 = C13508u.v(vVar.y().x());
        this.f101140b = ((C14539s) vVar.E()).I();
        this.f101141c = new DSAParameterSpec(v10.x(), v10.y(), v10.u());
    }

    public c(A a10) {
        this.f101140b = a10.e();
        this.f101141c = new DSAParameterSpec(a10.d().b(), a10.d().c(), a10.d().a());
    }

    public c(DSAPrivateKey dSAPrivateKey) {
        this.f101140b = dSAPrivateKey.getX();
        this.f101141c = dSAPrivateKey.getParams();
    }

    public c(DSAPrivateKeySpec dSAPrivateKeySpec) {
        this.f101140b = dSAPrivateKeySpec.getX();
        this.f101141c = new DSAParameterSpec(dSAPrivateKeySpec.getP(), dSAPrivateKeySpec.getQ(), dSAPrivateKeySpec.getG());
    }
}
