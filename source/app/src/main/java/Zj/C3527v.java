package Zj;

import ak.AbstractC3663c;
import ak.C3661a;
import ak.C3665e;
import bk.AbstractC3895a;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.KeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import oh.C14549x;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.symmetric.util.d;
import yh.InterfaceC16192a;

public class C3527v {

    public static final Map f31452a;

    public static class a extends AbstractC3663c {

        public Xh.q f31453a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == PBEParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return new PBEParameterSpec(this.f31453a.z(), this.f31453a.v().intValue());
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PBKDF2 PBE parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() {
            try {
                return this.f31453a.s(InterfaceC14520i.f98892a);
            } catch (IOException e10) {
                throw new RuntimeException("Oooops! " + e10.toString());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PBKDF2 PBE parameters algorithm parameters object");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f31453a = new Xh.q(pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
        }

        @Override
        public String engineToString() {
            return "PBKDF2 Parameters";
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
            this.f31453a = Xh.q.u(oh.B.B(bArr));
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                throw new IOException("Unknown parameters format in PBKDF2 parameters object");
            }
            engineInit(bArr);
        }
    }

    public static class b extends C3665e {

        public int f31454d;

        public int f31455e;

        public b(String str, int i10) {
            this(str, i10, 1);
        }

        public final int a(C14549x c14549x) throws InvalidKeySpecException {
            Integer num = (Integer) C3527v.f31452a.get(c14549x);
            if (num != null) {
                return num.intValue();
            }
            throw new InvalidKeySpecException("Invalid KeySpec: unknown PRF algorithm " + ((Object) c14549x));
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof PBEKeySpec)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
            if (pBEKeySpec.getSalt() == null) {
                return new Hj.i(pBEKeySpec.getPassword(), this.f31454d == 1 ? Bi.M.ASCII : Bi.M.UTF8);
            }
            if (pBEKeySpec.getIterationCount() <= 0) {
                throw new InvalidKeySpecException("positive iteration count required: " + pBEKeySpec.getIterationCount());
            }
            if (pBEKeySpec.getKeyLength() <= 0) {
                throw new InvalidKeySpecException("positive key length required: " + pBEKeySpec.getKeyLength());
            }
            if (pBEKeySpec.getPassword().length == 0) {
                throw new IllegalArgumentException("password empty");
            }
            if (pBEKeySpec instanceof ck.v) {
                int a10 = a(((ck.v) pBEKeySpec).a().u());
                int keyLength = pBEKeySpec.getKeyLength();
                return new C3661a(this.f32326b, this.f32327c, this.f31454d, a10, keyLength, -1, pBEKeySpec, d.a.e(pBEKeySpec, this.f31454d, a10, keyLength));
            }
            int i10 = this.f31455e;
            int keyLength2 = pBEKeySpec.getKeyLength();
            return new C3661a(this.f32326b, this.f32327c, this.f31454d, i10, keyLength2, -1, pBEKeySpec, d.a.e(pBEKeySpec, this.f31454d, i10, keyLength2));
        }

        public b(String str, int i10, int i11) {
            super(str, Xh.t.f29107h1);
            this.f31454d = i10;
            this.f31455e = i11;
        }
    }

    public static class c extends AbstractC3895a {

        public static final String f31456a = C3527v.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31456a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.PBKDF2", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x = Xh.t.f29107h1;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), "PBKDF2");
            aVar.d("SecretKeyFactory.PBKDF2", str + "$PBKDF2withUTF8");
            aVar.d("Alg.Alias.SecretKeyFactory.PBKDF2WITHHMACSHA1", "PBKDF2");
            aVar.d("Alg.Alias.SecretKeyFactory.PBKDF2WITHHMACSHA1ANDUTF8", "PBKDF2");
            aVar.d("Alg.Alias.SecretKeyFactory." + ((Object) c14549x), "PBKDF2");
            aVar.d("SecretKeyFactory.PBKDF2WITHASCII", str + "$PBKDF2with8BIT");
            aVar.d("Alg.Alias.SecretKeyFactory.PBKDF2WITH8BIT", "PBKDF2WITHASCII");
            aVar.d("Alg.Alias.SecretKeyFactory.PBKDF2WITHHMACSHA1AND8BIT", "PBKDF2WITHASCII");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA224", str + "$PBKDF2withSHA224");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA256", str + "$PBKDF2withSHA256");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA384", str + "$PBKDF2withSHA384");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA512", str + "$PBKDF2withSHA512");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA3-224", str + "$PBKDF2withSHA3_224");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA3-256", str + "$PBKDF2withSHA3_256");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA3-384", str + "$PBKDF2withSHA3_384");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSHA3-512", str + "$PBKDF2withSHA3_512");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACGOST3411", str + "$PBKDF2withGOST3411");
            aVar.d("SecretKeyFactory.PBKDF2WITHHMACSM3", str + "$PBKDF2withSM3");
        }
    }

    public static class d extends b {
        public d() {
            super("PBKDF2", 1);
        }
    }

    public static class e extends b {
        public e() {
            super("PBKDF2", 5, 6);
        }
    }

    public static class f extends b {
        public f() {
            super("PBKDF2", 5, 7);
        }
    }

    public static class g extends b {
        public g() {
            super("PBKDF2", 5, 4);
        }
    }

    public static class h extends b {
        public h() {
            super("PBKDF2", 5, 8);
        }
    }

    public static class i extends b {
        public i() {
            super("PBKDF2", 5, 10);
        }
    }

    public static class j extends b {
        public j() {
            super("PBKDF2", 5, 11);
        }
    }

    public static class k extends b {
        public k() {
            super("PBKDF2", 5, 12);
        }
    }

    public static class l extends b {
        public l() {
            super("PBKDF2", 5, 13);
        }
    }

    public static class m extends b {
        public m() {
            super("PBKDF2", 5, 9);
        }
    }

    public static class n extends b {
        public n() {
            super("PBKDF2", 5, 14);
        }
    }

    public static class o extends b {
        public o() {
            super("PBKDF2", 5);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f31452a = hashMap;
        hashMap.put(InterfaceC16192a.f130271c, org.bouncycastle.util.k.j(6));
        hashMap.put(Xh.t.f29144w1, org.bouncycastle.util.k.j(1));
        hashMap.put(Xh.t.f29152z1, org.bouncycastle.util.k.j(4));
        hashMap.put(Xh.t.f29147x1, org.bouncycastle.util.k.j(7));
        hashMap.put(Xh.t.f29000A1, org.bouncycastle.util.k.j(8));
        hashMap.put(Xh.t.f29003B1, org.bouncycastle.util.k.j(9));
        hashMap.put(Sh.d.f23363p, org.bouncycastle.util.k.j(11));
        hashMap.put(Sh.d.f23361o, org.bouncycastle.util.k.j(10));
        hashMap.put(Sh.d.f23365q, org.bouncycastle.util.k.j(12));
        hashMap.put(Sh.d.f23366r, org.bouncycastle.util.k.j(13));
        hashMap.put(Fh.b.f6871e0, org.bouncycastle.util.k.j(14));
    }
}
