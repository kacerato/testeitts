package Zj;

import ak.AbstractC3663c;
import bk.AbstractC3895a;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.PBEParameterSpec;
import oh.InterfaceC14520i;

public class w {

    public static class a extends AbstractC3663c {

        public Xh.s f31457a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == PBEParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return new PBEParameterSpec(this.f31457a.u(), this.f31457a.x().intValue());
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PKCS12 PBE parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() {
            try {
                return this.f31457a.s(InterfaceC14520i.f98892a);
            } catch (IOException e10) {
                throw new RuntimeException("Oooops! " + e10.toString());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f31457a = new Xh.s(pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
        }

        @Override
        public String engineToString() {
            return "PKCS12 PBE Parameters";
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
            this.f31457a = Xh.s.v(oh.B.B(bArr));
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                throw new IOException("Unknown parameters format in PKCS12 PBE parameters object");
            }
            engineInit(bArr);
        }
    }

    public static class b extends AbstractC3895a {

        public static final String f31458a = w.class.getName();

        @Override
        public void a(Tj.a aVar) {
            aVar.d("AlgorithmParameters.PKCS12PBE", f31458a + "$AlgParams");
        }
    }
}
