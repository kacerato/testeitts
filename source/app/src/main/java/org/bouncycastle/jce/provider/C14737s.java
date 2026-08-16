package org.bouncycastle.jce.provider;

import Xi.F0;
import android.security.keystore.KeyProperties;
import hi.C13486b;
import java.io.IOException;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import oh.A0;

public class C14737s implements RSAPublicKey {

    public static final long f101831d = 2675817738516720772L;

    public BigInteger f101832b;

    public BigInteger f101833c;

    public C14737s(F0 f02) {
        this.f101832b = f02.f();
        this.f101833c = f02.d();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPublicKey)) {
            return false;
        }
        RSAPublicKey rSAPublicKey = (RSAPublicKey) obj;
        return getModulus().equals(rSAPublicKey.getModulus()) && getPublicExponent().equals(rSAPublicKey.getPublicExponent());
    }

    @Override
    public String getAlgorithm() {
        return KeyProperties.KEY_ALGORITHM_RSA;
    }

    @Override
    public byte[] getEncoded() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.c(new C13486b(Xh.t.f29017H0, A0.f98776c), new Xh.A(getModulus(), getPublicExponent()));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public BigInteger getModulus() {
        return this.f101832b;
    }

    @Override
    public BigInteger getPublicExponent() {
        return this.f101833c;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPublicExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("RSA Public Key");
        stringBuffer.append(f10);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("    public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public C14737s(hi.h0 h0Var) {
        try {
            Xh.A u10 = Xh.A.u(h0Var.A());
            this.f101832b = u10.x();
            this.f101833c = u10.y();
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    public C14737s(RSAPublicKey rSAPublicKey) {
        this.f101832b = rSAPublicKey.getModulus();
        this.f101833c = rSAPublicKey.getPublicExponent();
    }

    public C14737s(RSAPublicKeySpec rSAPublicKeySpec) {
        this.f101832b = rSAPublicKeySpec.getModulus();
        this.f101833c = rSAPublicKeySpec.getPublicExponent();
    }
}
