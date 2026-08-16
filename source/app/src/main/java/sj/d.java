package Sj;

import Xh.A;
import Xh.t;
import Xi.F0;
import android.security.keystore.KeyProperties;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import oh.A0;
import org.bouncycastle.util.w;

public class d implements RSAPublicKey {

    public static final C13486b f23550f = new C13486b(t.f29017H0, A0.f98776c);

    public static final long f23551g = 2675817738516720772L;

    public BigInteger f23552b;

    public BigInteger f23553c;

    public transient C13486b f23554d;

    public transient F0 f23555e;

    public d(F0 f02) {
        this(f23550f, f02);
    }

    public F0 a() {
        return this.f23555e;
    }

    public final void b(h0 h0Var) {
        try {
            A u10 = A.u(h0Var.A());
            this.f23554d = h0Var.u();
            this.f23552b = u10.x();
            this.f23553c = u10.y();
            this.f23555e = new F0(false, this.f23552b, this.f23553c);
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    public final void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        try {
            this.f23554d = C13486b.v(objectInputStream.readObject());
        } catch (Exception unused) {
            this.f23554d = f23550f;
        }
        this.f23555e = new F0(false, this.f23552b, this.f23553c);
    }

    public final void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (this.f23554d.equals(f23550f)) {
            return;
        }
        objectOutputStream.writeObject(this.f23554d.getEncoded());
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
        return this.f23554d.u().A(t.f29045Q0) ? "RSASSA-PSS" : KeyProperties.KEY_ALGORITHM_RSA;
    }

    @Override
    public byte[] getEncoded() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.c(this.f23554d, new A(getModulus(), getPublicExponent()));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public BigInteger getModulus() {
        return this.f23552b;
    }

    @Override
    public BigInteger getPublicExponent() {
        return this.f23553c;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPublicExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append("RSA Public Key [");
        stringBuffer.append(l.b(getModulus()));
        stringBuffer.append("]");
        stringBuffer.append(",[");
        stringBuffer.append(l.a(getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("        modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public d(C13486b c13486b, F0 f02) {
        this.f23554d = c13486b;
        this.f23552b = f02.f();
        this.f23553c = f02.d();
        this.f23555e = f02;
    }

    public d(h0 h0Var) {
        b(h0Var);
    }

    public d(RSAPublicKey rSAPublicKey) {
        this.f23554d = f23550f;
        this.f23552b = rSAPublicKey.getModulus();
        this.f23553c = rSAPublicKey.getPublicExponent();
        this.f23555e = new F0(false, this.f23552b, this.f23553c);
    }

    public d(RSAPublicKeySpec rSAPublicKeySpec) {
        this.f23554d = f23550f;
        this.f23552b = rSAPublicKeySpec.getModulus();
        this.f23553c = rSAPublicKeySpec.getPublicExponent();
        this.f23555e = new F0(false, this.f23552b, this.f23553c);
    }
}
