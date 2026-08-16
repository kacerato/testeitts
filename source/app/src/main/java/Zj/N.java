package Zj;

import Xi.C3360o0;
import ak.C3665e;
import bk.AbstractC3895a;
import ck.C4204B;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class N {

    public static class a extends AbstractC3895a {

        public static final String f31391a = N.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31391a;
            sb2.append(str);
            sb2.append("$TLS10");
            aVar.d("SecretKeyFactory.TLS10KDF", sb2.toString());
            aVar.d("SecretKeyFactory.TLS11KDF", str + "$TLS11");
            aVar.d("SecretKeyFactory.TLS12WITHSHA256KDF", str + "$TLS12withSHA256");
            aVar.d("SecretKeyFactory.TLS12WITHSHA384KDF", str + "$TLS12withSHA384");
            aVar.d("SecretKeyFactory.TLS12WITHSHA512KDF", str + "$TLS12withSHA512");
        }
    }

    public static final class b extends h {
        public b() {
            super("TLS10KDF");
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (keySpec instanceof C4204B) {
                return new SecretKeySpec(N.a((C4204B) keySpec), this.f32326b);
            }
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
    }

    public static final class c extends h {
        public c() {
            super("TLS11KDF");
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (keySpec instanceof C4204B) {
                return new SecretKeySpec(N.a((C4204B) keySpec), this.f32326b);
            }
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
    }

    public static class d extends h {

        public final Bi.I f31392d;

        public d(String str, Bi.I i10) {
            super(str);
            this.f31392d = i10;
        }

        public final byte[] a(C4204B c4204b, Bi.I i10) {
            byte[] B10 = org.bouncycastle.util.a.B(org.bouncycastle.util.w.j(c4204b.a()), c4204b.d());
            byte[] c10 = c4204b.c();
            byte[] bArr = new byte[c4204b.b()];
            N.d(i10, c10, B10, bArr);
            return bArr;
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (keySpec instanceof C4204B) {
                return new SecretKeySpec(a((C4204B) keySpec, this.f31392d), this.f32326b);
            }
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
    }

    public static final class e extends d {
        public e() {
            super("TLS12withSHA256KDF", new Si.k(Ii.L.x()));
        }
    }

    public static final class f extends d {
        public f() {
            super("TLS12withSHA384KDF", new Si.k(new Ii.M()));
        }
    }

    public static final class g extends d {
        public g() {
            super("TLS12withSHA512KDF", new Si.k(new Ii.O()));
        }
    }

    public static class h extends C3665e {
        public h(String str) {
            super(str, null);
        }
    }

    public static byte[] a(C4204B c4204b) {
        Si.k kVar = new Si.k(org.bouncycastle.crypto.util.g.b());
        Si.k kVar2 = new Si.k(org.bouncycastle.crypto.util.g.d());
        byte[] B10 = org.bouncycastle.util.a.B(org.bouncycastle.util.w.j(c4204b.a()), c4204b.d());
        byte[] c10 = c4204b.c();
        int length = (c10.length + 1) / 2;
        byte[] bArr = new byte[length];
        byte[] bArr2 = new byte[length];
        System.arraycopy(c10, 0, bArr, 0, length);
        System.arraycopy(c10, c10.length - length, bArr2, 0, length);
        int b10 = c4204b.b();
        byte[] bArr3 = new byte[b10];
        byte[] bArr4 = new byte[b10];
        d(kVar, bArr, B10, bArr3);
        d(kVar2, bArr2, B10, bArr4);
        for (int i10 = 0; i10 < b10; i10++) {
            bArr3[i10] = (byte) (bArr3[i10] ^ bArr4[i10]);
        }
        return bArr3;
    }

    public static void d(Bi.I i10, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        i10.a(new C3360o0(bArr));
        int d10 = i10.d();
        int length = ((bArr3.length + d10) - 1) / d10;
        int d11 = i10.d();
        byte[] bArr4 = new byte[d11];
        byte[] bArr5 = new byte[i10.d()];
        byte[] bArr6 = bArr2;
        int i11 = 0;
        while (i11 < length) {
            i10.update(bArr6, 0, bArr6.length);
            i10.c(bArr4, 0);
            i10.update(bArr4, 0, d11);
            i10.update(bArr2, 0, bArr2.length);
            i10.c(bArr5, 0);
            int i12 = d10 * i11;
            System.arraycopy(bArr5, 0, bArr3, i12, Math.min(d10, bArr3.length - i12));
            i11++;
            bArr6 = bArr4;
        }
    }
}
