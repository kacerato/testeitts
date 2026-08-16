package Mj;

import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHParameterSpec;
import oh.InterfaceC14520i;

public class b extends AlgorithmParametersSpi {

    public DHParameterSpec f15322a;

    public boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
        if (cls == DHParameterSpec.class || cls == AlgorithmParameterSpec.class) {
            return this.f15322a;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to DH parameters object.");
    }

    @Override
    public byte[] engineGetEncoded() {
        try {
            return new Xh.h(this.f15322a.getP(), this.f15322a.getG(), this.f15322a.getL()).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding DHParameters");
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
        if (!(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidParameterSpecException("DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object");
        }
        this.f15322a = (DHParameterSpec) algorithmParameterSpec;
    }

    @Override
    public String engineToString() {
        return "Diffie-Hellman Parameters";
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
            Xh.h v10 = Xh.h.v(bArr);
            this.f15322a = v10.x() != null ? new DHParameterSpec(v10.y(), v10.u(), v10.x().intValue()) : new DHParameterSpec(v10.y(), v10.u());
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid DH Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid DH Parameter encoding.");
        }
    }

    @Override
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (a(str)) {
            engineInit(bArr);
            return;
        }
        throw new IOException("Unknown parameter format " + str);
    }
}
