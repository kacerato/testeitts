package Zj;

import ak.AbstractC3663c;
import bk.AbstractC3895a;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.PBEParameterSpec;
import oh.InterfaceC14520i;

public class C3526u {

    public static class a extends AbstractC3663c {

        public Xh.o f31450a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == PBEParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return new PBEParameterSpec(this.f31450a.x(), this.f31450a.v().intValue());
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PBKDF1 PBE parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() {
            try {
                return this.f31450a.s(InterfaceC14520i.f98892a);
            } catch (IOException e10) {
                throw new RuntimeException("Oooops! " + e10.toString());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PBKDF1 PBE parameters algorithm parameters object");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f31450a = new Xh.o(pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
        }

        @Override
        public String engineToString() {
            return "PBKDF1 Parameters";
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
            this.f31450a = Xh.o.u(bArr);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                throw new IOException("Unknown parameters format in PBKDF2 parameters object");
            }
            engineInit(bArr);
        }
    }

    public static class b extends AbstractC3895a {

        public static final String f31451a = C3526u.class.getName();

        @Override
        public void a(Tj.a aVar) {
            aVar.d("AlgorithmParameters.PBKDF1", f31451a + "$AlgParams");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) Xh.t.f29081a1), "PBKDF1");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) Xh.t.f29091d1), "PBKDF1");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) Xh.t.f29095e1), "PBKDF1");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) Xh.t.f29099f1), "PBKDF1");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) Xh.t.f29103g1), "PBKDF1");
        }
    }
}
