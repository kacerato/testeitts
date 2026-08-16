package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import hi.C13508u;
import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import oh.B;
import oh.InterfaceC14520i;

public class b extends AlgorithmParametersSpi {

    public DSAParameterSpec f101138a;

    public boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
        if (cls == DSAParameterSpec.class || cls == AlgorithmParameterSpec.class) {
            return this.f101138a;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to DSA parameters object.");
    }

    @Override
    public byte[] engineGetEncoded() {
        try {
            return new C13508u(this.f101138a.getP(), this.f101138a.getQ(), this.f101138a.getG()).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding DSAParameters");
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
        if (!(algorithmParameterSpec instanceof DSAParameterSpec)) {
            throw new InvalidParameterSpecException("DSAParameterSpec required to initialise a DSA algorithm parameters object");
        }
        this.f101138a = (DSAParameterSpec) algorithmParameterSpec;
    }

    @Override
    public String engineToString() {
        return "DSA Parameters";
    }

    @Override
    public byte[] engineGetEncoded(String str) {
        if (a(str)) {
            return engineGetEncoded();
        }
        return null;
    }

    @Override
    public void engineInit(byte[] bArr) throws IOException {
        try {
            C13508u v10 = C13508u.v(B.B(bArr));
            this.f101138a = new DSAParameterSpec(v10.x(), v10.y(), v10.u());
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid DSA Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid DSA Parameter encoding.");
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
