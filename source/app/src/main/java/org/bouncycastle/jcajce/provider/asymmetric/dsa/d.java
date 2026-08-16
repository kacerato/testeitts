package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import Xi.B;
import hi.C13486b;
import hi.C13508u;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;
import ki.r;
import oh.A0;
import oh.C14539s;
import oh.InterfaceC14516g;
import org.bouncycastle.jcajce.provider.asymmetric.util.l;
import org.bouncycastle.util.w;

public class d implements DSAPublicKey {

    public static final long f101143e = 1752452449903495175L;

    public static BigInteger f101144f = BigInteger.valueOf(0);

    public BigInteger f101145b;

    public transient B f101146c;

    public transient DSAParams f101147d;

    public d(B b10) {
        this.f101145b = b10.e();
        this.f101147d = b10.d() != null ? new DSAParameterSpec(b10.d().b(), b10.d().c(), b10.d().a()) : null;
        this.f101146c = b10;
    }

    public B a() {
        return this.f101146c;
    }

    public final boolean b(InterfaceC14516g interfaceC14516g) {
        return (interfaceC14516g == null || A0.f98776c.A(interfaceC14516g.r())) ? false : true;
    }

    public final void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        BigInteger bigInteger = (BigInteger) objectInputStream.readObject();
        if (bigInteger.equals(f101144f)) {
            this.f101147d = null;
        } else {
            this.f101147d = new DSAParameterSpec(bigInteger, (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        }
        this.f101146c = new B(this.f101145b, f.e(this.f101147d));
    }

    public final void d(ObjectOutputStream objectOutputStream) throws IOException {
        BigInteger g10;
        objectOutputStream.defaultWriteObject();
        DSAParams dSAParams = this.f101147d;
        if (dSAParams == null) {
            g10 = f101144f;
        } else {
            objectOutputStream.writeObject(dSAParams.getP());
            objectOutputStream.writeObject(this.f101147d.getQ());
            g10 = this.f101147d.getG();
        }
        objectOutputStream.writeObject(g10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPublicKey)) {
            return false;
        }
        DSAPublicKey dSAPublicKey = (DSAPublicKey) obj;
        return this.f101147d != null ? getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() != null && getParams().getG().equals(dSAPublicKey.getParams().getG()) && getParams().getP().equals(dSAPublicKey.getParams().getP()) && getParams().getQ().equals(dSAPublicKey.getParams().getQ()) : getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() == null;
    }

    @Override
    public String getAlgorithm() {
        return "DSA";
    }

    @Override
    public byte[] getEncoded() {
        DSAParams dSAParams = this.f101147d;
        return dSAParams == null ? l.c(new C13486b(r.f95349s6), new C14539s(this.f101145b)) : l.c(new C13486b(r.f95349s6, new C13508u(dSAParams.getP(), this.f101147d.getQ(), this.f101147d.getG()).r()), new C14539s(this.f101145b));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public DSAParams getParams() {
        return this.f101147d;
    }

    @Override
    public BigInteger getY() {
        return this.f101145b;
    }

    public int hashCode() {
        return this.f101147d != null ? ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode() : getY().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append("DSA Public Key [");
        stringBuffer.append(f.a(this.f101145b, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(getY().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public d(h0 h0Var) {
        try {
            this.f101145b = ((C14539s) h0Var.A()).I();
            if (b(h0Var.u().x())) {
                C13508u v10 = C13508u.v(h0Var.u().x());
                this.f101147d = new DSAParameterSpec(v10.x(), v10.y(), v10.u());
            } else {
                this.f101147d = null;
            }
            this.f101146c = new B(this.f101145b, f.e(this.f101147d));
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public d(DSAPublicKey dSAPublicKey) {
        this.f101145b = dSAPublicKey.getY();
        this.f101147d = dSAPublicKey.getParams();
        this.f101146c = new B(this.f101145b, f.e(this.f101147d));
    }

    public d(DSAPublicKeySpec dSAPublicKeySpec) {
        this.f101145b = dSAPublicKeySpec.getY();
        this.f101147d = new DSAParameterSpec(dSAPublicKeySpec.getP(), dSAPublicKeySpec.getQ(), dSAPublicKeySpec.getG());
        this.f101146c = new B(this.f101145b, f.e(this.f101147d));
    }
}
