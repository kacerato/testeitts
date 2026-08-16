package Sj;

import Xh.t;
import Xh.y;
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
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.util.w;

public class c implements RSAPrivateKey, InterfaceC13250p {

    public static final long f23542h = 5110188922551353628L;

    public static BigInteger f23543i = BigInteger.valueOf(0);

    public BigInteger f23544b;

    public BigInteger f23545c;

    public byte[] f23546d;

    public transient C13486b f23547e;

    public transient F0 f23548f;

    public transient org.bouncycastle.jcajce.provider.asymmetric.util.m f23549g;

    public c(F0 f02) {
        C13486b c13486b = d.f23550f;
        this.f23546d = g(c13486b);
        this.f23547e = c13486b;
        this.f23549g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f23544b = f02.f();
        this.f23545c = f02.d();
        this.f23548f = f02;
    }

    public static byte[] g(C13486b c13486b) {
        try {
            return c13486b.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    private void h(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if (this.f23546d == null) {
            this.f23546d = g(d.f23550f);
        }
        this.f23547e = C13486b.v(this.f23546d);
        this.f23549g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f23548f = new F0(true, this.f23544b, this.f23545c);
    }

    private void i(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f23549g.a(c14549x, interfaceC14516g);
    }

    public F0 b() {
        return this.f23548f;
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f23549g.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f23549g.d();
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
        return this.f23547e.u().A(t.f29045Q0) ? "RSASSA-PSS" : KeyProperties.KEY_ALGORITHM_RSA;
    }

    @Override
    public byte[] getEncoded() {
        C13486b c13486b = this.f23547e;
        BigInteger modulus = getModulus();
        BigInteger bigInteger = f23543i;
        BigInteger privateExponent = getPrivateExponent();
        BigInteger bigInteger2 = f23543i;
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.b(c13486b, new y(modulus, bigInteger, privateExponent, bigInteger2, bigInteger2, bigInteger2, bigInteger2, bigInteger2));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public BigInteger getModulus() {
        return this.f23544b;
    }

    @Override
    public BigInteger getPrivateExponent() {
        return this.f23545c;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPrivateExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append("RSA Private Key [");
        stringBuffer.append(l.b(getModulus()));
        stringBuffer.append("],[]");
        stringBuffer.append(f10);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public c(C13486b c13486b, y yVar) {
        C13486b c13486b2 = d.f23550f;
        this.f23546d = g(c13486b2);
        this.f23547e = c13486b2;
        this.f23549g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f23547e = c13486b;
        this.f23546d = g(c13486b);
        this.f23544b = yVar.A();
        this.f23545c = yVar.D();
        this.f23548f = new F0(true, this.f23544b, this.f23545c);
    }

    public c(C13486b c13486b, F0 f02) {
        C13486b c13486b2 = d.f23550f;
        this.f23546d = g(c13486b2);
        this.f23547e = c13486b2;
        this.f23549g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f23547e = c13486b;
        this.f23546d = g(c13486b);
        this.f23544b = f02.f();
        this.f23545c = f02.d();
        this.f23548f = f02;
    }

    public c(RSAPrivateKey rSAPrivateKey) {
        C13486b c13486b = d.f23550f;
        this.f23546d = g(c13486b);
        this.f23547e = c13486b;
        this.f23549g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f23544b = rSAPrivateKey.getModulus();
        this.f23545c = rSAPrivateKey.getPrivateExponent();
        this.f23548f = new F0(true, this.f23544b, this.f23545c);
    }

    public c(RSAPrivateKeySpec rSAPrivateKeySpec) {
        C13486b c13486b = d.f23550f;
        this.f23546d = g(c13486b);
        this.f23547e = c13486b;
        this.f23549g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f23544b = rSAPrivateKeySpec.getModulus();
        this.f23545c = rSAPrivateKeySpec.getPrivateExponent();
        this.f23548f = new F0(true, this.f23544b, this.f23545c);
    }
}
