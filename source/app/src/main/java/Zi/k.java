package Zi;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2392y;
import Bi.r;
import Li.C2796v;
import aj.C3660a;
import java.security.SecureRandom;

public class k {

    public final SecureRandom f31338a;

    public final e f31339b;

    public byte[] f31340c;

    public int f31341d;

    public int f31342e;

    public static class a implements Zi.b {

        public final InterfaceC2374f f31343a;

        public final int f31344b;

        public final byte[] f31345c;

        public final byte[] f31346d;

        public final int f31347e;

        public a(InterfaceC2374f interfaceC2374f, int i10, byte[] bArr, byte[] bArr2, int i11) {
            this.f31343a = interfaceC2374f;
            this.f31344b = i10;
            this.f31345c = bArr;
            this.f31346d = bArr2;
            this.f31347e = i11;
        }

        @Override
        public aj.f a(d dVar) {
            return new C3660a(this.f31343a, this.f31344b, this.f31347e, dVar, this.f31346d, this.f31345c);
        }

        @Override
        public String getAlgorithm() {
            if (this.f31343a instanceof C2796v) {
                return "CTR-DRBG-3KEY-TDES";
            }
            return "CTR-DRBG-" + this.f31343a.b() + this.f31344b;
        }
    }

    public static class b implements Zi.b {

        public final I f31348a;

        public final byte[] f31349b;

        public final byte[] f31350c;

        public final int f31351d;

        public b(I i10, byte[] bArr, byte[] bArr2, int i11) {
            this.f31348a = i10;
            this.f31349b = bArr;
            this.f31350c = bArr2;
            this.f31351d = i11;
        }

        @Override
        public aj.f a(d dVar) {
            return new aj.d(this.f31348a, this.f31351d, dVar, this.f31350c, this.f31349b);
        }

        @Override
        public String getAlgorithm() {
            StringBuilder sb2;
            String b10;
            if (this.f31348a instanceof Si.k) {
                sb2 = new StringBuilder();
                sb2.append("HMAC-DRBG-");
                b10 = k.e(((Si.k) this.f31348a).f());
            } else {
                sb2 = new StringBuilder();
                sb2.append("HMAC-DRBG-");
                b10 = this.f31348a.b();
            }
            sb2.append(b10);
            return sb2.toString();
        }
    }

    public static class c implements Zi.b {

        public final InterfaceC2392y f31352a;

        public final byte[] f31353b;

        public final byte[] f31354c;

        public final int f31355d;

        public c(InterfaceC2392y interfaceC2392y, byte[] bArr, byte[] bArr2, int i10) {
            this.f31352a = interfaceC2392y;
            this.f31353b = bArr;
            this.f31354c = bArr2;
            this.f31355d = i10;
        }

        @Override
        public aj.f a(d dVar) {
            return new aj.e(this.f31352a, this.f31355d, dVar, this.f31354c, this.f31353b);
        }

        @Override
        public String getAlgorithm() {
            return "HASH-DRBG-" + k.e(this.f31352a);
        }
    }

    public k() {
        this(r.h(), false);
    }

    public static String e(InterfaceC2392y interfaceC2392y) {
        String b10 = interfaceC2392y.b();
        int indexOf = b10.indexOf(45);
        if (indexOf <= 0 || b10.startsWith("SHA3")) {
            return b10;
        }
        return b10.substring(0, indexOf) + b10.substring(indexOf + 1);
    }

    public j b(InterfaceC2374f interfaceC2374f, int i10, byte[] bArr, boolean z10) {
        return new j(this.f31338a, this.f31339b.get(this.f31342e), new a(interfaceC2374f, i10, bArr, this.f31340c, this.f31341d), z10);
    }

    public j c(I i10, byte[] bArr, boolean z10) {
        return new j(this.f31338a, this.f31339b.get(this.f31342e), new b(i10, bArr, this.f31340c, this.f31341d), z10);
    }

    public j d(InterfaceC2392y interfaceC2392y, byte[] bArr, boolean z10) {
        return new j(this.f31338a, this.f31339b.get(this.f31342e), new c(interfaceC2392y, bArr, this.f31340c, this.f31341d), z10);
    }

    public k f(int i10) {
        this.f31342e = i10;
        return this;
    }

    public k g(byte[] bArr) {
        this.f31340c = org.bouncycastle.util.a.p(bArr);
        return this;
    }

    public k h(int i10) {
        this.f31341d = i10;
        return this;
    }

    public k(e eVar) {
        this.f31341d = 256;
        this.f31342e = 256;
        this.f31338a = null;
        this.f31339b = eVar;
    }

    public k(SecureRandom secureRandom, boolean z10) {
        this.f31341d = 256;
        this.f31342e = 256;
        this.f31338a = secureRandom;
        this.f31339b = new Zi.a(secureRandom, z10);
    }
}
