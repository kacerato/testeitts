package ak;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;

public class C3669i extends AbstractC3663c {

    public byte[] f32337a;

    @Override
    public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
        if (cls == IvParameterSpec.class || cls == AlgorithmParameterSpec.class) {
            return new IvParameterSpec(this.f32337a);
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to IV parameters object.");
    }

    @Override
    public byte[] engineGetEncoded() throws IOException {
        return engineGetEncoded("ASN.1");
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
            throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
        }
        this.f32337a = ((IvParameterSpec) algorithmParameterSpec).getIV();
    }

    @Override
    public String engineToString() {
        return "IV Parameters";
    }

    @Override
    public byte[] engineGetEncoded(String str) throws IOException {
        if (a(str)) {
            return new C0(engineGetEncoded("RAW")).getEncoded();
        }
        if (str.equals("RAW")) {
            return org.bouncycastle.util.a.p(this.f32337a);
        }
        return null;
    }

    @Override
    public void engineInit(byte[] bArr) throws IOException {
        if (bArr.length % 8 != 0 && bArr[0] == 4 && bArr[1] == bArr.length - 2) {
            bArr = ((AbstractC14551y) B.B(bArr)).H();
        }
        this.f32337a = org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (!a(str)) {
            if (!str.equals("RAW")) {
                throw new IOException("Unknown parameters format in IV parameters object");
            }
            engineInit(bArr);
        } else {
            try {
                engineInit(((AbstractC14551y) B.B(bArr)).H());
            } catch (Exception e10) {
                throw new IOException("Exception decoding: " + ((Object) e10));
            }
        }
    }
}
