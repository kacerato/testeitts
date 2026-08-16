package cb;

import java.util.Arrays;
import java.util.Comparator;

public class v<T> {

    public static final int f34694i = 32;

    public static final int f34695j = 7;

    public static final int f34696k = 256;

    public static final boolean f34697l = false;

    public T[] f34698a;

    public Comparator<? super T> f34699b;

    public int f34700c;

    public T[] f34701d;

    public int f34702e;

    public int f34703f;

    public final int[] f34704g;

    public final int[] f34705h;

    public v() {
        this.f34700c = 7;
        this.f34703f = 0;
        this.f34701d = (T[]) new Object[256];
        this.f34704g = new int[40];
        this.f34705h = new int[40];
    }

    public static <T> void a(T[] a10, int lo, int hi2, int start, Comparator<? super T> c10) {
        if (start == lo) {
            start++;
        }
        while (start < hi2) {
            T t10 = a10[start];
            int i10 = lo;
            int i11 = start;
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                if (c10.compare(t10, a10[i12]) < 0) {
                    i11 = i12;
                } else {
                    i10 = i12 + 1;
                }
            }
            int i13 = start - i10;
            if (i13 != 1) {
                if (i13 != 2) {
                    System.arraycopy(a10, i10, a10, i10 + 1, i13);
                    a10[i10] = t10;
                    start++;
                } else {
                    a10[i10 + 2] = a10[i10 + 1];
                }
            }
            a10[i10 + 1] = a10[i10];
            a10[i10] = t10;
            start++;
        }
    }

    public static <T> int b(T[] a10, int lo, int hi2, Comparator<? super T> c10) {
        int i10 = lo + 1;
        if (i10 == hi2) {
            return 1;
        }
        int i11 = lo + 2;
        if (c10.compare(a10[i10], a10[lo]) < 0) {
            while (i11 < hi2 && c10.compare(a10[i11], a10[i11 - 1]) < 0) {
                i11++;
            }
            o(a10, lo, i11);
        } else {
            while (i11 < hi2 && c10.compare(a10[i11], a10[i11 - 1]) >= 0) {
                i11++;
            }
        }
        return i11 - lo;
    }

    public static <T> int e(T key, T[] a10, int base, int len, int hint, Comparator<? super T> c10) {
        int i10;
        int i11;
        int i12 = base + hint;
        if (c10.compare(key, a10[i12]) > 0) {
            int i13 = len - hint;
            int i14 = 0;
            int i15 = 1;
            while (i15 < i13 && c10.compare(key, a10[i12 + i15]) > 0) {
                int i16 = (i15 << 1) + 1;
                if (i16 <= 0) {
                    i14 = i15;
                    i15 = i13;
                } else {
                    int i17 = i15;
                    i15 = i16;
                    i14 = i17;
                }
            }
            if (i15 <= i13) {
                i13 = i15;
            }
            i10 = i14 + hint;
            i11 = i13 + hint;
        } else {
            int i18 = hint + 1;
            int i19 = 0;
            int i20 = 1;
            while (i20 < i18 && c10.compare(key, a10[i12 - i20]) <= 0) {
                int i21 = (i20 << 1) + 1;
                if (i21 <= 0) {
                    i19 = i20;
                    i20 = i18;
                } else {
                    int i22 = i20;
                    i20 = i21;
                    i19 = i22;
                }
            }
            if (i20 <= i18) {
                i18 = i20;
            }
            int i23 = hint - i18;
            int i24 = hint - i19;
            i10 = i23;
            i11 = i24;
        }
        int i25 = i10 + 1;
        while (i25 < i11) {
            int i26 = ((i11 - i25) >>> 1) + i25;
            if (c10.compare(key, a10[base + i26]) > 0) {
                i25 = i26 + 1;
            } else {
                i11 = i26;
            }
        }
        return i11;
    }

    public static <T> int f(T key, T[] a10, int base, int len, int hint, Comparator<? super T> c10) {
        int i10;
        int i11;
        int i12 = base + hint;
        if (c10.compare(key, a10[i12]) < 0) {
            int i13 = hint + 1;
            int i14 = 0;
            int i15 = 1;
            while (i15 < i13 && c10.compare(key, a10[i12 - i15]) < 0) {
                int i16 = (i15 << 1) + 1;
                if (i16 <= 0) {
                    i14 = i15;
                    i15 = i13;
                } else {
                    int i17 = i15;
                    i15 = i16;
                    i14 = i17;
                }
            }
            if (i15 <= i13) {
                i13 = i15;
            }
            i11 = hint - i13;
            i10 = hint - i14;
        } else {
            int i18 = len - hint;
            int i19 = 0;
            int i20 = 1;
            while (i20 < i18 && c10.compare(key, a10[i12 + i20]) >= 0) {
                int i21 = (i20 << 1) + 1;
                if (i21 <= 0) {
                    i19 = i20;
                    i20 = i18;
                } else {
                    int i22 = i20;
                    i20 = i21;
                    i19 = i22;
                }
            }
            if (i20 <= i18) {
                i18 = i20;
            }
            int i23 = i19 + hint;
            i10 = hint + i18;
            i11 = i23;
        }
        int i24 = i11 + 1;
        while (i24 < i10) {
            int i25 = ((i10 - i24) >>> 1) + i24;
            if (c10.compare(key, a10[base + i25]) < 0) {
                i10 = i25;
            } else {
                i24 = i25 + 1;
            }
        }
        return i10;
    }

    public static int l(int n10) {
        int i10 = 0;
        while (n10 >= 32) {
            i10 |= n10 & 1;
            n10 >>= 1;
        }
        return n10 + i10;
    }

    public static void n(int arrayLen, int fromIndex, int toIndex) {
        if (fromIndex <= toIndex) {
            if (fromIndex < 0) {
                throw new ArrayIndexOutOfBoundsException(fromIndex);
            }
            if (toIndex > arrayLen) {
                throw new ArrayIndexOutOfBoundsException(toIndex);
            }
            return;
        }
        throw new IllegalArgumentException("fromIndex(" + fromIndex + ") > toIndex(" + toIndex + ")");
    }

    public static void o(Object[] a10, int lo, int hi2) {
        int i10 = hi2 - 1;
        while (lo < i10) {
            Object obj = a10[lo];
            a10[lo] = a10[i10];
            a10[i10] = obj;
            i10--;
            lo++;
        }
    }

    public static <T> void p(T[] a10, int lo, int hi2, Comparator<? super T> c10) {
        if (c10 == null) {
            Arrays.sort(a10, lo, hi2);
            return;
        }
        n(a10.length, lo, hi2);
        int i10 = hi2 - lo;
        if (i10 < 2) {
            return;
        }
        if (i10 < 32) {
            a(a10, lo, hi2, b(a10, lo, hi2, c10) + lo, c10);
            return;
        }
        v vVar = new v(a10, c10);
        int l10 = l(i10);
        do {
            int b10 = b(a10, lo, hi2, c10);
            if (b10 < l10) {
                int i11 = i10 <= l10 ? i10 : l10;
                a(a10, lo, lo + i11, b10 + lo, c10);
                b10 = i11;
            }
            vVar.m(lo, b10);
            vVar.h();
            lo += b10;
            i10 -= b10;
        } while (i10 != 0);
        vVar.i();
    }

    public static <T> void q(T[] a10, Comparator<? super T> c10) {
        p(a10, 0, a10.length, c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(T[] a10, Comparator<T> c10, int lo, int hi2) {
        this.f34703f = 0;
        n(a10.length, lo, hi2);
        int i10 = hi2 - lo;
        if (i10 < 2) {
            return;
        }
        if (i10 < 32) {
            a(a10, lo, hi2, b(a10, lo, hi2, c10) + lo, c10);
            return;
        }
        this.f34698a = a10;
        this.f34699b = c10;
        this.f34702e = 0;
        int l10 = l(i10);
        do {
            int b10 = b(a10, lo, hi2, c10);
            if (b10 < l10) {
                int i11 = i10 <= l10 ? i10 : l10;
                a(a10, lo, lo + i11, b10 + lo, c10);
                b10 = i11;
            }
            m(lo, b10);
            h();
            lo += b10;
            i10 -= b10;
        } while (i10 != 0);
        i();
        this.f34698a = null;
        this.f34699b = null;
        T[] tArr = this.f34701d;
        int i12 = this.f34702e;
        for (int i13 = 0; i13 < i12; i13++) {
            tArr[i13] = null;
        }
    }

    public final T[] d(int i10) {
        this.f34702e = Math.max(this.f34702e, i10);
        if (this.f34701d.length < i10) {
            int i11 = (i10 >> 1) | i10;
            int i12 = i11 | (i11 >> 2);
            int i13 = i12 | (i12 >> 4);
            int i14 = i13 | (i13 >> 8);
            int i15 = (i14 | (i14 >> 16)) + 1;
            if (i15 >= 0) {
                i10 = Math.min(i15, this.f34698a.length >>> 1);
            }
            this.f34701d = (T[]) new Object[i10];
        }
        return this.f34701d;
    }

    public final void g(int i10) {
        int[] iArr = this.f34704g;
        int i11 = iArr[i10];
        int[] iArr2 = this.f34705h;
        int i12 = iArr2[i10];
        int i13 = i10 + 1;
        int i14 = iArr[i13];
        int i15 = iArr2[i13];
        iArr2[i10] = i12 + i15;
        int i16 = this.f34703f;
        if (i10 == i16 - 3) {
            int i17 = i10 + 2;
            iArr[i13] = iArr[i17];
            iArr2[i13] = iArr2[i17];
        }
        this.f34703f = i16 - 1;
        T[] tArr = this.f34698a;
        int f10 = f(tArr[i14], tArr, i11, i12, 0, this.f34699b);
        int i18 = i11 + f10;
        int i19 = i12 - f10;
        if (i19 == 0) {
            return;
        }
        T[] tArr2 = this.f34698a;
        int e10 = e(tArr2[(i18 + i19) - 1], tArr2, i14, i15, i15 - 1, this.f34699b);
        if (e10 == 0) {
            return;
        }
        if (i19 <= e10) {
            k(i18, i19, i14, e10);
        } else {
            j(i18, i19, i14, e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
    
        if (r1[r0 - 4] <= (r1[r2] + r1[r0 - 3])) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r1[r0 - 3] > (r1[r2] + r1[r0 - 1])) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        r1 = r6.f34705h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
    
        if (r1[r0 - 3] >= r1[r0 - 1]) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        r2 = r0 - 3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h() {
        while (true) {
            int i10 = this.f34703f;
            if (i10 <= 1) {
                return;
            }
            int i11 = i10 - 2;
            if (i11 >= 1) {
                int[] iArr = this.f34705h;
            }
            if (i11 >= 2) {
                int[] iArr2 = this.f34705h;
            }
            int[] iArr3 = this.f34705h;
            if (iArr3[i11] > iArr3[i10 - 1]) {
                return;
            } else {
                g(i11);
            }
        }
    }

    public final void i() {
        while (true) {
            int i10 = this.f34703f;
            if (i10 <= 1) {
                return;
            }
            int i11 = i10 - 2;
            if (i11 > 0) {
                int[] iArr = this.f34705h;
                if (iArr[i10 - 3] < iArr[i10 - 1]) {
                    i11 = i10 - 3;
                }
            }
            g(i11);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
    
        r12 = r1;
        r13 = r2;
        r14 = r3;
        r15 = r4;
        r16 = r5;
        r17 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007e, code lost:
    
        r6 = r15 - f(r8[r16], r7, r22, r15, r15 - 1, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008d, code lost:
    
        if (r6 == 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008f, code lost:
    
        r12 = r12 - r6;
        r3 = r14 - r6;
        r4 = r15 - r6;
        java.lang.System.arraycopy(r7, r3 + 1, r7, r12 + 1, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
    
        if (r4 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a4, code lost:
    
        r14 = r3;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        r2 = r13;
        r5 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
    
        r6 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a6, code lost:
    
        r18 = r12 - 1;
        r19 = r16 - 1;
        r7[r12] = r8[r16];
        r12 = r13 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b0, code lost:
    
        if (r12 != 1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
    
        r1 = r12 - e(r7[r14], r8, 0, r12, r13 - 2, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cb, code lost:
    
        if (r1 == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cd, code lost:
    
        r2 = r18 - r1;
        r5 = r19 - r1;
        r3 = r12 - r1;
        java.lang.System.arraycopy(r8, r5 + 1, r7, r2 + 1, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00da, code lost:
    
        if (r3 > 1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e1, code lost:
    
        r18 = r2;
        r12 = r3;
        r16 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e9, code lost:
    
        r2 = r18 - 1;
        r3 = r14 - 1;
        r7[r18] = r7[r14];
        r15 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f3, code lost:
    
        if (r15 != 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0124, code lost:
    
        r17 = r17 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0127, code lost:
    
        if (r6 < 7) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0129, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012c, code lost:
    
        if (r1 < 7) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x012e, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0132, code lost:
    
        if ((r1 | r5) != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0141, code lost:
    
        r14 = r3;
        r13 = r12;
        r12 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0134, code lost:
    
        if (r17 >= 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0136, code lost:
    
        r17 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0130, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x012b, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f5, code lost:
    
        r4 = r15;
        r5 = r16;
        r6 = r17;
        r20 = r12;
        r12 = r2;
        r2 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00dc, code lost:
    
        r12 = r2;
        r2 = r3;
        r3 = r14;
        r4 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00e7, code lost:
    
        r16 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b2, code lost:
    
        r2 = r12;
        r3 = r14;
        r4 = r15;
        r6 = r17;
        r12 = r18;
        r5 = r19;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0076 A[EDGE_INSN: B:19:0x0076->B:20:0x0076 BREAK  A[LOOP:1: B:12:0x0040->B:72:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[LOOP:1: B:12:0x0040->B:72:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(int base1, int len1, int base2, int len2) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = len2;
        T[] tArr = this.f34698a;
        T[] d10 = d(i16);
        System.arraycopy(tArr, base2, d10, 0, i16);
        int i17 = base1 + len1;
        int i18 = i17 - 1;
        int i19 = i16 - 1;
        int i20 = base2 + i16;
        int i21 = i20 - 1;
        int i22 = i20 - 2;
        int i23 = i17 - 2;
        tArr[i21] = tArr[i18];
        int i24 = len1 - 1;
        if (i24 == 0) {
            System.arraycopy(d10, 0, tArr, i22 - i19, i16);
            return;
        }
        if (i16 == 1) {
            int i25 = i22 - i24;
            System.arraycopy(tArr, (i23 - i24) + 1, tArr, i25 + 1, i24);
            tArr[i25] = d10[i19];
            return;
        }
        Comparator<? super T> comparator = this.f34699b;
        int i26 = this.f34700c;
        loop0: while (true) {
            int i27 = 0;
            int i28 = 0;
            while (true) {
                if (comparator.compare(d10[i19], tArr[i23]) < 0) {
                    i10 = i22 - 1;
                    int i29 = i23 - 1;
                    tArr[i22] = tArr[i23];
                    i28++;
                    i24--;
                    if (i24 == 0) {
                        i23 = i29;
                        break loop0;
                    }
                    i22 = i10;
                    i23 = i29;
                    i27 = 0;
                    if ((i28 | i27) < i26) {
                        break;
                    }
                } else {
                    int i30 = i22 - 1;
                    int i31 = i19 - 1;
                    tArr[i22] = d10[i19];
                    i27++;
                    i16--;
                    if (i16 == 1) {
                        i10 = i30;
                        i19 = i31;
                        break loop0;
                    } else {
                        i22 = i30;
                        i19 = i31;
                        i28 = 0;
                        if ((i28 | i27) < i26) {
                        }
                    }
                }
            }
            i26 = i13 + 2;
            i22 = i15;
            i16 = i14;
            i24 = i11;
            i19 = i12;
        }
        if (i26 < 1) {
            i26 = 1;
        }
        this.f34700c = i26;
        if (i16 == 1) {
            int i32 = i10 - i24;
            System.arraycopy(tArr, (i23 - i24) + 1, tArr, i32 + 1, i24);
            tArr[i32] = d10[i19];
        } else {
            if (i16 == 0) {
                throw new IllegalArgumentException("Comparison method violates its general contract!");
            }
            System.arraycopy(d10, 0, tArr, i10 - (i16 - 1), i16);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006b, code lost:
    
        r12 = r1;
        r13 = r2;
        r14 = r3;
        r15 = r4;
        r16 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
    
        r9 = r6;
        r6 = f(r7[r15], r8, r6, r13, 0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007d, code lost:
    
        if (r6 == 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007f, code lost:
    
        java.lang.System.arraycopy(r8, r9, r7, r14, r6);
        r1 = r14 + r6;
        r2 = r9 + r6;
        r3 = r13 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0088, code lost:
    
        if (r3 > r10) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
    
        r14 = r1;
        r9 = r2;
        r13 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008a, code lost:
    
        r6 = r2;
        r2 = r3;
        r9 = r10;
        r4 = r15;
        r5 = r16;
        r17 = r12;
        r12 = r1;
        r1 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009a, code lost:
    
        r5 = r14 + 1;
        r4 = r15 + 1;
        r7[r14] = r7[r15];
        r12 = r12 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a4, code lost:
    
        if (r12 != 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ae, code lost:
    
        r15 = r4;
        r1 = e(r8[r9], r7, r4, r12, 0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bd, code lost:
    
        if (r1 == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bf, code lost:
    
        java.lang.System.arraycopy(r7, r15, r7, r5, r1);
        r2 = r5 + r1;
        r4 = r15 + r1;
        r3 = r12 - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c8, code lost:
    
        if (r3 != 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d2, code lost:
    
        r5 = r2;
        r12 = r3;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d7, code lost:
    
        r2 = r5 + 1;
        r6 = r9 + 1;
        r7[r5] = r8[r9];
        r13 = r13 - 1;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e2, code lost:
    
        if (r13 != 1) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0108, code lost:
    
        r16 = r16 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010b, code lost:
    
        if (r6 < 7) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010d, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0110, code lost:
    
        if (r1 < 7) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0112, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0116, code lost:
    
        if ((r1 | r4) != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0126, code lost:
    
        r14 = r2;
        r10 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0118, code lost:
    
        if (r16 >= 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x011a, code lost:
    
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0114, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x010f, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e4, code lost:
    
        r1 = r12;
        r4 = r15;
        r5 = r16;
        r12 = r2;
        r2 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ca, code lost:
    
        r12 = r2;
        r1 = r3;
        r6 = r9;
        r2 = r13;
        r5 = r16;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d6, code lost:
    
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00a6, code lost:
    
        r6 = r9;
        r9 = r10;
        r1 = r12;
        r2 = r13;
        r12 = r5;
        r5 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x012b A[LOOP:1: B:12:0x0033->B:19:0x012b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b A[EDGE_INSN: B:20:0x006b->B:21:0x006b BREAK  A[LOOP:1: B:12:0x0033->B:19:0x012b], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(int base1, int len1, int base2, int len2) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = len1;
        T[] tArr = this.f34698a;
        T[] d10 = d(i17);
        int i18 = 0;
        System.arraycopy(tArr, base1, d10, 0, i17);
        int i19 = base1 + 1;
        int i20 = base2 + 1;
        tArr[base1] = tArr[base2];
        int i21 = len2 - 1;
        if (i21 == 0) {
            System.arraycopy(d10, 0, tArr, i19, i17);
            return;
        }
        int i22 = 1;
        if (i17 == 1) {
            System.arraycopy(tArr, i20, tArr, i19, i21);
            tArr[i19 + i21] = d10[0];
            return;
        }
        Comparator<? super T> comparator = this.f34699b;
        int i23 = this.f34700c;
        int i24 = 0;
        loop0: while (true) {
            int i25 = i18;
            int i26 = i25;
            while (true) {
                if (comparator.compare(tArr[i20], d10[i24]) < 0) {
                    i11 = i19 + 1;
                    int i27 = i20 + 1;
                    tArr[i19] = tArr[i20];
                    i26 += i22;
                    i21--;
                    if (i21 == 0) {
                        i10 = i22;
                        i20 = i27;
                        break loop0;
                    }
                    i19 = i11;
                    i20 = i27;
                    i25 = i18;
                    if ((i25 | i26) < i23) {
                        break;
                    } else {
                        i18 = 0;
                    }
                } else {
                    int i28 = i19 + 1;
                    int i29 = i24 + 1;
                    tArr[i19] = d10[i24];
                    i25 += i22;
                    i17--;
                    if (i17 == i22) {
                        i10 = i22;
                        i11 = i28;
                        i24 = i29;
                        break loop0;
                    } else {
                        i19 = i28;
                        i24 = i29;
                        i26 = i18;
                        if ((i25 | i26) < i23) {
                        }
                    }
                }
            }
            i23 = i15 + 2;
            i19 = i16;
            i22 = 1;
            i21 = i12;
            i17 = i13;
            i20 = i14;
            i18 = 0;
        }
        if (i23 < i10) {
            i23 = i10;
        }
        this.f34700c = i23;
        if (i17 == i10) {
            System.arraycopy(tArr, i20, tArr, i11, i21);
            tArr[i11 + i21] = d10[i24];
        } else {
            if (i17 == 0) {
                throw new IllegalArgumentException("Comparison method violates its general contract!");
            }
            System.arraycopy(d10, i24, tArr, i11, i17);
        }
    }

    public final void m(int runBase, int runLen) {
        int[] iArr = this.f34704g;
        int i10 = this.f34703f;
        iArr[i10] = runBase;
        this.f34705h[i10] = runLen;
        this.f34703f = i10 + 1;
    }

    public v(T[] tArr, Comparator<? super T> comparator) {
        this.f34700c = 7;
        this.f34703f = 0;
        this.f34698a = tArr;
        this.f34699b = comparator;
        int length = tArr.length;
        this.f34701d = (T[]) new Object[length < 512 ? length >>> 1 : 256];
        int i10 = length < 120 ? 5 : length < 1542 ? 10 : length < 119151 ? 19 : 40;
        this.f34704g = new int[i10];
        this.f34705h = new int[i10];
    }
}
