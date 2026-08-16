package org.bouncycastle.jce.provider;

import Xi.G0;
import hi.C13486b;
import java.io.IOException;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import oh.A0;

public class C14736q extends r implements RSAPrivateCrtKey {

    public static final long f101819m = 7834723820638524718L;

    public BigInteger f101820g;

    public BigInteger f101821h;

    public BigInteger f101822i;

    public BigInteger f101823j;

    public BigInteger f101824k;

    public BigInteger f101825l;

    public C14736q(Xh.v vVar) throws IOException {
        this(Xh.y.y(vVar.E()));
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPrivateCrtKey)) {
            return false;
        }
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) obj;
        return getModulus().equals(rSAPrivateCrtKey.getModulus()) && getPublicExponent().equals(rSAPrivateCrtKey.getPublicExponent()) && getPrivateExponent().equals(rSAPrivateCrtKey.getPrivateExponent()) && getPrimeP().equals(rSAPrivateCrtKey.getPrimeP()) && getPrimeQ().equals(rSAPrivateCrtKey.getPrimeQ()) && getPrimeExponentP().equals(rSAPrivateCrtKey.getPrimeExponentP()) && getPrimeExponentQ().equals(rSAPrivateCrtKey.getPrimeExponentQ()) && getCrtCoefficient().equals(rSAPrivateCrtKey.getCrtCoefficient());
    }

    @Override
    public BigInteger getCrtCoefficient() {
        return this.f101825l;
    }

    @Override
    public byte[] getEncoded() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.b(new C13486b(Xh.t.f29017H0, A0.f98776c), new Xh.y(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public BigInteger getPrimeExponentP() {
        return this.f101823j;
    }

    @Override
    public BigInteger getPrimeExponentQ() {
        return this.f101824k;
    }

    @Override
    public BigInteger getPrimeP() {
        return this.f101821h;
    }

    @Override
    public BigInteger getPrimeQ() {
        return this.f101822i;
    }

    @Override
    public BigInteger getPublicExponent() {
        return this.f101820g;
    }

    @Override
    public int hashCode() {
        return (getModulus().hashCode() ^ getPublicExponent().hashCode()) ^ getPrivateExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("RSA Private CRT Key");
        stringBuffer.append(f10);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("    public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("   private exponent: ");
        stringBuffer.append(getPrivateExponent().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("             primeP: ");
        stringBuffer.append(getPrimeP().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("             primeQ: ");
        stringBuffer.append(getPrimeQ().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("     primeExponentP: ");
        stringBuffer.append(getPrimeExponentP().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("     primeExponentQ: ");
        stringBuffer.append(getPrimeExponentQ().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("     crtCoefficient: ");
        stringBuffer.append(getCrtCoefficient().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public C14736q(Xh.y yVar) {
        this.f101828b = yVar.A();
        this.f101820g = yVar.E();
        this.f101829c = yVar.D();
        this.f101821h = yVar.B();
        this.f101822i = yVar.C();
        this.f101823j = yVar.v();
        this.f101824k = yVar.x();
        this.f101825l = yVar.u();
    }

    public C14736q(G0 g02) {
        super(g02);
        this.f101820g = g02.l();
        this.f101821h = g02.k();
        this.f101822i = g02.m();
        this.f101823j = g02.i();
        this.f101824k = g02.j();
        this.f101825l = g02.n();
    }

    public C14736q(RSAPrivateCrtKey rSAPrivateCrtKey) {
        this.f101828b = rSAPrivateCrtKey.getModulus();
        this.f101820g = rSAPrivateCrtKey.getPublicExponent();
        this.f101829c = rSAPrivateCrtKey.getPrivateExponent();
        this.f101821h = rSAPrivateCrtKey.getPrimeP();
        this.f101822i = rSAPrivateCrtKey.getPrimeQ();
        this.f101823j = rSAPrivateCrtKey.getPrimeExponentP();
        this.f101824k = rSAPrivateCrtKey.getPrimeExponentQ();
        this.f101825l = rSAPrivateCrtKey.getCrtCoefficient();
    }

    public C14736q(RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec) {
        this.f101828b = rSAPrivateCrtKeySpec.getModulus();
        this.f101820g = rSAPrivateCrtKeySpec.getPublicExponent();
        this.f101829c = rSAPrivateCrtKeySpec.getPrivateExponent();
        this.f101821h = rSAPrivateCrtKeySpec.getPrimeP();
        this.f101822i = rSAPrivateCrtKeySpec.getPrimeQ();
        this.f101823j = rSAPrivateCrtKeySpec.getPrimeExponentP();
        this.f101824k = rSAPrivateCrtKeySpec.getPrimeExponentQ();
        this.f101825l = rSAPrivateCrtKeySpec.getCrtCoefficient();
    }
}
