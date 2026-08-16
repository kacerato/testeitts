package aj;

import Bi.InterfaceC2392y;
import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.h;
import jk.i;
import jk.k;

public class c implements f {

    public static final int f32257A = 4096;

    public static final int f32258B = 4096;

    public static final int f32259C = 4096;

    public static final BigInteger f32260m;

    public static final BigInteger f32261n;

    public static final BigInteger f32262o;

    public static final BigInteger f32263p;

    public static final BigInteger f32264q;

    public static final BigInteger f32265r;

    public static final BigInteger f32266s;

    public static final BigInteger f32267t;

    public static final BigInteger f32268u;

    public static final BigInteger f32269v;

    public static final BigInteger f32270w;

    public static final BigInteger f32271x;

    public static final b[] f32272y;

    public static final long f32273z = 2147483648L;

    public InterfaceC2392y f32274a;

    public long f32275b;

    public Zi.d f32276c;

    public int f32277d;

    public int f32278e;

    public int f32279f;

    public AbstractC13875e.f f32280g;

    public i f32281h;

    public i f32282i;

    public byte[] f32283j;

    public int f32284k;

    public h f32285l;

    static {
        BigInteger bigInteger = new BigInteger("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", 16);
        f32260m = bigInteger;
        BigInteger bigInteger2 = new BigInteger("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5", 16);
        f32261n = bigInteger2;
        BigInteger bigInteger3 = new BigInteger("c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192", 16);
        f32262o = bigInteger3;
        BigInteger bigInteger4 = new BigInteger("b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046", 16);
        f32263p = bigInteger4;
        BigInteger bigInteger5 = new BigInteger("aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", 16);
        f32264q = bigInteger5;
        BigInteger bigInteger6 = new BigInteger("3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f", 16);
        f32265r = bigInteger6;
        BigInteger bigInteger7 = new BigInteger("8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065", 16);
        f32266s = bigInteger7;
        BigInteger bigInteger8 = new BigInteger("023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd", 16);
        f32267t = bigInteger8;
        BigInteger bigInteger9 = new BigInteger("c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", 16);
        f32268u = bigInteger9;
        BigInteger bigInteger10 = new BigInteger("11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650", 16);
        f32269v = bigInteger10;
        BigInteger bigInteger11 = new BigInteger("1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63", 16);
        f32270w = bigInteger11;
        BigInteger bigInteger12 = new BigInteger("1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de", 16);
        f32271x = bigInteger12;
        f32272y = r2;
        AbstractC13875e.f fVar = (AbstractC13875e.f) Sh.c.c("P-256").c();
        AbstractC13875e.f fVar2 = (AbstractC13875e.f) Sh.c.c("P-384").c();
        AbstractC13875e.f fVar3 = (AbstractC13875e.f) Sh.c.c("P-521").c();
        b[] bVarArr = {new b(128, fVar.i(bigInteger, bigInteger2), fVar.i(bigInteger3, bigInteger4), 1), new b(192, fVar2.i(bigInteger5, bigInteger6), fVar2.i(bigInteger7, bigInteger8), 1), new b(256, fVar3.i(bigInteger9, bigInteger10), fVar3.i(bigInteger11, bigInteger12), 1)};
    }

    public c(InterfaceC2392y interfaceC2392y, int i10, Zi.d dVar, byte[] bArr, byte[] bArr2) {
        this(f32272y, interfaceC2392y, i10, dVar, bArr, bArr2);
    }

