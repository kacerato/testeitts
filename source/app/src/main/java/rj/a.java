package Rj;

import hk.s;
import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Enumeration;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14512e;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.K0;
import oh.M;

public class a extends AlgorithmParametersSpi {

    public s f22834a;

    public boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
        if (cls == s.class || cls == AlgorithmParameterSpec.class) {
            return this.f22834a;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
    }

    @Override
    public byte[] engineGetEncoded() {
        try {
            C14518h c14518h = new C14518h();
            if (this.f22834a.b() != null) {
                c14518h.a(new K0(false, 0, (InterfaceC14516g) new C0(this.f22834a.b())));
            }
            if (this.f22834a.c() != null) {
                c14518h.a(new K0(false, 1, (InterfaceC14516g) new C0(this.f22834a.c())));
            }
            c14518h.a(new C14539s(this.f22834a.d()));
            byte[] e10 = this.f22834a.e();
            if (e10 != null) {
                C14518h c14518h2 = new C14518h();
                c14518h2.a(new C14539s(this.f22834a.a()));
                c14518h2.a(new C0(e10));
                c14518h.a(new G0(c14518h2));
            }
            c14518h.a(this.f22834a.f() ? C14512e.f98877g : C14512e.f98876f);
            return new G0(c14518h).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding IESParameters");
        }
    }

    @Override
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        if (cls != null) {
            return b(cls);
        }
        throw new NullPointerException("argument to getParameterSpec must not be null");
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof s)) {
            throw new InvalidParameterSpecException("IESParameterSpec required to initialise a IES algorithm parameters object");
        }
        this.f22834a = (s) algorithmParameterSpec;
    }

    @Override
    public String engineToString() {
        return "IES Parameters";
    }

    @Override
    public byte[] engineGetEncoded(String str) {
        if (a(str) || str.equalsIgnoreCase("X.509")) {
            return engineGetEncoded();
        }
        return null;
    }

    @Override
    public void engineInit(byte[] bArr) throws IOException {
        try {
            E e10 = (E) B.B(bArr);
            if (e10.size() > 5) {
                throw new IOException("sequence too big");
            }
            Enumeration J10 = e10.J();
            BigInteger bigInteger = null;
            boolean z10 = false;
            BigInteger bigInteger2 = null;
            byte[] bArr2 = null;
            byte[] bArr3 = null;
            byte[] bArr4 = null;
            while (J10.hasMoreElements()) {
                Object nextElement = J10.nextElement();
                if (nextElement instanceof M) {
                    M R10 = M.R(nextElement);
                    if (R10.g() == 0) {
                        bArr2 = AbstractC14551y.G(R10, false).H();
                    } else if (R10.g() == 1) {
                        bArr3 = AbstractC14551y.G(R10, false).H();
                    }
                } else if (nextElement instanceof C14539s) {
                    bigInteger2 = C14539s.F(nextElement).I();
                } else if (nextElement instanceof E) {
                    E G10 = E.G(nextElement);
                    BigInteger I10 = C14539s.F(G10.I(0)).I();
                    bArr4 = AbstractC14551y.F(G10.I(1)).H();
                    bigInteger = I10;
                } else if (nextElement instanceof C14512e) {
                    z10 = C14512e.G(nextElement).J();
                }
            }
            this.f22834a = bigInteger != null ? new s(bArr2, bArr3, bigInteger2.intValue(), bigInteger.intValue(), bArr4, z10) : new s(bArr2, bArr3, bigInteger2.intValue(), -1, null, z10);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid IES Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid IES Parameter encoding.");
        }
    }

    @Override
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (a(str) || str.equalsIgnoreCase("X.509")) {
            engineInit(bArr);
            return;
        }
        throw new IOException("Unknown parameter format " + str);
    }
}
