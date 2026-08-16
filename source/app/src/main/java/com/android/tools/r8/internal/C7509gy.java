package com.android.tools.r8.internal;

import zd.C16303d;

public class C7509gy {

    public XQ f48393a;

    public int[] f48394b;

    public int[] f48395c;

    public int[] f48396d;

    public int[] f48397e;

    public short f48398f;

    public short f48399g;

    public int f48400h;

    public int[] f48401i;

    public C7509gy(XQ xq) {
        this.f48393a = xq;
    }

    public static int a(C7988jr0 c7988jr0, Object obj) {
        int a10;
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() | 4194304;
        }
        if (obj instanceof String) {
            return a(c7988jr0, C9663tt0.d((String) obj).b(), 0);
        }
        XQ xq = (XQ) obj;
        if ((xq.f45687b & 4) != 0) {
            return c7988jr0.b(xq.f45690e, "") | 12582912;
        }
        if (c7988jr0.f49383n == null) {
            c7988jr0.f49383n = new C7822ir0[16];
            c7988jr0.f49382m = new C7822ir0[16];
        }
        int identityHashCode = System.identityHashCode(xq);
        C7822ir0[] c7822ir0Arr = c7988jr0.f49383n;
        C7822ir0 c7822ir0 = c7822ir0Arr[identityHashCode % c7822ir0Arr.length];
        while (c7822ir0 != null && c7822ir0.f49073b != xq) {
            c7822ir0 = c7822ir0.f49074c;
        }
        if (c7822ir0 == null) {
            int i10 = c7988jr0.f49381l;
            C7822ir0[] c7822ir0Arr2 = c7988jr0.f49383n;
            if (i10 > (c7822ir0Arr2.length * 3) / 4) {
                int length = c7822ir0Arr2.length;
                int i11 = (length * 2) + 1;
                C7822ir0[] c7822ir0Arr3 = new C7822ir0[i11];
                for (int i12 = length - 1; i12 >= 0; i12--) {
                    C7822ir0 c7822ir02 = c7988jr0.f49383n[i12];
                    while (c7822ir02 != null) {
                        int identityHashCode2 = System.identityHashCode(c7822ir02.f49073b) % i11;
                        C7822ir0 c7822ir03 = c7822ir02.f49074c;
                        c7822ir02.f49074c = c7822ir0Arr3[identityHashCode2];
                        c7822ir0Arr3[identityHashCode2] = c7822ir02;
                        c7822ir02 = c7822ir03;
                    }
                }
                c7988jr0.f49383n = c7822ir0Arr3;
            }
            int i13 = c7988jr0.f49381l;
            C7822ir0[] c7822ir0Arr4 = c7988jr0.f49382m;
            if (i13 == c7822ir0Arr4.length) {
                C7822ir0[] c7822ir0Arr5 = new C7822ir0[c7822ir0Arr4.length * 2];
                System.arraycopy(c7822ir0Arr4, 0, c7822ir0Arr5, 0, c7822ir0Arr4.length);
                c7988jr0.f49382m = c7822ir0Arr5;
            }
            int i14 = c7988jr0.f49381l;
            c7822ir0 = new C7822ir0(i14, xq);
            C7822ir0[] c7822ir0Arr6 = c7988jr0.f49383n;
            int length2 = identityHashCode % c7822ir0Arr6.length;
            c7822ir0.f49074c = c7822ir0Arr6[length2];
            c7822ir0Arr6[length2] = c7822ir0;
            C7822ir0[] c7822ir0Arr7 = c7988jr0.f49382m;
            c7988jr0.f49381l = i14 + 1;
            c7822ir0Arr7[i14] = c7822ir0;
        }
        int i15 = c7822ir0.f49072a;
        int i16 = (i15 + 130) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = c7988jr0.f49374e;
        C7656hr0 c7656hr0 = c7656hr0Arr[i16 % c7656hr0Arr.length];
        while (true) {
            if (c7656hr0 != null) {
                if (c7656hr0.f48723b == 130 && c7656hr0.f48729h == i16 && c7656hr0.f48727f == i15 && c7656hr0.f48726e.equals("")) {
                    a10 = c7656hr0.f48722a;
                    break;
                }
                c7656hr0 = c7656hr0.f48730i;
            } else {
                a10 = c7988jr0.a(new C7656hr0(c7988jr0.f49379j, 130, "", i15, i16));
                break;
            }
        }
        return a10 | 16777216;
    }

    public final void b(int i10, int i11) {
        if (this.f48396d == null) {
            this.f48396d = new int[10];
        }
        int length = this.f48396d.length;
        if (i10 >= length) {
            int[] iArr = new int[Math.max(i10 + 1, length * 2)];
            System.arraycopy(this.f48396d, 0, iArr, 0, length);
            this.f48396d = iArr;
        }
        this.f48396d[i10] = i11;
    }

    public final void b(int i10) {
        if (this.f48397e == null) {
            this.f48397e = new int[10];
        }
        int length = this.f48397e.length;
        short s10 = this.f48399g;
        if (s10 >= length) {
            int[] iArr = new int[Math.max(s10 + 1, length * 2)];
            System.arraycopy(this.f48397e, 0, iArr, 0, length);
            this.f48397e = iArr;
        }
        int[] iArr2 = this.f48397e;
        short s11 = this.f48399g;
        short s12 = (short) (s11 + 1);
        this.f48399g = s12;
        iArr2[s11] = i10;
        short s13 = (short) (this.f48398f + s12);
        XQ xq = this.f48393a;
        if (s13 > xq.f45694i) {
            xq.f45694i = s13;
        }
    }

    public static int a(C7988jr0 c7988jr0, String str, int i10) {
        char charAt = str.charAt(i10);
        int i11 = 4194306;
        if (charAt == 'F') {
            return 4194306;
        }
        if (charAt == 'L') {
            return c7988jr0.b(str.substring(i10 + 1, str.length() - 1)) | 8388608;
        }
        if (charAt != 'S') {
            if (charAt == 'V') {
                return 0;
            }
            if (charAt != 'I') {
                if (charAt == 'J') {
                    return 4194308;
                }
                if (charAt != 'Z') {
                    if (charAt != '[') {
                        switch (charAt) {
                            case 'B':
                            case 'C':
                                break;
                            case 'D':
                                return 4194307;
                            default:
                                throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid descriptor: ", str.substring(i10)));
                        }
                    } else {
                        int i12 = i10 + 1;
                        while (str.charAt(i12) == '[') {
                            i12++;
                        }
                        char charAt2 = str.charAt(i12);
                        if (charAt2 != 'F') {
                            if (charAt2 == 'L') {
                                i11 = c7988jr0.b(str.substring(i12 + 1, str.length() - 1)) | 8388608;
                            } else if (charAt2 == 'S') {
                                i11 = 4194316;
                            } else if (charAt2 == 'Z') {
                                i11 = 4194313;
                            } else if (charAt2 == 'I') {
                                i11 = 4194305;
                            } else if (charAt2 != 'J') {
                                switch (charAt2) {
                                    case 'B':
                                        i11 = 4194314;
                                        break;
                                    case 'C':
                                        i11 = 4194315;
                                        break;
                                    case 'D':
                                        i11 = 4194307;
                                        break;
                                    default:
                                        throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid descriptor fragment: ", str.substring(i12)));
                                }
                            } else {
                                i11 = 4194308;
                            }
                        }
                        return ((i12 - i10) << 26) | i11;
                    }
                }
            }
        }
        return 4194305;
    }

    public final void a(C7988jr0 c7988jr0, int i10, String str, int i11) {
        int i12;
        int[] iArr = new int[i11];
        this.f48394b = iArr;
        this.f48395c = new int[0];
        if ((i10 & 8) == 0) {
            i12 = 1;
            if ((i10 & 262144) == 0) {
                iArr[0] = c7988jr0.b(c7988jr0.f49372c) | 8388608;
            } else {
                iArr[0] = 4194310;
            }
        } else {
            i12 = 0;
        }
        for (C9663tt0 c9663tt0 : C9663tt0.b(str)) {
            int a10 = a(c7988jr0, c9663tt0.b(), 0);
            int[] iArr2 = this.f48394b;
            int i13 = i12 + 1;
            iArr2[i12] = a10;
            if (a10 == 4194308 || a10 == 4194307) {
                i12 += 2;
                iArr2[i13] = 4194304;
            } else {
                i12 = i13;
            }
        }
        while (i12 < i11) {
            this.f48394b[i12] = 4194304;
            i12++;
        }
    }

    public final void a(C7988jr0 c7988jr0, String str) {
        int a10 = a(c7988jr0, str, str.charAt(0) == '(' ? C9663tt0.e(str) : 0);
        if (a10 != 0) {
            b(a10);
            if (a10 == 4194308 || a10 == 4194307) {
                b(4194304);
            }
        }
    }

    public final int a() {
        short s10 = this.f48399g;
        if (s10 > 0) {
            int[] iArr = this.f48397e;
            short s11 = (short) (s10 - 1);
            this.f48399g = s11;
            return iArr[s11];
        }
        short s12 = (short) (this.f48398f - 1);
        this.f48398f = s12;
        return (-s12) | 25165824;
    }

    public final void a(int i10) {
        short s10 = this.f48399g;
        if (s10 >= i10) {
            this.f48399g = (short) (s10 - i10);
        } else {
            this.f48398f = (short) (this.f48398f - (i10 - s10));
            this.f48399g = (short) 0;
        }
    }

    public final void a(String str) {
        char charAt = str.charAt(0);
        if (charAt == '(') {
            a((C9663tt0.c(str) >> 2) - 1);
        } else if (charAt != 'J' && charAt != 'D') {
            a(1);
        } else {
            a(2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053 A[LOOP:0: B:10:0x0011->B:17:0x0053, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(C7988jr0 c7988jr0, int i10) {
        int i11;
        int b10;
        int i12;
        if (i10 == 4194310 || (i12 = (-4194304) & i10) == 12582912 || i12 == 16777216) {
            for (int i13 = 0; i13 < this.f48400h; i13++) {
                int i14 = this.f48401i[i13];
                int i15 = (-67108864) & i14;
                int i16 = 62914560 & i14;
                int i17 = i14 & 1048575;
                if (i16 == 20971520) {
                    i11 = this.f48394b[i17];
                } else {
                    if (i16 == 25165824) {
                        int[] iArr = this.f48395c;
                        i11 = iArr[iArr.length - i17];
                    }
                    if (i10 != i14) {
                        if (i10 == 4194310) {
                            b10 = c7988jr0.b(c7988jr0.f49372c);
                        } else {
                            b10 = c7988jr0.b(c7988jr0.f49380k[i10 & 1048575].f48726e);
                        }
                        return b10 | 8388608;
                    }
                }
                i14 = i11 + i15;
                if (i10 != i14) {
                }
            }
        }
        return i10;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0028. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0363  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(int i10, int i11, C7656hr0 c7656hr0, C7988jr0 c7988jr0) {
        int i12;
        int i13;
        int i14;
        switch (i10) {
            case 0:
                return;
            case 1:
                b(4194309);
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 16:
            case 17:
                b(4194305);
                return;
            case 9:
            case 10:
                b(4194308);
                b(4194304);
                return;
            case 11:
            case 12:
            case 13:
                b(4194306);
                return;
            case 14:
            case 15:
                b(4194307);
                b(4194304);
                return;
            case 18:
                int i15 = c7656hr0.f48723b;
                switch (i15) {
                    case 3:
                        b(4194305);
                        return;
                    case 4:
                        b(4194306);
                        return;
                    case 5:
                        b(4194308);
                        b(4194304);
                        return;
                    case 6:
                        b(4194307);
                        b(4194304);
                        return;
                    case 7:
                        b(c7988jr0.b("java/lang/Class") | 8388608);
                        return;
                    case 8:
                        b(c7988jr0.b("java/lang/String") | 8388608);
                        return;
                    default:
                        switch (i15) {
                            case 15:
                                b(c7988jr0.b("java/lang/invoke/MethodHandle") | 8388608);
                                return;
                            case 16:
                                b(c7988jr0.b("java/lang/invoke/MethodType") | 8388608);
                                return;
                            case 17:
                                a(c7988jr0, c7656hr0.f48726e);
                                return;
                            default:
                                throw new AssertionError();
                        }
                }
            default:
                switch (i10) {
                    case 21:
                        break;
                    case 22:
                        break;
                    case 23:
                        break;
                    case 24:
                        break;
                    case 25:
                        int[] iArr = this.f48396d;
                        if (iArr == null || i11 >= iArr.length) {
                            i12 = i11 | 20971520;
                        } else {
                            i12 = iArr[i11];
                            if (i12 == 0) {
                                i12 = i11 | 20971520;
                                iArr[i11] = i12;
                            }
                        }
                        b(i12);
                        return;
                    default:
                        switch (i10) {
                            case 46:
                            case 51:
                            case 52:
                            case 53:
                                a(2);
                                b(4194305);
                                return;
                            case 47:
                                a(2);
                                b(4194308);
                                b(4194304);
                                return;
                            case 48:
                                a(2);
                                b(4194306);
                                return;
                            case 49:
                                a(2);
                                b(4194307);
                                b(4194304);
                                return;
                            case 50:
                                a(1);
                                int a10 = a();
                                if (a10 != 4194309) {
                                    a10 += C16303d.f131228w;
                                }
                                b(a10);
                                return;
                            case 54:
                            case 56:
                            case 58:
                                b(i11, a());
                                if (i11 > 0) {
                                    int i16 = i11 - 1;
                                    int[] iArr2 = this.f48396d;
                                    if (iArr2 == null || i16 >= iArr2.length) {
                                        i13 = i16 | 20971520;
                                    } else {
                                        i13 = iArr2[i16];
                                        if (i13 == 0) {
                                            i13 = i16 | 20971520;
                                            iArr2[i16] = i13;
                                        }
                                    }
                                    if (i13 == 4194308 || i13 == 4194307) {
                                        b(i16, 4194304);
                                        return;
                                    }
                                    int i17 = i13 & 62914560;
                                    if (i17 == 20971520 || i17 == 25165824) {
                                        b(i16, 1048576 | i13);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            case 55:
                            case 57:
                                a(1);
                                b(i11, a());
                                b(i11 + 1, 4194304);
                                if (i11 > 0) {
                                    int i18 = i11 - 1;
                                    int[] iArr3 = this.f48396d;
                                    if (iArr3 == null || i18 >= iArr3.length) {
                                        i14 = i18 | 20971520;
                                    } else {
                                        i14 = iArr3[i18];
                                        if (i14 == 0) {
                                            i14 = i18 | 20971520;
                                            iArr3[i18] = i14;
                                        }
                                    }
                                    if (i14 == 4194308 || i14 == 4194307) {
                                        b(i18, 4194304);
                                        return;
                                    }
                                    int i19 = i14 & 62914560;
                                    if (i19 == 20971520 || i19 == 25165824) {
                                        b(i18, 1048576 | i14);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            default:
                                switch (i10) {
                                    case 79:
                                    case 81:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                        a(3);
                                        return;
                                    case 80:
                                    case 82:
                                        a(4);
                                        return;
                                    case 87:
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 170:
                                    case 171:
                                    case 172:
                                    case 174:
                                    case 176:
                                    case 191:
                                    case 194:
                                    case 195:
                                        break;
                                    case 88:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 173:
                                    case 175:
                                        a(2);
                                        return;
                                    case 89:
                                        int a11 = a();
                                        b(a11);
                                        b(a11);
                                        return;
                                    case 90:
                                        int a12 = a();
                                        int a13 = a();
                                        b(a12);
                                        b(a13);
                                        b(a12);
                                        return;
                                    case 91:
                                        int a14 = a();
                                        int a15 = a();
                                        int a16 = a();
                                        b(a14);
                                        b(a16);
                                        b(a15);
                                        b(a14);
                                        return;
                                    case 92:
                                        int a17 = a();
                                        int a18 = a();
                                        b(a18);
                                        b(a17);
                                        b(a18);
                                        b(a17);
                                        return;
                                    case 93:
                                        int a19 = a();
                                        int a20 = a();
                                        int a21 = a();
                                        b(a20);
                                        b(a19);
                                        b(a21);
                                        b(a20);
                                        b(a19);
                                        return;
                                    case 94:
                                        int a22 = a();
                                        int a23 = a();
                                        int a24 = a();
                                        int a25 = a();
                                        b(a23);
                                        b(a22);
                                        b(a25);
                                        b(a24);
                                        b(a23);
                                        b(a22);
                                        return;
                                    case 95:
                                        int a26 = a();
                                        int a27 = a();
                                        b(a26);
                                        b(a27);
                                        return;
                                    case 96:
                                    case 100:
                                    case 104:
                                    case 108:
                                    case 112:
                                    case 120:
                                    case 122:
                                    case 124:
                                    case 126:
                                    case 128:
                                    case 130:
                                    case 136:
                                    case 142:
                                    case 149:
                                    case 150:
                                        break;
                                    case 97:
                                    case 101:
                                    case 105:
                                    case 109:
                                    case 113:
                                    case 127:
                                    case 129:
                                    case 131:
                                        a(4);
                                        b(4194308);
                                        b(4194304);
                                        return;
                                    case 98:
                                    case 102:
                                    case 106:
                                    case 110:
                                    case 114:
                                    case 137:
                                    case 144:
                                        break;
                                    case 99:
                                    case 103:
                                    case 107:
                                    case 111:
                                    case 115:
                                        a(4);
                                        b(4194307);
                                        b(4194304);
                                        return;
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 145:
                                    case 146:
                                    case 147:
                                    case 167:
                                    case 177:
                                        return;
                                    case 121:
                                    case 123:
                                    case 125:
                                        a(3);
                                        b(4194308);
                                        b(4194304);
                                        return;
                                    case 132:
                                        b(i11, 4194305);
                                        return;
                                    case 133:
                                    case 140:
                                        a(1);
                                        b(4194308);
                                        b(4194304);
                                        return;
                                    case 134:
                                        a(1);
                                        b(4194306);
                                        return;
                                    case 135:
                                    case 141:
                                        a(1);
                                        b(4194307);
                                        b(4194304);
                                        return;
                                    case 138:
                                        break;
                                    case 139:
                                    case 190:
                                    case 193:
                                        a(1);
                                        b(4194305);
                                        return;
                                    case 143:
                                        break;
                                    case 148:
                                    case 151:
                                    case 152:
                                        a(4);
                                        b(4194305);
                                        return;
                                    case 168:
                                    case 169:
                                        throw new IllegalArgumentException("JSR/RET are not supported with computeFrames option");
                                    case 178:
                                        a(c7988jr0, c7656hr0.f48726e);
                                        return;
                                    case 179:
                                        a(c7656hr0.f48726e);
                                        return;
                                    case 180:
                                        a(1);
                                        a(c7988jr0, c7656hr0.f48726e);
                                        return;
                                    case 181:
                                        a(c7656hr0.f48726e);
                                        a();
                                        return;
                                    case 182:
                                    case 183:
                                    case 184:
                                    case 185:
                                        a(c7656hr0.f48726e);
                                        if (i10 != 184) {
                                            int a28 = a();
                                            if (i10 == 183 && c7656hr0.f48725d.charAt(0) == '<') {
                                                if (this.f48401i == null) {
                                                    this.f48401i = new int[2];
                                                }
                                                int length = this.f48401i.length;
                                                int i20 = this.f48400h;
                                                if (i20 >= length) {
                                                    int[] iArr4 = new int[Math.max(i20 + 1, length * 2)];
                                                    System.arraycopy(this.f48401i, 0, iArr4, 0, length);
                                                    this.f48401i = iArr4;
                                                }
                                                int[] iArr5 = this.f48401i;
                                                int i21 = this.f48400h;
                                                this.f48400h = i21 + 1;
                                                iArr5[i21] = a28;
                                            }
                                        }
                                        a(c7988jr0, c7656hr0.f48726e);
                                        return;
                                    case 186:
                                        a(c7656hr0.f48726e);
                                        a(c7988jr0, c7656hr0.f48726e);
                                        return;
                                    case 187:
                                        b(c7988jr0.b(i11, c7656hr0.f48726e) | 12582912);
                                        return;
                                    case 188:
                                        a();
                                        switch (i11) {
                                            case 4:
                                                b(71303177);
                                                return;
                                            case 5:
                                                b(71303179);
                                                return;
                                            case 6:
                                                b(71303170);
                                                return;
                                            case 7:
                                                b(71303171);
                                                return;
                                            case 8:
                                                b(71303178);
                                                return;
                                            case 9:
                                                b(71303180);
                                                return;
                                            case 10:
                                                b(71303169);
                                                return;
                                            case 11:
                                                b(71303172);
                                                return;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                    case 189:
                                        String str = c7656hr0.f48726e;
                                        a();
                                        if (str.charAt(0) == '[') {
                                            a(c7988jr0, "[".concat(str));
                                            return;
                                        } else {
                                            b(c7988jr0.b(str) | 75497472);
                                            return;
                                        }
                                    case 192:
                                        String str2 = c7656hr0.f48726e;
                                        a();
                                        if (str2.charAt(0) == '[') {
                                            a(c7988jr0, str2);
                                            return;
                                        } else {
                                            b(c7988jr0.b(str2) | 8388608);
                                            return;
                                        }
                                    default:
                                        switch (i10) {
                                            case 197:
                                                a(i11);
                                                a(c7988jr0, c7656hr0.f48726e);
                                                return;
                                            case 198:
                                            case 199:
                                                break;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                }
                                a(1);
                                return;
                        }
                }
        }
    }

    public final int a(int i10, int i11) {
        int i12 = (-67108864) & i10;
        int i13 = 62914560 & i10;
        if (i13 == 20971520) {
            int i14 = i12 + this.f48394b[i10 & 1048575];
            if ((i10 & 1048576) == 0 || !(i14 == 4194308 || i14 == 4194307)) {
                return i14;
            }
            return 4194304;
        }
        if (i13 != 25165824) {
            return i10;
        }
        int i15 = i12 + this.f48395c[i11 - (i10 & 1048575)];
        if ((i10 & 1048576) == 0 || !(i15 == 4194308 || i15 == 4194307)) {
            return i15;
        }
        return 4194304;
    }

    public final boolean a(C7988jr0 c7988jr0, C7509gy c7509gy, int i10) {
        boolean z10;
        int i11;
        int length = this.f48394b.length;
        int length2 = this.f48395c.length;
        boolean z11 = true;
        if (c7509gy.f48394b == null) {
            c7509gy.f48394b = new int[length];
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i12 = 0; i12 < length; i12++) {
            int[] iArr = this.f48396d;
            if (iArr != null && i12 < iArr.length) {
                int i13 = iArr[i12];
                if (i13 == 0) {
                    i11 = this.f48394b[i12];
                } else {
                    i11 = a(i13, length2);
                }
            } else {
                i11 = this.f48394b[i12];
            }
            if (this.f48401i != null) {
                i11 = a(c7988jr0, i11);
            }
            z10 |= a(c7988jr0, i11, c7509gy.f48394b, i12);
        }
        if (i10 > 0) {
            for (int i14 = 0; i14 < length; i14++) {
                z10 |= a(c7988jr0, this.f48394b[i14], c7509gy.f48394b, i14);
            }
            if (c7509gy.f48395c == null) {
                c7509gy.f48395c = new int[1];
            } else {
                z11 = z10;
            }
            return a(c7988jr0, i10, c7509gy.f48395c, 0) | z11;
        }
        int length3 = this.f48395c.length + this.f48398f;
        if (c7509gy.f48395c == null) {
            c7509gy.f48395c = new int[this.f48399g + length3];
        } else {
            z11 = z10;
        }
        for (int i15 = 0; i15 < length3; i15++) {
            int i16 = this.f48395c[i15];
            if (this.f48401i != null) {
                i16 = a(c7988jr0, i16);
            }
            z11 |= a(c7988jr0, i16, c7509gy.f48395c, i15);
        }
        for (int i17 = 0; i17 < this.f48399g; i17++) {
            int a10 = a(this.f48397e[i17], length2);
            if (this.f48401i != null) {
                a10 = a(c7988jr0, a10);
            }
            z11 |= a(c7988jr0, a10, c7509gy.f48395c, length3 + i17);
        }
        return z11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0034, code lost:
    
        if ((r1 & 62914560) == 8388608) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00cb, code lost:
    
        if (r8.isInterface() == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ce, code lost:
    
        r12 = r12.getSuperclass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00d6, code lost:
    
        if (r12.isAssignableFrom(r8) == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00d8, code lost:
    
        r11 = r12.getName().replace('.', '/');
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(C7988jr0 c7988jr0, int i10, int[] iArr, int i11) {
        int min;
        int b10;
        long j10;
        long j11;
        int i12;
        int i13 = i10;
        int i14 = iArr[i11];
        if (i14 == i13) {
            return false;
        }
        if ((67108863 & i13) == 4194309) {
            if (i14 == 4194309) {
                return false;
            }
            i13 = 4194309;
        }
        if (i14 == 0) {
            iArr[i11] = i13;
            return true;
        }
        int i15 = i14 & C16303d.f131228w;
        if (i15 == 0 && (i14 & 62914560) != 8388608) {
            if (i14 == 4194309) {
                if ((i13 & C16303d.f131228w) == 0) {
                }
            }
            i13 = 4194304;
        } else {
            if (i13 == 4194309) {
                return false;
            }
            String str = "java/lang/Object";
            if ((i13 & (-4194304)) != ((-4194304) & i14)) {
                int i16 = i13 & C16303d.f131228w;
                if (i16 != 0 || (i13 & 62914560) == 8388608) {
                    if (i16 != 0 && (i13 & 62914560) != 8388608) {
                        i16 += C16303d.f131228w;
                    }
                    if (i15 != 0 && (i14 & 62914560) != 8388608) {
                        i15 += C16303d.f131228w;
                    }
                    min = Math.min(i16, i15) | 8388608;
                    b10 = c7988jr0.b("java/lang/Object");
                }
                i13 = 4194304;
            } else if ((i14 & 62914560) == 8388608) {
                int i17 = (i13 & C16303d.f131228w) | 8388608;
                int i18 = i13 & 1048575;
                int i19 = 1048575 & i14;
                c7988jr0.getClass();
                if (i18 < i19) {
                    j10 = i18;
                    j11 = i19;
                } else {
                    j10 = i19;
                    j11 = i18;
                }
                long j12 = j10 | (j11 << 32);
                int i20 = (i18 + i19 + 131) & Integer.MAX_VALUE;
                C7656hr0[] c7656hr0Arr = c7988jr0.f49374e;
                C7656hr0 c7656hr0 = c7656hr0Arr[i20 % c7656hr0Arr.length];
                while (true) {
                    if (c7656hr0 != null) {
                        if (c7656hr0.f48723b == 131 && c7656hr0.f48729h == i20 && c7656hr0.f48727f == j12) {
                            i12 = c7656hr0.f48728g;
                            break;
                        }
                        c7656hr0 = c7656hr0.f48730i;
                    } else {
                        C7656hr0[] c7656hr0Arr2 = c7988jr0.f49380k;
                        String str2 = c7656hr0Arr2[i18].f48726e;
                        String str3 = c7656hr0Arr2[i19].f48726e;
                        c7988jr0.f49370a.getClass();
                        ClassLoader classLoader = C7616he.class.getClassLoader();
                        try {
                            Class<?> cls = Class.forName(str2.replace('/', '.'), false, classLoader);
                            try {
                                Class<?> cls2 = Class.forName(str3.replace('/', '.'), false, classLoader);
                                if (cls.isAssignableFrom(cls2)) {
                                    str = str2;
                                } else if (cls2.isAssignableFrom(cls)) {
                                    str = str3;
                                } else if (!cls.isInterface()) {
                                }
                                int b11 = c7988jr0.b(str);
                                c7988jr0.b(new C7656hr0(c7988jr0.f49379j, 131, j12, i20)).f48728g = b11;
                                i12 = b11;
                            } catch (ClassNotFoundException e10) {
                                throw new TypeNotPresentException(str3, e10);
                            }
                        } catch (ClassNotFoundException e11) {
                            throw new TypeNotPresentException(str2, e11);
                        }
                    }
                }
                i13 = i17 | i12;
            } else {
                min = ((i13 & C16303d.f131228w) + C16303d.f131228w) | 8388608;
                b10 = c7988jr0.b("java/lang/Object");
            }
            i13 = min | b10;
        }
        if (i13 == i14) {
            return false;
        }
        iArr[i11] = i13;
        return true;
    }

    public final void a(EX ex) {
        int[] iArr = this.f48394b;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = 2;
            if (i11 >= iArr.length) {
                break;
            }
            int i15 = iArr[i11];
            if (i15 != 4194308 && i15 != 4194307) {
                i14 = 1;
            }
            i11 += i14;
            i12++;
            if (i15 != 4194304) {
                i13 += i12;
                i12 = 0;
            }
        }
        int[] iArr2 = this.f48395c;
        int i16 = 0;
        int i17 = 0;
        while (i16 < iArr2.length) {
            int i18 = iArr2[i16];
            i16 += (i18 == 4194308 || i18 == 4194307) ? 2 : 1;
            i17++;
        }
        ex.a(this.f48393a.f45690e, i13, i17);
        int i19 = 3;
        int i20 = 0;
        while (true) {
            int i21 = i13 - 1;
            if (i13 <= 0) {
                break;
            }
            int i22 = iArr[i20];
            i20 += (i22 == 4194308 || i22 == 4194307) ? 2 : 1;
            ex.f39912V[i19] = i22;
            i13 = i21;
            i19++;
        }
        while (true) {
            int i23 = i17 - 1;
            if (i17 > 0) {
                int i24 = iArr2[i10];
                i10 += (i24 == 4194308 || i24 == 4194307) ? 2 : 1;
                ex.f39912V[i19] = i24;
                i19++;
                i17 = i23;
            } else {
                ex.e();
                return;
            }
        }
    }
}
