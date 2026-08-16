package org.bouncycastle.jce.provider;

import hi.C13486b;
import hi.C13508u;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;
import oh.A0;
import oh.C14539s;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class C14739u implements DSAPublicKey {

    public static final long f101838d = 1752452449903495175L;

    public BigInteger f101839b;

    public DSAParams f101840c;

    public C14739u(Xi.B b10) {
        this.f101839b = b10.e();
        this.f101840c = new DSAParameterSpec(b10.d().b(), b10.d().c(), b10.d().a());
    }

    public final boolean a(InterfaceC14516g interfaceC14516g) {
        return (interfaceC14516g == null || A0.f98776c.z(interfaceC14516g)) ? false : true;
    }

    public final void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f101839b = (BigInteger) objectInputStream.readObject();
        this.f101840c = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    public final void c(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.f101839b);
        objectOutputStream.writeObject(this.f101840c.getP());
        objectOutputStream.writeObject(this.f101840c.getQ());
        objectOutputStream.writeObject(this.f101840c.getG());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPublicKey)) {
            return false;
        }
        DSAPublicKey dSAPublicKey = (DSAPublicKey) obj;
        return getY().equals(dSAPublicKey.getY()) && getParams().getG().equals(dSAPublicKey.getParams().getG()) && getParams().getP().equals(dSAPublicKey.getParams().getP()) && getParams().getQ().equals(dSAPublicKey.getParams().getQ());
    }

    @Override
    public String getAlgorithm() {
        return "DSA";
    }

    @Override
    public byte[] getEncoded() {
        try {
            DSAParams dSAParams = this.f101840c;
            return dSAParams == null ? new hi.h0(new C13486b(ki.r.f95349s6), new C14539s(this.f101839b)).s(InterfaceC14520i.f98892a) : new hi.h0(new C13486b(ki.r.f95349s6, new C13508u(dSAParams.getP(), this.f101840c.getQ(), this.f101840c.getG())), new C14539s(this.f101839b)).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public DSAParams getParams() {
        return this.f101840c;
    }

    @Override
    public BigInteger getY() {
        return this.f101839b;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("DSA Public Key");
        stringBuffer.append(f10);
        stringBuffer.append("            y: ");
        stringBuffer.append(getY().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public C14739u(hi.h0 h0Var) {
        try {
            this.f101839b = ((C14539s) h0Var.A()).I();
            if (a(h0Var.u().x())) {
                C13508u v10 = C13508u.v(h0Var.u().x());
                this.f101840c = new DSAParameterSpec(v10.x(), v10.y(), v10.u());
            }
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public C14739u(BigInteger bigInteger, DSAParameterSpec dSAParameterSpec) {
        this.f101839b = bigInteger;
        this.f101840c = dSAParameterSpec;
    }

    public C14739u(DSAPublicKey dSAPublicKey) {
        this.f101839b = dSAPublicKey.getY();
        this.f101840c = dSAPublicKey.getParams();
    }

    public C14739u(DSAPublicKeySpec dSAPublicKeySpec) {
        this.f101839b = dSAPublicKeySpec.getY();
        this.f101840c = new DSAParameterSpec(dSAPublicKeySpec.getP(), dSAPublicKeySpec.getQ(), dSAPublicKeySpec.getG());
    }
}
