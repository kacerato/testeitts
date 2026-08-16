package Li;

import Bi.InterfaceC2379k;
import Ii.W;
import Ti.InterfaceC3091b;
import Xi.C3331a;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class s0 implements InterfaceC3091b {

    public static final int[] f14061B = {-1209970334, -1083090816, 951376470, 844003128, -1156479509, 1333558103, -809524792, -1028445891};

    public final int f14062A;

    public String f14063a;

    public final int[] f14064b;

    public final int[] f14065c;

    public final int[] f14066d;

    public byte[] f14067e;

    public boolean f14068f;

    public byte[] f14070h;

    public final int f14071i;

    public final byte[] f14072j;

    public final int f14074l;

    public final int f14075m;

    public final int f14076n;

    public final int f14077o;

    public final int f14078p;

    public final int f14079q;

    public final int f14080r;

    public final int f14081s;

    public final int f14082t;

    public final int f14083u;

    public final int f14084v;

    public final int f14085w;

    public final int f14086x;

    public final int f14087y;

    public final int f14088z;

    public c f14069g = c.Uninitialized;

    public int f14073k = 0;

    public static class a {

        public static final int[] f14089a;

        public static final int[] f14090b;

        static {
            int[] iArr = new int[c.values().length];
            f14090b = iArr;
            try {
                iArr[c.DecInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14090b[c.DecAad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14090b[c.DecData.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14090b[c.DecFinal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14090b[c.EncData.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14090b[c.EncFinal.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14090b[c.EncInit.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14090b[c.EncAad.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[b.values().length];
            f14089a = iArr2;
            try {
                iArr2[b.SCHWAEMM128_128.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14089a[b.SCHWAEMM256_128.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14089a[b.SCHWAEMM192_192.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14089a[b.SCHWAEMM256_256.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public enum b {
        SCHWAEMM128_128,
        SCHWAEMM256_128,
        SCHWAEMM192_192,
        SCHWAEMM256_256
    }

    public enum c {
        Uninitialized,
        EncInit,
        EncAad,
        EncData,
        EncFinal,
        DecInit,
        DecAad,
        DecData,
        DecFinal
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public s0(b bVar) {
        int i10;
        int i11 = a.f14089a[bVar.ordinal()];
        int i12 = 256;
        int i13 = 128;
        if (i11 != 1) {
            i10 = 384;
            if (i11 != 2) {
                if (i11 == 3) {
                    i12 = 192;
                    this.f14074l = 192;
                    this.f14075m = 192;
                    this.f14076n = 7;
                    this.f14077o = 11;
                    this.f14063a = "SCHWAEMM192-192";
                } else {
                    if (i11 != 4) {
                        throw new IllegalArgumentException("Invalid definition of SCHWAEMM instance");
                    }
                    this.f14074l = 256;
                    this.f14075m = 256;
                    this.f14076n = 8;
                    this.f14077o = 12;
                    this.f14063a = "SCHWAEMM256-256";
                    i10 = 512;
                }
                i13 = i12;
                int i14 = this.f14074l;
                int i15 = i14 >>> 5;
                this.f14078p = i15;
                this.f14079q = i14 >>> 3;
                this.f14080r = i12 >>> 5;
                int i16 = i12 >>> 3;
                this.f14081s = i16;
                int i17 = i10 >>> 5;
                this.f14082t = i17;
                int i18 = this.f14075m;
                int i19 = i18 >>> 5;
                this.f14083u = i19;
                int i20 = i18 >>> 3;
                this.f14084v = i20;
                int i21 = i13 >>> 6;
                int i22 = i13 >>> 5;
                this.f14085w = i19 <= i22 ? i22 - 1 : -1;
                int i23 = 1 << i21;
                this.f14086x = i23 << 24;
                this.f14087y = (i23 ^ 1) << 24;
                this.f14088z = (i23 ^ 2) << 24;
                this.f14062A = (i23 ^ 3) << 24;
                this.f14064b = new int[i17];
                this.f14065c = new int[i15];
                this.f14066d = new int[i19];
                int i24 = i20 + i16;
                this.f14071i = i24;
                this.f14072j = new byte[i24];
            }
            this.f14074l = 128;
            this.f14075m = 256;
            this.f14076n = 7;
            this.f14077o = 11;
            this.f14063a = "SCHWAEMM256-128";
        } else {
            this.f14074l = 128;
            this.f14075m = 128;
            this.f14076n = 7;
            this.f14077o = 10;
            this.f14063a = "SCHWAEMM128-128";
            i10 = 256;
        }
        i12 = 128;
        int i142 = this.f14074l;
        int i152 = i142 >>> 5;
        this.f14078p = i152;
        this.f14079q = i142 >>> 3;
        this.f14080r = i12 >>> 5;
        int i162 = i12 >>> 3;
        this.f14081s = i162;
        int i172 = i10 >>> 5;
        this.f14082t = i172;
        int i182 = this.f14075m;
        int i192 = i182 >>> 5;
        this.f14083u = i192;
        int i202 = i182 >>> 3;
        this.f14084v = i202;
        int i212 = i13 >>> 6;
        int i222 = i13 >>> 5;
        this.f14085w = i192 <= i222 ? i222 - 1 : -1;
        int i232 = 1 << i212;
        this.f14086x = i232 << 24;
        this.f14087y = (i232 ^ 1) << 24;
        this.f14088z = (i232 ^ 2) << 24;
        this.f14062A = (i232 ^ 3) << 24;
        this.f14064b = new int[i172];
        this.f14065c = new int[i152];
        this.f14066d = new int[i192];
        int i242 = i202 + i162;
        this.f14071i = i242;
        this.f14072j = new byte[i242];
    }

    public static void A(int[] iArr, int i10) {
        char c10 = 0;
        int i11 = iArr[0];
        char c11 = 1;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = iArr[8];
        int i20 = iArr[9];
        int i21 = iArr[10];
        int i22 = iArr[11];
        int i23 = iArr[12];
        int i24 = iArr[13];
        int i25 = iArr[14];
        int i26 = i10;
        int i27 = 0;
        int i28 = i20;
        int i29 = i22;
        int i30 = i24;
        int i31 = iArr[15];
        while (i27 < i26) {
            int[] iArr2 = f14061B;
            int i32 = i12 ^ iArr2[i27 & 7];
            int i33 = i14 ^ i27;
            int i34 = iArr2[c10];
            int i35 = i11 + org.bouncycastle.util.k.i(i32, 31);
            int i36 = i32 ^ org.bouncycastle.util.k.i(i35, 24);
            int i37 = (i35 ^ i34) + org.bouncycastle.util.k.i(i36, 17);
            int i38 = i36 ^ org.bouncycastle.util.k.i(i37, 17);
            int i39 = (i37 ^ i34) + i38;
            int i40 = i38 ^ org.bouncycastle.util.k.i(i39, 31);
            int i41 = (i39 ^ i34) + org.bouncycastle.util.k.i(i40, 24);
            int i42 = i40 ^ org.bouncycastle.util.k.i(i41, 16);
            int i43 = i41 ^ i34;
            int i44 = iArr2[c11];
            int i45 = i13 + org.bouncycastle.util.k.i(i33, 31);
            int i46 = i33 ^ org.bouncycastle.util.k.i(i45, 24);
            int i47 = (i45 ^ i44) + org.bouncycastle.util.k.i(i46, 17);
            int i48 = i46 ^ org.bouncycastle.util.k.i(i47, 17);
            int i49 = (i47 ^ i44) + i48;
            int i50 = i48 ^ org.bouncycastle.util.k.i(i49, 31);
            int i51 = (i49 ^ i44) + org.bouncycastle.util.k.i(i50, 24);
            int i52 = i50 ^ org.bouncycastle.util.k.i(i51, 16);
            int i53 = i51 ^ i44;
            int i54 = iArr2[2];
            int i55 = i15 + org.bouncycastle.util.k.i(i16, 31);
            int i56 = org.bouncycastle.util.k.i(i55, 24) ^ i16;
            int i57 = (i55 ^ i54) + org.bouncycastle.util.k.i(i56, 17);
            int i58 = i56 ^ org.bouncycastle.util.k.i(i57, 17);
            int i59 = (i57 ^ i54) + i58;
            int i60 = i58 ^ org.bouncycastle.util.k.i(i59, 31);
            int i61 = (i59 ^ i54) + org.bouncycastle.util.k.i(i60, 24);
            int i62 = i60 ^ org.bouncycastle.util.k.i(i61, 16);
            int i63 = i61 ^ i54;
            int i64 = iArr2[3];
            int i65 = i17 + org.bouncycastle.util.k.i(i18, 31);
            int i66 = org.bouncycastle.util.k.i(i65, 24) ^ i18;
            int i67 = (i65 ^ i64) + org.bouncycastle.util.k.i(i66, 17);
            int i68 = i66 ^ org.bouncycastle.util.k.i(i67, 17);
            int i69 = (i67 ^ i64) + i68;
            int i70 = i68 ^ org.bouncycastle.util.k.i(i69, 31);
            int i71 = (i69 ^ i64) + org.bouncycastle.util.k.i(i70, 24);
            int i72 = i70 ^ org.bouncycastle.util.k.i(i71, 16);
            int i73 = i71 ^ i64;
            int i74 = iArr2[4];
            int i75 = i19 + org.bouncycastle.util.k.i(i28, 31);
            int i76 = i28 ^ org.bouncycastle.util.k.i(i75, 24);
            int i77 = (i75 ^ i74) + org.bouncycastle.util.k.i(i76, 17);
            int i78 = i76 ^ org.bouncycastle.util.k.i(i77, 17);
            int i79 = (i77 ^ i74) + i78;
            int i80 = i78 ^ org.bouncycastle.util.k.i(i79, 31);
            int i81 = (i79 ^ i74) + org.bouncycastle.util.k.i(i80, 24);
            int i82 = i80 ^ org.bouncycastle.util.k.i(i81, 16);
            int i83 = iArr2[5];
            int i84 = i21 + org.bouncycastle.util.k.i(i29, 31);
            int i85 = i29 ^ org.bouncycastle.util.k.i(i84, 24);
            int i86 = (i84 ^ i83) + org.bouncycastle.util.k.i(i85, 17);
            int i87 = i85 ^ org.bouncycastle.util.k.i(i86, 17);
            int i88 = (i86 ^ i83) + i87;
            int i89 = i87 ^ org.bouncycastle.util.k.i(i88, 31);
            int i90 = (i88 ^ i83) + org.bouncycastle.util.k.i(i89, 24);
            int i91 = i89 ^ org.bouncycastle.util.k.i(i90, 16);
            int i92 = i90 ^ i83;
            int i93 = iArr2[6];
            int i94 = i30;
            int i95 = i23 + org.bouncycastle.util.k.i(i94, 31);
            int i96 = i94 ^ org.bouncycastle.util.k.i(i95, 24);
            int i97 = (i95 ^ i93) + org.bouncycastle.util.k.i(i96, 17);
            int i98 = i96 ^ org.bouncycastle.util.k.i(i97, 17);
            int i99 = (i97 ^ i93) + i98;
            int i100 = i98 ^ org.bouncycastle.util.k.i(i99, 31);
            int i101 = (i99 ^ i93) + org.bouncycastle.util.k.i(i100, 24);
            int i102 = i100 ^ org.bouncycastle.util.k.i(i101, 16);
            int i103 = i101 ^ i93;
            int i104 = iArr2[7];
            int i105 = i27;
            int i106 = i31;
            int i107 = i25 + org.bouncycastle.util.k.i(i106, 31);
            int i108 = i106 ^ org.bouncycastle.util.k.i(i107, 24);
            int i109 = (i107 ^ i104) + org.bouncycastle.util.k.i(i108, 17);
            int i110 = i108 ^ org.bouncycastle.util.k.i(i109, 17);
            int i111 = (i109 ^ i104) + i110;
            int i112 = i110 ^ org.bouncycastle.util.k.i(i111, 31);
            int i113 = (i111 ^ i104) + org.bouncycastle.util.k.i(i112, 24);
            int i114 = i112 ^ org.bouncycastle.util.k.i(i113, 16);
            int i115 = i113 ^ i104;
            int l10 = l(((i43 ^ i53) ^ i63) ^ i73);
            int l11 = l(((i42 ^ i52) ^ i62) ^ i72);
            int i116 = (i92 ^ i53) ^ l11;
            int i117 = (i91 ^ i52) ^ l10;
            int i118 = (i103 ^ i63) ^ l11;
            int i119 = (i62 ^ i102) ^ l10;
            int i120 = (i115 ^ i73) ^ l11;
            int i121 = (i114 ^ i72) ^ l10;
            int i122 = ((i81 ^ i74) ^ i43) ^ l11;
            i18 = l10 ^ (i82 ^ i42);
            int i123 = i105 + 1;
            i19 = i43;
            i30 = i62;
            i23 = i63;
            i31 = i72;
            i11 = i116;
            i25 = i73;
            i17 = i122;
            i14 = i119;
            i29 = i52;
            i28 = i42;
            i21 = i53;
            i12 = i117;
            i15 = i120;
            i16 = i121;
            c11 = 1;
            i26 = i10;
            i13 = i118;
            i27 = i123;
            c10 = 0;
        }
        iArr[c10] = i11;
        iArr[1] = i12;
        iArr[2] = i13;
        iArr[3] = i14;
        iArr[4] = i15;
        iArr[5] = i16;
        iArr[6] = i17;
        iArr[7] = i18;
        iArr[8] = i19;
        iArr[9] = i28;
        iArr[10] = i21;
        iArr[11] = i29;
        iArr[12] = i23;
        iArr[13] = i30;
        iArr[14] = i25;
        iArr[15] = i31;
    }

    public static void B(int[] iArr, int i10) {
        char c10 = 0;
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = 0;
        while (i19 < i10) {
            int[] iArr2 = f14061B;
            int i20 = i12 ^ iArr2[i19 & 7];
            int i21 = i14 ^ i19;
            int i22 = iArr2[c10];
            int i23 = i11 + org.bouncycastle.util.k.i(i20, 31);
            int i24 = i20 ^ org.bouncycastle.util.k.i(i23, 24);
            int i25 = (i23 ^ i22) + org.bouncycastle.util.k.i(i24, 17);
            int i26 = i24 ^ org.bouncycastle.util.k.i(i25, 17);
            int i27 = (i25 ^ i22) + i26;
            int i28 = i26 ^ org.bouncycastle.util.k.i(i27, 31);
            int i29 = (i27 ^ i22) + org.bouncycastle.util.k.i(i28, 24);
            int i30 = i28 ^ org.bouncycastle.util.k.i(i29, 16);
            int i31 = i29 ^ i22;
            int i32 = iArr2[1];
            int i33 = i13 + org.bouncycastle.util.k.i(i21, 31);
            int i34 = i21 ^ org.bouncycastle.util.k.i(i33, 24);
            int i35 = (i33 ^ i32) + org.bouncycastle.util.k.i(i34, 17);
            int i36 = i34 ^ org.bouncycastle.util.k.i(i35, 17);
            int i37 = (i35 ^ i32) + i36;
            int i38 = i36 ^ org.bouncycastle.util.k.i(i37, 31);
            int i39 = (i37 ^ i32) + org.bouncycastle.util.k.i(i38, 24);
            int i40 = i38 ^ org.bouncycastle.util.k.i(i39, 16);
            int i41 = i39 ^ i32;
            int i42 = iArr2[2];
            int i43 = i15 + org.bouncycastle.util.k.i(i16, 31);
            int i44 = i16 ^ org.bouncycastle.util.k.i(i43, 24);
            int i45 = (i43 ^ i42) + org.bouncycastle.util.k.i(i44, 17);
            int i46 = i44 ^ org.bouncycastle.util.k.i(i45, 17);
            int i47 = (i45 ^ i42) + i46;
            int i48 = i46 ^ org.bouncycastle.util.k.i(i47, 31);
            int i49 = (i47 ^ i42) + org.bouncycastle.util.k.i(i48, 24);
            int i50 = i48 ^ org.bouncycastle.util.k.i(i49, 16);
            int i51 = iArr2[3];
            int i52 = i17 + org.bouncycastle.util.k.i(i18, 31);
            int i53 = i18 ^ org.bouncycastle.util.k.i(i52, 24);
            int i54 = (i52 ^ i51) + org.bouncycastle.util.k.i(i53, 17);
            int i55 = org.bouncycastle.util.k.i(i54, 17) ^ i53;
            int i56 = (i54 ^ i51) + i55;
            int i57 = i55 ^ org.bouncycastle.util.k.i(i56, 31);
            int i58 = (i56 ^ i51) + org.bouncycastle.util.k.i(i57, 24);
            int i59 = i57 ^ org.bouncycastle.util.k.i(i58, 16);
            int i60 = i58 ^ i51;
            int l10 = l(i31 ^ i41);
            int l11 = l(i30 ^ i40);
            int i61 = (i60 ^ i41) ^ l11;
            int i62 = (i59 ^ i40) ^ l10;
            int i63 = l10 ^ (i50 ^ i30);
            i19++;
            i16 = i30;
            i17 = i41;
            i18 = i40;
            i14 = i63;
            i13 = ((i49 ^ i42) ^ i31) ^ l11;
            i12 = i62;
            i15 = i31;
            i11 = i61;
            c10 = 0;
        }
        iArr[c10] = i11;
        iArr[1] = i12;
        iArr[2] = i13;
        iArr[3] = i14;
        iArr[4] = i15;
        iArr[5] = i16;
        iArr[6] = i17;
        iArr[7] = i18;
    }

    public static int l(int i10) {
        return (i10 & 65535) ^ org.bouncycastle.util.k.i(i10, 16);
    }

    private void m() {
        c cVar;
        int i10 = a.f14090b[this.f14069g.ordinal()];
        if (i10 == 1) {
            cVar = c.DecAad;
        } else {
            if (i10 == 2) {
                return;
            }
            if (i10 == 6) {
                throw new IllegalStateException(b() + " cannot be reused for encryption");
            }
            if (i10 != 7) {
                if (i10 == 8) {
                    return;
                }
                throw new IllegalStateException(b() + " needs to be initialized");
            }
            cVar = c.EncAad;
        }
        this.f14069g = cVar;
    }

    private boolean n() {
        switch (a.f14090b[this.f14069g.ordinal()]) {
            case 1:
            case 2:
                o(c.DecData);
                return false;
            case 3:
                return false;
            case 4:
            default:
                throw new IllegalStateException(b() + " needs to be initialized");
            case 5:
                return true;
            case 6:
                throw new IllegalStateException(b() + " cannot be reused for encryption");
            case 7:
            case 8:
                o(c.EncData);
                return true;
        }
    }

    private void r(byte[] bArr, int i10) {
        int i11 = 0;
        while (true) {
            int i12 = this.f14083u;
            if (i11 >= i12 / 2) {
                w(this.f14064b, this.f14076n);
                return;
            }
            int i13 = (i12 / 2) + i11;
            int[] iArr = this.f14064b;
            int i14 = iArr[i11];
            int i15 = iArr[i13];
            int r10 = org.bouncycastle.util.p.r(bArr, (i11 * 4) + i10);
            int r11 = org.bouncycastle.util.p.r(bArr, (i13 * 4) + i10);
            int[] iArr2 = this.f14064b;
            int i16 = this.f14083u;
            iArr2[i11] = (r10 ^ i15) ^ iArr2[i16 + i11];
            iArr2[i13] = ((i15 ^ i14) ^ r11) ^ iArr2[i16 + (this.f14085w & i13)];
            i11++;
        }
    }

    private void s(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (i11 > bArr2.length - this.f14084v) {
            throw new OutputLengthException("output buffer too short");
        }
        int i12 = 0;
        while (true) {
            int i13 = this.f14083u;
            if (i12 >= i13 / 2) {
                w(this.f14064b, this.f14076n);
                this.f14068f = true;
                return;
            }
            int i14 = (i13 / 2) + i12;
            int[] iArr = this.f14064b;
            int i15 = iArr[i12];
            int i16 = iArr[i14];
            int i17 = i12 * 4;
            int r10 = org.bouncycastle.util.p.r(bArr, i10 + i17);
            int i18 = i14 * 4;
            int r11 = org.bouncycastle.util.p.r(bArr, i10 + i18);
            int[] iArr2 = this.f14064b;
            int i19 = this.f14083u;
            iArr2[i12] = ((i15 ^ i16) ^ r10) ^ iArr2[i19 + i12];
            iArr2[i14] = (i15 ^ r11) ^ iArr2[i19 + (this.f14085w & i14)];
            org.bouncycastle.util.p.m(r10 ^ i15, bArr2, i11 + i17);
            org.bouncycastle.util.p.m(r11 ^ i16, bArr2, i11 + i18);
            i12++;
        }
    }

    private void t(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (i11 > bArr2.length - this.f14084v) {
            throw new OutputLengthException("output buffer too short");
        }
        int i12 = 0;
        while (true) {
            int i13 = this.f14083u;
            if (i12 >= i13 / 2) {
                w(this.f14064b, this.f14076n);
                this.f14068f = true;
                return;
            }
            int i14 = (i13 / 2) + i12;
            int[] iArr = this.f14064b;
            int i15 = iArr[i12];
            int i16 = iArr[i14];
            int i17 = i12 * 4;
            int r10 = org.bouncycastle.util.p.r(bArr, i10 + i17);
            int i18 = i14 * 4;
            int r11 = org.bouncycastle.util.p.r(bArr, i10 + i18);
            int[] iArr2 = this.f14064b;
            int i19 = this.f14083u;
            iArr2[i12] = (i16 ^ r10) ^ iArr2[i19 + i12];
            iArr2[i14] = ((i15 ^ i16) ^ r11) ^ iArr2[i19 + (this.f14085w & i14)];
            org.bouncycastle.util.p.m(r10 ^ i15, bArr2, i11 + i17);
            org.bouncycastle.util.p.m(r11 ^ i16, bArr2, i11 + i18);
            i12++;
        }
    }

    private void v(boolean z10) {
        if (z10) {
            this.f14067e = null;
        }
        org.bouncycastle.util.a.n(this.f14072j);
        this.f14073k = 0;
        this.f14068f = false;
        switch (a.f14090b[this.f14069g.ordinal()]) {
            case 1:
            case 7:
                break;
            case 2:
            case 3:
            case 4:
                this.f14069g = c.DecInit;
                break;
            case 5:
            case 6:
            case 8:
                this.f14069g = c.EncFinal;
                return;
            default:
                throw new IllegalStateException(b() + " needs to be initialized");
        }
        System.arraycopy(this.f14066d, 0, this.f14064b, 0, this.f14083u);
        System.arraycopy(this.f14065c, 0, this.f14064b, this.f14083u, this.f14078p);
        w(this.f14064b, this.f14077o);
        byte[] bArr = this.f14070h;
        if (bArr != null) {
            j(bArr, 0, bArr.length);
        }
    }

    public static void w(int[] iArr, int i10) {
        int length = iArr.length;
        if (length == 8) {
            B(iArr, i10);
        } else if (length == 12) {
            y(iArr, i10);
        } else {
            if (length != 16) {
                throw new IllegalStateException();
            }
            A(iArr, i10);
        }
    }

    public static void x(W.b bVar, int[] iArr, int i10) {
        if (bVar == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        y(iArr, i10);
    }

    public static void y(int[] iArr, int i10) {
        char c10 = 0;
        int i11 = iArr[0];
        char c11 = 1;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = iArr[8];
        int i20 = iArr[9];
        int i21 = iArr[10];
        int i22 = 0;
        int i23 = i20;
        int i24 = iArr[11];
        while (i22 < i10) {
            int[] iArr2 = f14061B;
            int i25 = i12 ^ iArr2[i22 & 7];
            int i26 = i14 ^ i22;
            int i27 = iArr2[c10];
            int i28 = i11 + org.bouncycastle.util.k.i(i25, 31);
            int i29 = i25 ^ org.bouncycastle.util.k.i(i28, 24);
            int i30 = (i28 ^ i27) + org.bouncycastle.util.k.i(i29, 17);
            int i31 = i29 ^ org.bouncycastle.util.k.i(i30, 17);
            int i32 = (i30 ^ i27) + i31;
            int i33 = i31 ^ org.bouncycastle.util.k.i(i32, 31);
            int i34 = (i32 ^ i27) + org.bouncycastle.util.k.i(i33, 24);
            int i35 = i33 ^ org.bouncycastle.util.k.i(i34, 16);
            int i36 = i34 ^ i27;
            int i37 = iArr2[c11];
            int i38 = i13 + org.bouncycastle.util.k.i(i26, 31);
            int i39 = i26 ^ org.bouncycastle.util.k.i(i38, 24);
            int i40 = (i38 ^ i37) + org.bouncycastle.util.k.i(i39, 17);
            int i41 = i39 ^ org.bouncycastle.util.k.i(i40, 17);
            int i42 = (i40 ^ i37) + i41;
            int i43 = i41 ^ org.bouncycastle.util.k.i(i42, 31);
            int i44 = (i42 ^ i37) + org.bouncycastle.util.k.i(i43, 24);
            int i45 = i43 ^ org.bouncycastle.util.k.i(i44, 16);
            int i46 = i44 ^ i37;
            int i47 = iArr2[2];
            int i48 = i15 + org.bouncycastle.util.k.i(i16, 31);
            int i49 = org.bouncycastle.util.k.i(i48, 24) ^ i16;
            int i50 = (i48 ^ i47) + org.bouncycastle.util.k.i(i49, 17);
            int i51 = i49 ^ org.bouncycastle.util.k.i(i50, 17);
            int i52 = (i50 ^ i47) + i51;
            int i53 = i51 ^ org.bouncycastle.util.k.i(i52, 31);
            int i54 = (i52 ^ i47) + org.bouncycastle.util.k.i(i53, 24);
            int i55 = i53 ^ org.bouncycastle.util.k.i(i54, 16);
            int i56 = i54 ^ i47;
            int i57 = iArr2[3];
            int i58 = i17 + org.bouncycastle.util.k.i(i18, 31);
            int i59 = org.bouncycastle.util.k.i(i58, 24) ^ i18;
            int i60 = (i58 ^ i57) + org.bouncycastle.util.k.i(i59, 17);
            int i61 = i59 ^ org.bouncycastle.util.k.i(i60, 17);
            int i62 = (i60 ^ i57) + i61;
            int i63 = i61 ^ org.bouncycastle.util.k.i(i62, 31);
            int i64 = (i62 ^ i57) + org.bouncycastle.util.k.i(i63, 24);
            int i65 = i63 ^ org.bouncycastle.util.k.i(i64, 16);
            int i66 = i64 ^ i57;
            int i67 = iArr2[4];
            int i68 = i19 + org.bouncycastle.util.k.i(i23, 31);
            int i69 = i23 ^ org.bouncycastle.util.k.i(i68, 24);
            int i70 = (i68 ^ i67) + org.bouncycastle.util.k.i(i69, 17);
            int i71 = i69 ^ org.bouncycastle.util.k.i(i70, 17);
            int i72 = (i70 ^ i67) + i71;
            int i73 = i71 ^ org.bouncycastle.util.k.i(i72, 31);
            int i74 = (i72 ^ i67) + org.bouncycastle.util.k.i(i73, 24);
            int i75 = i73 ^ org.bouncycastle.util.k.i(i74, 16);
            int i76 = iArr2[5];
            int i77 = i21 + org.bouncycastle.util.k.i(i24, 31);
            int i78 = i24 ^ org.bouncycastle.util.k.i(i77, 24);
            int i79 = (i77 ^ i76) + org.bouncycastle.util.k.i(i78, 17);
            int i80 = org.bouncycastle.util.k.i(i79, 17) ^ i78;
            int i81 = (i79 ^ i76) + i80;
            int i82 = org.bouncycastle.util.k.i(i81, 31) ^ i80;
            int i83 = (i81 ^ i76) + org.bouncycastle.util.k.i(i82, 24);
            int i84 = i82 ^ org.bouncycastle.util.k.i(i83, 16);
            int l10 = l((i36 ^ i46) ^ i56);
            int l11 = l((i35 ^ i45) ^ i55);
            int i85 = ((i74 ^ i67) ^ i46) ^ l11;
            int i86 = ((i83 ^ i76) ^ i56) ^ l11;
            int i87 = (i84 ^ i55) ^ l10;
            int i88 = (i66 ^ i36) ^ l11;
            i16 = (i65 ^ i35) ^ l10;
            i22++;
            i18 = i35;
            i12 = (i75 ^ i45) ^ l10;
            i19 = i46;
            i13 = i86;
            i24 = i55;
            i21 = i56;
            i15 = i88;
            i14 = i87;
            i17 = i36;
            i11 = i85;
            c10 = 0;
            i23 = i45;
            c11 = 1;
        }
        iArr[c10] = i11;
        iArr[1] = i12;
        iArr[2] = i13;
        iArr[3] = i14;
        iArr[4] = i15;
        iArr[5] = i16;
        iArr[6] = i17;
        iArr[7] = i18;
        iArr[8] = i19;
        iArr[9] = i23;
        iArr[10] = i21;
        iArr[11] = i24;
    }

    public static void z(W.b bVar, int[] iArr, int i10) {
        if (bVar == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        A(iArr, i10);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        C3360o0 c3360o0;
        byte[] a10;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            c3360o0 = c3331a.b();
            a10 = c3331a.d();
            this.f14070h = c3331a.a();
            int c10 = c3331a.c();
            if (c10 != this.f14081s * 8) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + c10);
            }
        } else {
            if (!(interfaceC2379k instanceof Xi.w0)) {
                throw new IllegalArgumentException("invalid parameters passed to Sparkle");
            }
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            InterfaceC2379k b10 = w0Var.b();
            c3360o0 = b10 instanceof C3360o0 ? (C3360o0) b10 : null;
            a10 = w0Var.a();
            this.f14070h = null;
        }
        if (c3360o0 == null) {
            throw new IllegalArgumentException("Sparkle init parameters must include a key");
        }
        int i10 = this.f14078p * 4;
        if (i10 != c3360o0.c()) {
            throw new IllegalArgumentException(this.f14063a + " requires exactly " + i10 + " bytes of key");
        }
        int i11 = this.f14083u * 4;
        if (a10 == null || i11 != a10.length) {
            throw new IllegalArgumentException(this.f14063a + " requires exactly " + i11 + " bytes of IV");
        }
        org.bouncycastle.util.p.s(c3360o0.b(), 0, this.f14065c);
        org.bouncycastle.util.p.s(a10, 0, this.f14066d);
        Bi.r.a(new Hi.c(b(), 128, interfaceC2379k, x0.a(z10)));
        this.f14069g = z10 ? c.EncInit : c.DecInit;
        reset();
    }

    @Override
    public String b() {
        return this.f14063a;
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        int i11;
        int i12;
        boolean n10 = n();
        int i13 = this.f14073k;
        int i14 = this.f14081s;
        if (n10) {
            i11 = i13 + i14;
        } else {
            if (i13 < i14) {
                throw new InvalidCipherTextException("data too short");
            }
            i11 = i13 - i14;
            this.f14073k = i11;
        }
        if (i10 > bArr.length - i11) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f14068f || this.f14073k > 0) {
            int[] iArr = this.f14064b;
            int i15 = this.f14082t - 1;
            iArr[i15] = iArr[i15] ^ (this.f14073k < this.f14084v ? this.f14088z : this.f14062A);
            int[] iArr2 = new int[this.f14083u];
            int i16 = 0;
            while (true) {
                i12 = this.f14073k;
                if (i16 >= i12) {
                    break;
                }
                int i17 = i16 >>> 2;
                iArr2[i17] = iArr2[i17] | ((this.f14072j[i16] & 255) << ((i16 & 3) << 3));
                i16++;
            }
            if (i12 < this.f14084v) {
                if (!n10) {
                    int i18 = (i12 & 3) << 3;
                    int i19 = i12 >>> 2;
                    int i20 = iArr2[i19];
                    int[] iArr3 = this.f14064b;
                    iArr2[i19] = ((iArr3[i12 >>> 2] >>> i18) << i18) | i20;
                    int i21 = (i12 >>> 2) + 1;
                    System.arraycopy(iArr3, i21, iArr2, i21, this.f14083u - i21);
                }
                int i22 = this.f14073k;
                int i23 = i22 >>> 2;
                iArr2[i23] = (128 << ((i22 & 3) << 3)) ^ iArr2[i23];
            }
            int i24 = 0;
            while (true) {
                int i25 = this.f14083u;
                if (i24 >= i25 / 2) {
                    break;
                }
                int i26 = (i25 / 2) + i24;
                int[] iArr4 = this.f14064b;
                int i27 = iArr4[i24];
                int i28 = iArr4[i26];
                if (n10) {
                    iArr4[i24] = (iArr2[i24] ^ i28) ^ iArr4[i25 + i24];
                    iArr4[i26] = iArr4[i25 + (this.f14085w & i26)] ^ ((i27 ^ i28) ^ iArr2[i26]);
                } else {
                    iArr4[i24] = ((i27 ^ i28) ^ iArr2[i24]) ^ iArr4[i25 + i24];
                    iArr4[i26] = iArr4[i25 + (this.f14085w & i26)] ^ (iArr2[i26] ^ i27);
                }
                iArr2[i24] = iArr2[i24] ^ i27;
                iArr2[i26] = iArr2[i26] ^ i28;
                i24++;
            }
            int i29 = 0;
            while (i29 < this.f14073k) {
                bArr[i10] = (byte) (iArr2[i29 >>> 2] >>> ((i29 & 3) << 3));
                i29++;
                i10++;
            }
            w(this.f14064b, this.f14077o);
        }
        for (int i30 = 0; i30 < this.f14078p; i30++) {
            int[] iArr5 = this.f14064b;
            int i31 = this.f14083u + i30;
            iArr5[i31] = iArr5[i31] ^ this.f14065c[i30];
        }
        byte[] bArr2 = new byte[this.f14081s];
        this.f14067e = bArr2;
        org.bouncycastle.util.p.n(this.f14064b, this.f14083u, this.f14080r, bArr2, 0);
        if (n10) {
            System.arraycopy(this.f14067e, 0, bArr, i10, this.f14081s);
        } else if (!org.bouncycastle.util.a.H(this.f14081s, this.f14067e, 0, this.f14072j, this.f14073k)) {
            throw new InvalidCipherTextException(this.f14063a + " mac does not match");
        }
        v(!n10);
        return i11;
    }

    @Override
    public byte[] e() {
        return this.f14067e;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        int i13;
        int i14;
        if (i10 > bArr.length - i11) {
            throw new DataLengthException("input buffer too short");
        }
        if (n()) {
            int i15 = this.f14073k;
            if (i15 > 0) {
                int i16 = this.f14084v - i15;
                if (i11 <= i16) {
                    System.arraycopy(bArr, i10, this.f14072j, i15, i11);
                    this.f14073k += i11;
                    return 0;
                }
                System.arraycopy(bArr, i10, this.f14072j, i15, i16);
                i10 += i16;
                i11 -= i16;
                t(this.f14072j, 0, bArr2, i12);
                i14 = this.f14084v;
            } else {
                i14 = 0;
            }
            while (i11 > this.f14084v) {
                t(bArr, i10, bArr2, i12 + i14);
                int i17 = this.f14084v;
                i10 += i17;
                i11 -= i17;
                i14 += i17;
            }
            System.arraycopy(bArr, i10, this.f14072j, 0, i11);
            this.f14073k = i11;
            return i14;
        }
        int i18 = this.f14071i;
        int i19 = this.f14073k;
        int i20 = i18 - i19;
        if (i11 <= i20) {
            System.arraycopy(bArr, i10, this.f14072j, i19, i11);
            this.f14073k += i11;
            return 0;
        }
        if (i19 > this.f14084v) {
            s(this.f14072j, 0, bArr2, i12);
            int i21 = this.f14073k;
            int i22 = this.f14084v;
            int i23 = i21 - i22;
            this.f14073k = i23;
            byte[] bArr3 = this.f14072j;
            System.arraycopy(bArr3, i22, bArr3, 0, i23);
            i13 = this.f14084v;
            if (i11 <= i20 + i13) {
                System.arraycopy(bArr, i10, this.f14072j, this.f14073k, i11);
                this.f14073k += i11;
                return i13;
            }
        } else {
            i13 = 0;
        }
        int i24 = this.f14084v;
        int i25 = this.f14073k;
        int i26 = i24 - i25;
        System.arraycopy(bArr, i10, this.f14072j, i25, i26);
        i10 += i26;
        i11 -= i26;
        s(this.f14072j, 0, bArr2, i12 + i13);
        i14 = i13 + this.f14084v;
        while (i11 > this.f14071i) {
            s(bArr, i10, bArr2, i12 + i14);
            int i27 = this.f14084v;
            i10 += i27;
            i11 -= i27;
            i14 += i27;
        }
        System.arraycopy(bArr, i10, this.f14072j, 0, i11);
        this.f14073k = i11;
        return i14;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    @Override
    public int g(int i10) {
        int i11;
        int max = Math.max(0, i10) - 1;
        switch (a.f14090b[this.f14069g.ordinal()]) {
            case 3:
            case 4:
                max += this.f14073k;
            case 1:
            case 2:
                i11 = max - this.f14081s;
                max = Math.max(0, i11);
                break;
            case 5:
            case 6:
                i11 = max + this.f14073k;
                max = Math.max(0, i11);
                break;
        }
        return max - (max % this.f14084v);
    }

    @Override
    public int h(int i10) {
        int max = Math.max(0, i10);
        switch (a.f14090b[this.f14069g.ordinal()]) {
            case 1:
            case 2:
                return Math.max(0, max - this.f14081s);
            case 3:
            case 4:
                return Math.max(0, (max + this.f14073k) - this.f14081s);
            case 5:
            case 6:
                return max + this.f14073k + this.f14081s;
            default:
                return max + this.f14081s;
        }
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException {
        return f(new byte[]{b10}, 0, 1, bArr, i10);
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        if (i10 > bArr.length - i11) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 <= 0) {
            return;
        }
        m();
        int i12 = this.f14073k;
        if (i12 > 0) {
            int i13 = this.f14084v - i12;
            if (i11 <= i13) {
                System.arraycopy(bArr, i10, this.f14072j, i12, i11);
                this.f14073k += i11;
                return;
            } else {
                System.arraycopy(bArr, i10, this.f14072j, i12, i13);
                i10 += i13;
                i11 -= i13;
                r(this.f14072j, 0);
            }
        }
        while (i11 > this.f14084v) {
            r(bArr, i10);
            int i14 = this.f14084v;
            i10 += i14;
            i11 -= i14;
        }
        System.arraycopy(bArr, i10, this.f14072j, 0, i11);
        this.f14073k = i11;
    }

    @Override
    public void k(byte b10) {
        m();
        if (this.f14073k == this.f14084v) {
            r(this.f14072j, 0);
            this.f14073k = 0;
        }
        byte[] bArr = this.f14072j;
        int i10 = this.f14073k;
        this.f14073k = i10 + 1;
        bArr[i10] = b10;
    }

    public final void o(c cVar) {
        int i10 = a.f14090b[this.f14069g.ordinal()];
        if (i10 == 2 || i10 == 8) {
            u();
        }
        this.f14073k = 0;
        this.f14069g = cVar;
    }

    public int p() {
        return this.f14084v;
    }

    public int q() {
        return this.f14079q;
    }

    @Override
    public void reset() {
        v(true);
    }

    public final void u() {
        int i10 = this.f14073k;
        int i11 = 0;
        if (i10 < this.f14084v) {
            int[] iArr = this.f14064b;
            int i12 = this.f14082t - 1;
            iArr[i12] = iArr[i12] ^ this.f14086x;
            this.f14072j[i10] = Byte.MIN_VALUE;
            while (true) {
                int i13 = this.f14073k + 1;
                this.f14073k = i13;
                if (i13 >= this.f14084v) {
                    break;
                } else {
                    this.f14072j[i13] = 0;
                }
            }
        } else {
            int[] iArr2 = this.f14064b;
            int i14 = this.f14082t - 1;
            iArr2[i14] = iArr2[i14] ^ this.f14087y;
        }
        while (true) {
            int i15 = this.f14083u;
            if (i11 >= i15 / 2) {
                w(this.f14064b, this.f14077o);
                return;
            }
            int i16 = (i15 / 2) + i11;
            int[] iArr3 = this.f14064b;
            int i17 = iArr3[i11];
            int i18 = iArr3[i16];
            int r10 = org.bouncycastle.util.p.r(this.f14072j, i11 * 4);
            int r11 = org.bouncycastle.util.p.r(this.f14072j, i16 * 4);
            int[] iArr4 = this.f14064b;
            int i19 = this.f14083u;
            iArr4[i11] = (r10 ^ i18) ^ iArr4[i19 + i11];
            iArr4[i16] = ((i18 ^ i17) ^ r11) ^ iArr4[i19 + (this.f14085w & i16)];
            i11++;
        }
    }
}
