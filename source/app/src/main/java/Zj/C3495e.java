package Zj;

import Bi.C2378j;
import Li.C2786k;
import Ti.C3092c;
import ak.AbstractC3662b;
import ak.AbstractC3663c;
import ak.C3664d;
import bk.AbstractC3895a;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import oh.C14549x;
import yj.C16196a;
import yj.InterfaceC16198c;

public final class C3495e {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[8];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("CAST5");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for CAST5 parameter generation.");
        }
    }

    public static class b extends AbstractC3663c {

        public byte[] f31414a;

        public int f31415b = 128;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return new IvParameterSpec(this.f31414a);
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to CAST5 parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() {
            byte[] bArr = this.f31414a;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
                throw new InvalidParameterSpecException("IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object");
            }
            this.f31414a = ((IvParameterSpec) algorithmParameterSpec).getIV();
        }

        @Override
        public String engineToString() {
            return "CAST5 Parameters";
        }

        @Override
        public byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                return new C16196a(engineGetEncoded(), this.f31415b).getEncoded();
            }
            if (str.equals("RAW")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            byte[] bArr2 = new byte[bArr.length];
            this.f31414a = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (a(str)) {
                C16196a v10 = C16196a.v(new oh.r(bArr).k());
                this.f31415b = v10.x();
                this.f31414a = v10.u();
            } else {
                if (!str.equals("RAW")) {
                    throw new IOException("Unknown parameters format in IV parameters object");
                }
                engineInit(bArr);
            }
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C3092c(new C2786k()), 64);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public d() {
            super(new C2786k());
        }
    }

    public static class C0831e extends C3664d {
        public C0831e() {
            super("CAST5", 128, new C2378j());
        }
    }

    public static class f extends AbstractC3895a {

        public static final String f31416a = C3495e.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31416a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.CAST5", sb2.toString());
            aVar.d("Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10", "CAST5");
            aVar.d("AlgorithmParameterGenerator.CAST5", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10", "CAST5");
            aVar.d("Cipher.CAST5", str + "$ECB");
            C14549x c14549x = InterfaceC16198c.f130394u;
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.d("KeyGenerator.CAST5", str + "$KeyGen");
            aVar.g("Alg.Alias.KeyGenerator", c14549x, "CAST5");
        }
    }
}
