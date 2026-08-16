package org.bouncycastle.jce.provider;

import Xi.F0;
import android.security.keystore.KeyProperties;
import fk.InterfaceC13250p;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Enumeration;
import oh.A0;
import oh.C14549x;
import oh.InterfaceC14516g;

public class r implements RSAPrivateKey, InterfaceC13250p {

    public static final long f101826e = 5110188922551353628L;

    public static BigInteger f101827f = BigInteger.valueOf(0);

    public BigInteger f101828b;

    public BigInteger f101829c;

    public transient org.bouncycastle.jcajce.provider.asymmetric.util.m f101830d = new org.bouncycastle.jcajce.provider.asymmetric.util.m();

    public r() {
    }

    private void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f101828b = (BigInteger) objectInputStream.readObject();
        org.bouncycastle.jcajce.provider.asymmetric.util.m mVar = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101830d = mVar;
        mVar.f(objectInputStream);
        this.f101829c = (BigInteger) objectInputStream.readObject();
    }

    private void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.f101828b);
        this.f101830d.h(objectOutputStream);
        objectOutputStream.writeObject(this.f101829c);
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101830d.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101830d.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101830d.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RSAPrivateKey)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) obj;
        return getModulus().equals(rSAPrivateKey.getModulus()) && getPrivateExponent().equals(rSAPrivateKey.getPrivateExponent());
    }

    @Override
    public String getAlgorithm() {
        return KeyProperties.KEY_ALGORITHM_RSA;
    }

    @Override
    public byte[] getEncoded() {
        C13486b c13486b = new C13486b(Xh.t.f29017H0, A0.f98776c);
        BigInteger modulus = getModulus();
        BigInteger bigInteger = f101827f;
        BigInteger privateExponent = getPrivateExponent();
        BigInteger bigInteger2 = f101827f;
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.b(c13486b, new Xh.y(modulus, bigInteger, privateExponent, bigInteger2, bigInteger2, bigInteger2, bigInteger2, bigInteger2));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public BigInteger getModulus() {
        return this.f101828b;
    }

    @Override
    public BigInteger getPrivateExponent() {
        return this.f101829c;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPrivateExponent().hashCode();
    }

    public r(F0 f02) {
        this.f101828b = f02.f();
        this.f101829c = f02.d();
    }

    public r(RSAPrivateKey rSAPrivateKey) {
        this.f101828b = rSAPrivateKey.getModulus();
        this.f101829c = rSAPrivateKey.getPrivateExponent();
    }

    public r(RSAPrivateKeySpec rSAPrivateKeySpec) {
        this.f101828b = rSAPrivateKeySpec.getModulus();
        this.f101829c = rSAPrivateKeySpec.getPrivateExponent();
    }
}
