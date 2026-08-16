package Qj;

import hk.n;
import hk.p;
import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import oh.B;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14520i;

public class b extends AlgorithmParametersSpi {

    public n f22441a;

    public boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
        if (cls == p.class || cls == AlgorithmParameterSpec.class) {
            return this.f22441a;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to GOST3410 parameters object.");
    }

    @Override
    public byte[] engineGetEncoded() {
        try {
            return new yh.g(new C14549x(this.f22441a.b()), new C14549x(this.f22441a.d()), new C14549x(this.f22441a.c())).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding GOST3410Parameters");
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
        if (!(algorithmParameterSpec instanceof n)) {
            throw new InvalidParameterSpecException("GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object");
        }
        this.f22441a = (n) algorithmParameterSpec;
    }

    @Override
    public String engineToString() {
        return "GOST3410 Parameters";
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
            this.f22441a = n.e(yh.g.w((E) B.B(bArr)));
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid GOST3410 Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid GOST3410 Parameter encoding.");
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
