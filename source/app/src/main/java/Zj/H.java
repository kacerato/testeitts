package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.q0;
import Ti.C3092c;
import ak.AbstractC3662b;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;

public final class H {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[32];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("Shacal2");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Shacal2 parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "Shacal2 IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C3092c(new q0()), 256);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.e(new q0()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new q0();
            }
        }

        public e() {
            super(new a());
        }
    }

    public static class f extends C3664d {
        public f() {
            super("SHACAL-2", 128, new C2378j());
        }
    }

    public static class g extends L {

        public static final String f31386a = H.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31386a;
            sb2.append(str);
            sb2.append("$CMAC");
            aVar.d("Mac.Shacal-2CMAC", sb2.toString());
            aVar.d("Cipher.Shacal2", str + "$ECB");
            aVar.d("Cipher.SHACAL-2", str + "$ECB");
            aVar.d("KeyGenerator.Shacal2", str + "$KeyGen");
            aVar.d("AlgorithmParameterGenerator.Shacal2", str + "$AlgParamGen");
            aVar.d("AlgorithmParameters.Shacal2", str + "$AlgParams");
            aVar.d("KeyGenerator.SHACAL-2", str + "$KeyGen");
            aVar.d("AlgorithmParameterGenerator.SHACAL-2", str + "$AlgParamGen");
            aVar.d("AlgorithmParameters.SHACAL-2", str + "$AlgParams");
        }
    }
}
