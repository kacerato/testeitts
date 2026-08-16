package Pj;

import ak.AbstractC3663c;
import hk.j;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHParameterSpec;
import oh.B;
import oh.InterfaceC14520i;

public class b extends AbstractC3663c {

    public j f21540a;

    @Override
    public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
        if (cls == j.class || cls == AlgorithmParameterSpec.class) {
            return this.f21540a;
        }
        if (cls == DHParameterSpec.class) {
            return new DHParameterSpec(this.f21540a.b(), this.f21540a.a());
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
    }

    @Override
    public byte[] engineGetEncoded() {
        try {
            return new Bj.a(this.f21540a.b(), this.f21540a.a()).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding ElGamalParameters");
        }
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        boolean z10 = algorithmParameterSpec instanceof j;
        if (!z10 && !(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidParameterSpecException("DHParameterSpec required to initialise a ElGamal algorithm parameters object");
        }
        if (z10) {
            this.f21540a = (j) algorithmParameterSpec;
        } else {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
            this.f21540a = new j(dHParameterSpec.getP(), dHParameterSpec.getG());
        }
    }

    @Override
    public String engineToString() {
        return "ElGamal Parameters";
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
            Bj.a v10 = Bj.a.v(B.B(bArr));
            this.f21540a = new j(v10.x(), v10.u());
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid ElGamal Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid ElGamal Parameter encoding.");
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
