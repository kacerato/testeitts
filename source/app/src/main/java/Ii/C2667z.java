package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;
import android.security.keystore.KeyProperties;

public class C2667z extends AbstractC2658p implements InterfaceC2653k {

    public static final int f10020A = 15;

    public static final int f10021B = 21;

    public static final int f10022l = 16;

    public static final int f10023m = 7;

    public static final int f10024n = 12;

    public static final int f10025o = 17;

    public static final int f10026p = 22;

    public static final int f10027q = 5;

    public static final int f10028r = 9;

    public static final int f10029s = 14;

    public static final int f10030t = 20;

    public static final int f10031u = 4;

    public static final int f10032v = 11;

    public static final int f10033w = 16;

    public static final int f10034x = 23;

    public static final int f10035y = 6;

    public static final int f10036z = 10;

    public int f10037f;

    public int f10038g;

    public int f10039h;

    public int f10040i;

    public int[] f10041j;

    public int f10042k;

    public C2667z() {
        this(EnumC2383o.ANY);
    }

    private int q(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    private int r(int i10, int i11, int i12) {
        return (i10 & i12) | (i11 & (~i12));
    }

    private int s(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    private int v(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    @Override
    public byte[] a() {
        int i10 = this.f10042k * 4;
        byte[] bArr = new byte[i10 + 37];
        super.m(bArr);
        org.bouncycastle.util.p.h(this.f10037f, bArr, 16);
        org.bouncycastle.util.p.h(this.f10038g, bArr, 20);
        org.bouncycastle.util.p.h(this.f10039h, bArr, 24);
        org.bouncycastle.util.p.h(this.f10040i, bArr, 28);
        org.bouncycastle.util.p.h(this.f10042k, bArr, 32);
        for (int i11 = 0; i11 != this.f10042k; i11++) {
            org.bouncycastle.util.p.h(this.f10041j[i11], bArr, (i11 * 4) + 36);
        }
        bArr[i10 + 36] = (byte) this.f9919a.ordinal();
        return bArr;
    }

    @Override
    public String b() {
        return KeyProperties.DIGEST_MD5;
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.m(this.f10037f, bArr, i10);
        org.bouncycastle.util.p.m(this.f10038g, bArr, i10 + 4);
        org.bouncycastle.util.p.m(this.f10039h, bArr, i10 + 8);
        org.bouncycastle.util.p.m(this.f10040i, bArr, i10 + 12);
        reset();
        return 16;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new C2667z(this);
    }

    @Override
    public int f() {
        return 16;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        u((C2667z) nVar);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.b(this, this.f9919a);
    }

    @Override
    public void n() {
        int i10 = this.f10037f;
        int i11 = this.f10038g;
        int i12 = this.f10039h;
        int i13 = this.f10040i;
        int v10 = v(((i10 + q(i11, i12, i13)) + this.f10041j[0]) - 680876936, 7) + i11;
        int v11 = v(((i13 + q(v10, i11, i12)) + this.f10041j[1]) - 389564586, 12) + v10;
        int v12 = v(i12 + q(v11, v10, i11) + this.f10041j[2] + 606105819, 17) + v11;
        int v13 = v(((i11 + q(v12, v11, v10)) + this.f10041j[3]) - 1044525330, 22) + v12;
        int v14 = v(((v10 + q(v13, v12, v11)) + this.f10041j[4]) - 176418897, 7) + v13;
        int v15 = v(v11 + q(v14, v13, v12) + this.f10041j[5] + 1200080426, 12) + v14;
        int v16 = v(((v12 + q(v15, v14, v13)) + this.f10041j[6]) - 1473231341, 17) + v15;
        int v17 = v(((v13 + q(v16, v15, v14)) + this.f10041j[7]) - 45705983, 22) + v16;
        int v18 = v(v14 + q(v17, v16, v15) + this.f10041j[8] + 1770035416, 7) + v17;
        int v19 = v(((v15 + q(v18, v17, v16)) + this.f10041j[9]) - 1958414417, 12) + v18;
        int v20 = v(((v16 + q(v19, v18, v17)) + this.f10041j[10]) - 42063, 17) + v19;
        int v21 = v(((v17 + q(v20, v19, v18)) + this.f10041j[11]) - 1990404162, 22) + v20;
        int v22 = v(v18 + q(v21, v20, v19) + this.f10041j[12] + 1804603682, 7) + v21;
        int v23 = v(((v19 + q(v22, v21, v20)) + this.f10041j[13]) - 40341101, 12) + v22;
        int v24 = v(((v20 + q(v23, v22, v21)) + this.f10041j[14]) - 1502002290, 17) + v23;
        int v25 = v(v21 + q(v24, v23, v22) + this.f10041j[15] + 1236535329, 22) + v24;
        int v26 = v(((v22 + r(v25, v24, v23)) + this.f10041j[1]) - 165796510, 5) + v25;
        int v27 = v(((v23 + r(v26, v25, v24)) + this.f10041j[6]) - 1069501632, 9) + v26;
        int v28 = v(v24 + r(v27, v26, v25) + this.f10041j[11] + 643717713, 14) + v27;
        int v29 = v(((v25 + r(v28, v27, v26)) + this.f10041j[0]) - 373897302, 20) + v28;
        int v30 = v(((v26 + r(v29, v28, v27)) + this.f10041j[5]) - 701558691, 5) + v29;
        int v31 = v(v27 + r(v30, v29, v28) + this.f10041j[10] + 38016083, 9) + v30;
        int v32 = v(((v28 + r(v31, v30, v29)) + this.f10041j[15]) - 660478335, 14) + v31;
        int v33 = v(((v29 + r(v32, v31, v30)) + this.f10041j[4]) - 405537848, 20) + v32;
        int v34 = v(v30 + r(v33, v32, v31) + this.f10041j[9] + 568446438, 5) + v33;
        int v35 = v(((v31 + r(v34, v33, v32)) + this.f10041j[14]) - 1019803690, 9) + v34;
        int v36 = v(((v32 + r(v35, v34, v33)) + this.f10041j[3]) - 187363961, 14) + v35;
        int v37 = v(v33 + r(v36, v35, v34) + this.f10041j[8] + 1163531501, 20) + v36;
        int v38 = v(((v34 + r(v37, v36, v35)) + this.f10041j[13]) - 1444681467, 5) + v37;
        int v39 = v(((v35 + r(v38, v37, v36)) + this.f10041j[2]) - 51403784, 9) + v38;
        int v40 = v(v36 + r(v39, v38, v37) + this.f10041j[7] + 1735328473, 14) + v39;
        int v41 = v(((v37 + r(v40, v39, v38)) + this.f10041j[12]) - 1926607734, 20) + v40;
        int v42 = v(((v38 + s(v41, v40, v39)) + this.f10041j[5]) - 378558, 4) + v41;
        int v43 = v(((v39 + s(v42, v41, v40)) + this.f10041j[8]) - 2022574463, 11) + v42;
        int v44 = v(v40 + s(v43, v42, v41) + this.f10041j[11] + 1839030562, 16) + v43;
        int v45 = v(((v41 + s(v44, v43, v42)) + this.f10041j[14]) - 35309556, 23) + v44;
        int v46 = v(((v42 + s(v45, v44, v43)) + this.f10041j[1]) - 1530992060, 4) + v45;
        int v47 = v(v43 + s(v46, v45, v44) + this.f10041j[4] + 1272893353, 11) + v46;
        int v48 = v(((v44 + s(v47, v46, v45)) + this.f10041j[7]) - 155497632, 16) + v47;
        int v49 = v(((v45 + s(v48, v47, v46)) + this.f10041j[10]) - 1094730640, 23) + v48;
        int v50 = v(v46 + s(v49, v48, v47) + this.f10041j[13] + 681279174, 4) + v49;
        int v51 = v(((v47 + s(v50, v49, v48)) + this.f10041j[0]) - 358537222, 11) + v50;
        int v52 = v(((v48 + s(v51, v50, v49)) + this.f10041j[3]) - 722521979, 16) + v51;
        int v53 = v(v49 + s(v52, v51, v50) + this.f10041j[6] + 76029189, 23) + v52;
        int v54 = v(((v50 + s(v53, v52, v51)) + this.f10041j[9]) - 640364487, 4) + v53;
        int v55 = v(((v51 + s(v54, v53, v52)) + this.f10041j[12]) - 421815835, 11) + v54;
        int v56 = v(v52 + s(v55, v54, v53) + this.f10041j[15] + 530742520, 16) + v55;
        int v57 = v(((v53 + s(v56, v55, v54)) + this.f10041j[2]) - 995338651, 23) + v56;
        int v58 = v(((v54 + t(v57, v56, v55)) + this.f10041j[0]) - 198630844, 6) + v57;
        int v59 = v(v55 + t(v58, v57, v56) + this.f10041j[7] + 1126891415, 10) + v58;
        int v60 = v(((v56 + t(v59, v58, v57)) + this.f10041j[14]) - 1416354905, 15) + v59;
        int v61 = v(((v57 + t(v60, v59, v58)) + this.f10041j[5]) - 57434055, 21) + v60;
        int v62 = v(v58 + t(v61, v60, v59) + this.f10041j[12] + 1700485571, 6) + v61;
        int v63 = v(((v59 + t(v62, v61, v60)) + this.f10041j[3]) - 1894986606, 10) + v62;
        int v64 = v(((v60 + t(v63, v62, v61)) + this.f10041j[10]) - 1051523, 15) + v63;
        int v65 = v(((v61 + t(v64, v63, v62)) + this.f10041j[1]) - 2054922799, 21) + v64;
        int v66 = v(v62 + t(v65, v64, v63) + this.f10041j[8] + 1873313359, 6) + v65;
        int v67 = v(((v63 + t(v66, v65, v64)) + this.f10041j[15]) - 30611744, 10) + v66;
        int v68 = v(((v64 + t(v67, v66, v65)) + this.f10041j[6]) - 1560198380, 15) + v67;
        int v69 = v(v65 + t(v68, v67, v66) + this.f10041j[13] + 1309151649, 21) + v68;
        int v70 = v(((v66 + t(v69, v68, v67)) + this.f10041j[4]) - 145523070, 6) + v69;
        int v71 = v(((v67 + t(v70, v69, v68)) + this.f10041j[11]) - 1120210379, 10) + v70;
        int v72 = v(v68 + t(v71, v70, v69) + this.f10041j[2] + 718787259, 15) + v71;
        int v73 = v(((v69 + t(v72, v71, v70)) + this.f10041j[9]) - 343485551, 21) + v72;
        this.f10037f += v70;
        this.f10038g += v73;
        this.f10039h += v72;
        this.f10040i += v71;
        this.f10042k = 0;
        int i14 = 0;
        while (true) {
            int[] iArr = this.f10041j;
            if (i14 == iArr.length) {
                return;
            }
            iArr[i14] = 0;
            i14++;
        }
    }

    @Override
    public void o(long j10) {
        if (this.f10042k > 14) {
            n();
        }
        int[] iArr = this.f10041j;
        iArr[14] = (int) j10;
        iArr[15] = (int) (j10 >>> 32);
    }

    @Override
    public void p(byte[] bArr, int i10) {
        int[] iArr = this.f10041j;
        int i11 = this.f10042k;
        this.f10042k = i11 + 1;
        iArr[i11] = org.bouncycastle.util.p.r(bArr, i10);
        if (this.f10042k == 16) {
            n();
        }
    }

    @Override
    public void reset() {
        super.reset();
        this.f10037f = 1732584193;
        this.f10038g = -271733879;
        this.f10039h = -1732584194;
        this.f10040i = 271733878;
        this.f10042k = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f10041j;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public final int t(int i10, int i11, int i12) {
        return (i10 | (~i12)) ^ i11;
    }

    public final void u(C2667z c2667z) {
        super.d(c2667z);
        this.f10037f = c2667z.f10037f;
        this.f10038g = c2667z.f10038g;
        this.f10039h = c2667z.f10039h;
        this.f10040i = c2667z.f10040i;
        int[] iArr = c2667z.f10041j;
        System.arraycopy(iArr, 0, this.f10041j, 0, iArr.length);
        this.f10042k = c2667z.f10042k;
    }

    public C2667z(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f10041j = new int[16];
        Bi.r.a(Z.a(this, 64, enumC2383o));
        reset();
    }

    public C2667z(C2667z c2667z) {
        super(c2667z);
        this.f10041j = new int[16];
        u(c2667z);
    }

    public C2667z(byte[] bArr) {
        super(bArr);
        this.f10041j = new int[16];
        this.f10037f = org.bouncycastle.util.p.a(bArr, 16);
        this.f10038g = org.bouncycastle.util.p.a(bArr, 20);
        this.f10039h = org.bouncycastle.util.p.a(bArr, 24);
        this.f10040i = org.bouncycastle.util.p.a(bArr, 28);
        this.f10042k = org.bouncycastle.util.p.a(bArr, 32);
        for (int i10 = 0; i10 != this.f10042k; i10++) {
            this.f10041j[i10] = org.bouncycastle.util.p.a(bArr, (i10 * 4) + 36);
        }
    }
}