    private byte[] d() {
        byte[] b10 = this.f32276c.b();
        if (b10.length >= (this.f32277d + 7) / 8) {
            return b10;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    @Override
    public int a(byte[] bArr, byte[] bArr2, boolean z10) {
        int length = bArr.length * 8;
        int length2 = bArr.length / this.f32279f;
        if (g.d(bArr2, 512)) {
            throw new IllegalArgumentException("Additional input too large");
        }
        if (this.f32275b + length2 > 2147483648L) {
            return -1;
        }
        if (z10) {
            b(bArr2);
            bArr2 = null;
        }
        BigInteger bigInteger = bArr2 != null ? new BigInteger(1, g(this.f32283j, g.c(this.f32274a, bArr2, this.f32278e))) : new BigInteger(1, this.f32283j);
        int i10 = 0;
        org.bouncycastle.util.a.e0(bArr, (byte) 0);
        int i11 = 0;
        for (int i12 = 0; i12 < length2; i12++) {
            bigInteger = e(this.f32281h, bigInteger);
            byte[] byteArray = e(this.f32282i, bigInteger).toByteArray();
            int length3 = byteArray.length;
            int i13 = this.f32279f;
            if (length3 > i13) {
                System.arraycopy(byteArray, byteArray.length - i13, bArr, i11, i13);
            } else {
                System.arraycopy(byteArray, 0, bArr, (i13 - byteArray.length) + i11, byteArray.length);
            }
            i11 += this.f32279f;
            this.f32275b++;
        }
        if (i11 < bArr.length) {
            bigInteger = e(this.f32281h, bigInteger);
            byte[] byteArray2 = e(this.f32282i, bigInteger).toByteArray();
            int length4 = bArr.length - i11;
            int length5 = byteArray2.length;
            int i14 = this.f32279f;
            if (length5 > i14) {
                i10 = byteArray2.length - i14;
            } else {
                i11 += i14 - byteArray2.length;
            }
            System.arraycopy(byteArray2, i10, bArr, i11, length4);
            this.f32275b++;
        }
        this.f32283j = org.bouncycastle.util.b.b(this.f32284k, e(this.f32281h, bigInteger));
        return length;
    }

    @Override
    public void b(byte[] bArr) {
        if (g.d(bArr, 512)) {
            throw new IllegalArgumentException("Additional input string too large");
        }
        this.f32283j = g.c(this.f32274a, org.bouncycastle.util.a.C(f(this.f32283j, this.f32278e), d(), bArr), this.f32278e);
        this.f32275b = 0L;
    }

    @Override
    public int c() {
        return this.f32279f * 8;
    }

    public final BigInteger e(i iVar, BigInteger bigInteger) {
        return this.f32285l.a(iVar, bigInteger).B().f().v();
    }

    public final byte[] f(byte[] bArr, int i10) {
        int i11 = i10 % 8;
        if (i11 == 0) {
            return bArr;
        }
        int i12 = 8 - i11;
        int length = bArr.length - 1;
        int i13 = 0;
        while (length >= 0) {
            int i14 = bArr[length] & 255;
            bArr[length] = (byte) ((i13 >> (8 - i12)) | (i14 << i12));
            length--;
            i13 = i14;
        }
        return bArr;
    }

    public final byte[] g(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            return bArr;
        }
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr3[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
        return bArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
    
        if (r2.f32281h == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0078, code lost:
    
        r3 = aj.g.c(r2.f32274a, r6, r2.f32278e);
        r2.f32283j = r3;
        r2.f32284k = r3.length;
        r2.f32275b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0089, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0091, code lost:
    
        throw new java.lang.IllegalArgumentException("security strength cannot be greater than 256 bits");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public c(b[] bVarArr, InterfaceC2392y interfaceC2392y, int i10, Zi.d dVar, byte[] bArr, byte[] bArr2) {
        this.f32285l = new k();
        this.f32274a = interfaceC2392y;
        this.f32276c = dVar;
        this.f32277d = i10;
        if (g.d(bArr, 512)) {
            throw new IllegalArgumentException("Personalization string too large");
        }
        if (dVar.d() < i10 || dVar.d() > 4096) {
            throw new IllegalArgumentException("EntropySource must provide between " + i10 + " and 4096 bits");
        }
        byte[] C10 = org.bouncycastle.util.a.C(d(), bArr2, bArr);
        int i11 = 0;
        while (true) {
            if (i11 == bVarArr.length) {
                break;
            }
            if (i10 > bVarArr[i11].e()) {
                i11++;
            } else {
                if (g.a(interfaceC2392y) < bVarArr[i11].e()) {
                    throw new IllegalArgumentException("Requested security strength is not supported by digest");
                }
                this.f32278e = bVarArr[i11].f();
                this.f32279f = bVarArr[i11].b() / 8;
                this.f32281h = bVarArr[i11].c();
                this.f32282i = bVarArr[i11].d();
            }
        }
    }
}
