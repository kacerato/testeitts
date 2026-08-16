package Sj;

import Xh.v;
import Xh.y;
import Xi.G0;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.bouncycastle.util.w;

public class b extends c implements RSAPrivateCrtKey {

    public static final long f23535p = 7834723820638524718L;

    public BigInteger f23536j;

    public BigInteger f23537k;

    public BigInteger f23538l;

    public BigInteger f23539m;

    public BigInteger f23540n;

    public BigInteger f23541o;

    public b(v vVar) throws IOException {
        this(vVar.y(), y.y(vVar.E()));
    }

    private void h(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f23549g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f23548f = new G0(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient());
    }

    private void i(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
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
        return this.f23541o;
    }

    @Override
    public byte[] getEncoded() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.b(this.f23547e, new y(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public BigInteger getPrimeExponentP() {
        return this.f23539m;
    }

    @Override
    public BigInteger getPrimeExponentQ() {
        return this.f23540n;
    }

    @Override
    public BigInteger getPrimeP() {
        return this.f23537k;
    }

    @Override
    public BigInteger getPrimeQ() {
        return this.f23538l;
    }

    @Override
    public BigInteger getPublicExponent() {
        return this.f23536j;
    }

    @Override
    public int hashCode() {
        return (getModulus().hashCode() ^ getPublicExponent().hashCode()) ^ getPrivateExponent().hashCode();
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append("RSA Private CRT Key [");
        stringBuffer.append(l.b(getModulus()));
        stringBuffer.append("]");
        stringBuffer.append(",[");
        stringBuffer.append(l.a(getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("             modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("     public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public b(y yVar) {
        this(d.f23550f, yVar);
    }

    public b(G0 g02) {
        super(g02);
        this.f23536j = g02.l();
        this.f23537k = g02.k();
        this.f23538l = g02.m();
        this.f23539m = g02.i();
        this.f23540n = g02.j();
        this.f23541o = g02.n();
    }

    public b(C13486b c13486b, y yVar) {
        super(c13486b, new G0(yVar.A(), yVar.E(), yVar.D(), yVar.B(), yVar.C(), yVar.v(), yVar.x(), yVar.u()));
        this.f23544b = yVar.A();
        this.f23536j = yVar.E();
        this.f23545c = yVar.D();
        this.f23537k = yVar.B();
        this.f23538l = yVar.C();
        this.f23539m = yVar.v();
        this.f23540n = yVar.x();
        this.f23541o = yVar.u();
    }

    public b(C13486b c13486b, G0 g02) {
        super(c13486b, g02);
        this.f23536j = g02.l();
        this.f23537k = g02.k();
        this.f23538l = g02.m();
        this.f23539m = g02.i();
        this.f23540n = g02.j();
        this.f23541o = g02.n();
    }

    public b(RSAPrivateCrtKey rSAPrivateCrtKey) {
        super(new G0(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient()));
        this.f23544b = rSAPrivateCrtKey.getModulus();
        this.f23536j = rSAPrivateCrtKey.getPublicExponent();
        this.f23545c = rSAPrivateCrtKey.getPrivateExponent();
        this.f23537k = rSAPrivateCrtKey.getPrimeP();
        this.f23538l = rSAPrivateCrtKey.getPrimeQ();
        this.f23539m = rSAPrivateCrtKey.getPrimeExponentP();
        this.f23540n = rSAPrivateCrtKey.getPrimeExponentQ();
        this.f23541o = rSAPrivateCrtKey.getCrtCoefficient();
    }

    public b(RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec) {
        super(new G0(rSAPrivateCrtKeySpec.getModulus(), rSAPrivateCrtKeySpec.getPublicExponent(), rSAPrivateCrtKeySpec.getPrivateExponent(), rSAPrivateCrtKeySpec.getPrimeP(), rSAPrivateCrtKeySpec.getPrimeQ(), rSAPrivateCrtKeySpec.getPrimeExponentP(), rSAPrivateCrtKeySpec.getPrimeExponentQ(), rSAPrivateCrtKeySpec.getCrtCoefficient()));
        this.f23544b = rSAPrivateCrtKeySpec.getModulus();
        this.f23536j = rSAPrivateCrtKeySpec.getPublicExponent();
        this.f23545c = rSAPrivateCrtKeySpec.getPrivateExponent();
        this.f23537k = rSAPrivateCrtKeySpec.getPrimeP();
        this.f23538l = rSAPrivateCrtKeySpec.getPrimeQ();
        this.f23539m = rSAPrivateCrtKeySpec.getPrimeExponentP();
        this.f23540n = rSAPrivateCrtKeySpec.getPrimeExponentQ();
        this.f23541o = rSAPrivateCrtKeySpec.getCrtCoefficient();
    }
}
