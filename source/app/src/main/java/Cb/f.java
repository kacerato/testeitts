package cb;

public class f {

    public static final int f34524h = 32;

    public static final int f34525i = 7;

    public static final int f34526j = 256;

    public static final boolean f34527k = false;

    public Object[] f34528a;

    public int f34529b;

    public Object[] f34530c;

    public int f34531d;

    public int f34532e;

    public final int[] f34533f;

    public final int[] f34534g;

    public f() {
        this.f34529b = 7;
        this.f34532e = 0;
        this.f34530c = new Object[256];
        this.f34533f = new int[40];
        this.f34534g = new int[40];
    }

    public static void a(Object[] a10, int lo, int hi2, int start) {
        if (start == lo) {
            start++;
        }
        while (start < hi2) {
            Comparable comparable = (Comparable) a10[start];
            int i10 = lo;
            int i11 = start;
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                if (comparable.compareTo(a10[i12]) < 0) {
                    i11 = i12;
                } else {
                    i10 = i12 + 1;
                }
            }
            int i13 = start - i10;
            if (i13 != 1) {
                if (i13 != 2) {
                    System.arraycopy(a10, i10, a10, i10 + 1, i13);
                    a10[i10] = comparable;
                    start++;
                } else {
                    a10[i10 + 2] = a10[i10 + 1];
                }
            }
            a10[i10 + 1] = a10[i10];
            a10[i10] = comparable;
            start++;
        }
    }

    public static int b(Object[] a10, int lo, int hi2) {
        int i10 = lo + 1;
        if (i10 == hi2) {
            return 1;
        }
        int i11 = lo + 2;
        if (((Comparable) a10[i10]).compareTo(a10[lo]) < 0) {
            while (i11 < hi2 && ((Comparable) a10[i11]).compareTo(a10[i11 - 1]) < 0) {
                i11++;
            }
            o(a10, lo, i11);
        } else {
            while (i11 < hi2 && ((Comparable) a10[i11]).compareTo(a10[i11 - 1]) >= 0) {
                i11++;
            }
        }
        return i11 - lo;
    }

    public static int e(Comparable<Object> key, Object[] a10, int base, int len, int hint) {
        int i10;
        int i11;
        int i12 = base + hint;
        if (key.compareTo(a10[i12]) > 0) {
            int i13 = len - hint;
            int i14 = 0;
            int i15 = 1;
            while (i15 < i13 && key.compareTo(a10[i12 + i15]) > 0) {
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
            while (i20 < i18 && key.compareTo(a10[i12 - i20]) <= 0) {
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
            if (key.compareTo(a10[base + i26]) > 0) {
                i25 = i26 + 1;
            } else {
                i11 = i26;
            }
        }
        return i11;
    }

    public static int f(Comparable<Object> key, Object[] a10, int base, int len, int hint) {
        int i10;
        int i11;
        int i12 = base + hint;
        if (key.compareTo(a10[i12]) < 0) {
            int i13 = hint + 1;
            int i14 = 0;
            int i15 = 1;
            while (i15 < i13 && key.compareTo(a10[i12 - i15]) < 0) {
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
            while (i20 < i18 && key.compareTo(a10[i12 + i20]) >= 0) {
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
            if (key.compareTo(a10[base + i25]) < 0) {
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

    public static void p(Object[] a10) {
        q(a10, 0, a10.length);
    }

    public static void q(Object[] a10, int lo, int hi2) {
        n(a10.length, lo, hi2);
        int i10 = hi2 - lo;
        if (i10 < 2) {
            return;
        }
        if (i10 < 32) {
            a(a10, lo, hi2, b(a10, lo, hi2) + lo);
            return;
        }
        f fVar = new f(a10);
        int l10 = l(i10);
        do {
            int b10 = b(a10, lo, hi2);
            if (b10 < l10) {
                int i11 = i10 <= l10 ? i10 : l10;
                a(a10, lo, lo + i11, b10 + lo);
                b10 = i11;
            }
            fVar.m(lo, b10);
            fVar.h();
            lo += b10;
            i10 -= b10;
        } while (i10 != 0);
        fVar.i();
    }

    public void c(Object[] a10, int lo, int hi2) {
        this.f34532e = 0;
        n(a10.length, lo, hi2);
        int i10 = hi2 - lo;
        if (i10 < 2) {
            return;
        }
        if (i10 < 32) {
            a(a10, lo, hi2, b(a10, lo, hi2) + lo);
            return;
        }
        this.f34528a = a10;
        this.f34531d = 0;
        int l10 = l(i10);
        do {
            int b10 = b(a10, lo, hi2);
            if (b10 < l10) {
                int i11 = i10 <= l10 ? i10 : l10;
                a(a10, lo, lo + i11, b10 + lo);
                b10 = i11;
            }
            m(lo, b10);
            h();
            lo += b10;
            i10 -= b10;
        } while (i10 != 0);
        i();
        this.f34528a = null;
        Object[] objArr = this.f34530c;
        int i12 = this.f34531d;
        for (int i13 = 0; i13 < i12; i13++) {
            objArr[i13] = null;
        }
    }

    public final Object[] d(int minCapacity) {
        this.f34531d = Math.max(this.f34531d, minCapacity);
        if (this.f34530c.length < minCapacity) {
            int i10 = (minCapacity >> 1) | minCapacity;
            int i11 = i10 | (i10 >> 2);
            int i12 = i11 | (i11 >> 4);
            int i13 = i12 | (i12 >> 8);
            int i14 = (i13 | (i13 >> 16)) + 1;
            if (i14 >= 0) {
                minCapacity = Math.min(i14, this.f34528a.length >>> 1);
            }
            this.f34530c = new Object[minCapacity];
        }
        return this.f34530c;
    }

    public final void g(int i10) {
        int[] iArr = this.f34533f;
        int i11 = iArr[i10];
        int[] iArr2 = this.f34534g;
        int i12 = iArr2[i10];
        int i13 = i10 + 1;
        int i14 = iArr[i13];
        int i15 = iArr2[i13];
        iArr2[i10] = i12 + i15;
        int i16 = this.f34532e;
        if (i10 == i16 - 3) {
            int i17 = i10 + 2;
            iArr[i13] = iArr[i17];
            iArr2[i13] = iArr2[i17];
        }
        this.f34532e = i16 - 1;
        Object[] objArr = this.f34528a;
        int f10 = f((Comparable) objArr[i14], objArr, i11, i12, 0);
        int i18 = i11 + f10;
        int i19 = i12 - f10;
        if (i19 == 0) {
            return;
        }
        Object[] objArr2 = this.f34528a;
        int e10 = e((Comparable) objArr2[(i18 + i19) - 1], objArr2, i14, i15, i15 - 1);
        if (e10 == 0) {
            return;
        }
        if (i19 <= e10) {
            k(i18, i19, i14, e10);
        } else {
            j(i18, i19, i14, e10);
        }
    }

    public final void h() {
        while (true) {
            int i10 = this.f34532e;
            if (i10 <= 1) {
                return;
            }
            int i11 = i10 - 2;
            if (i11 > 0) {
                int[] iArr = this.f34534g;
                int i12 = iArr[i10 - 3];
                int i13 = iArr[i11];
                int i14 = iArr[i10 - 1];
                if (i12 <= i13 + i14) {
                    if (i12 < i14) {
                        i11 = i10 - 3;
                    }
                    g(i11);
                }
            }
            int[] iArr2 = this.f34534g;
            if (iArr2[i11] > iArr2[i10 - 1]) {
                return;
            } else {
                g(i11);
            }
        }
    }

    public final void i() {
        while (true) {
            int i10 = this.f34532e;
            if (i10 <= 1) {
                return;
            }
            int i11 = i10 - 2;
            if (i11 > 0) {
                int[] iArr = this.f34534g;
                if (iArr[i10 - 3] < iArr[i10 - 1]) {
                    i11 = i10 - 3;
                }
            }
            g(i11);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
    
        r12 = r8 - f((java.lang.Comparable) r5[r9], r4, r18, r8, r8 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0084, code lost:
    
        if (r12 == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0086, code lost:
    
        r2 = r2 - r12;
        r7 = r7 - r12;
        r8 = r8 - r12;
        java.lang.System.arraycopy(r4, r7 + 1, r4, r2 + 1, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0090, code lost:
    
        if (r8 != 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0092, code lost:
    
        r12 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0094, code lost:
    
        r13 = r2 - 1;
        r14 = r9 - 1;
        r4[r2] = r5[r9];
        r2 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
    
        if (r2 != 1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a2, code lost:
    
        r3 = r2 - e((java.lang.Comparable) r4[r7], r5, 0, r2, r3 - 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ae, code lost:
    
        if (r3 == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b0, code lost:
    
        r9 = r13 - r3;
        r13 = r14 - r3;
        r2 = r2 - r3;
        java.lang.System.arraycopy(r5, r13 + 1, r4, r9 + 1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
    
        if (r2 > 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c2, code lost:
    
        r13 = r9;
        r9 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c9, code lost:
    
        r14 = r13 - 1;
        r15 = r7 - 1;
        r4[r13] = r4[r7];
        r8 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d3, code lost:
    
        if (r8 != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00fd, code lost:
    
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0100, code lost:
    
        if (r12 < 7) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0102, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0105, code lost:
    
        if (r3 < 7) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0107, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010b, code lost:
    
        if ((r3 | r12) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0117, code lost:
    
        r3 = r2;
        r2 = r14;
        r7 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010d, code lost:
    
        if (r11 >= 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010f, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0109, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0104, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d5, code lost:
    
        r3 = r2;
        r12 = r14;
        r7 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00be, code lost:
    
        r3 = r2;
        r12 = r9;
        r9 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c8, code lost:
    
        r9 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00a0, code lost:
    
        r3 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x006d, code lost:
    
        r12 = r13;
        r9 = r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(int base1, int len1, int base2, int len2) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = len2;
        Object[] objArr = this.f34528a;
        Object[] d10 = d(i14);
        System.arraycopy(objArr, base2, d10, 0, i14);
        int i15 = base1 + len1;
        int i16 = i15 - 1;
        int i17 = i14 - 1;
        int i18 = base2 + i14;
        int i19 = i18 - 1;
        int i20 = i18 - 2;
        int i21 = i15 - 2;
        objArr[i19] = objArr[i16];
        int i22 = len1 - 1;
        if (i22 == 0) {
            System.arraycopy(d10, 0, objArr, i20 - i17, i14);
            return;
        }
        if (i14 == 1) {
            int i23 = i20 - i22;
            System.arraycopy(objArr, (i21 - i22) + 1, objArr, i23 + 1, i22);
            objArr[i23] = d10[i17];
            return;
        }
        int i24 = this.f34529b;
        loop0: while (true) {
            int i25 = 0;
            int i26 = 0;
            while (true) {
                if (((Comparable) d10[i17]).compareTo(objArr[i21]) < 0) {
                    i10 = i20 - 1;
                    int i27 = i21 - 1;
                    objArr[i20] = objArr[i21];
                    i26++;
                    i22--;
                    if (i22 == 0) {
                        i21 = i27;
                        break loop0;
                    } else {
                        i20 = i10;
                        i21 = i27;
                        i25 = 0;
                    }
                } else {
                    int i28 = i20 - 1;
                    int i29 = i17 - 1;
                    objArr[i20] = d10[i17];
                    i25++;
                    i14--;
                    if (i14 == 1) {
                        break loop0;
                    }
                    i20 = i28;
                    i17 = i29;
                    i26 = 0;
                }
                if ((i26 | i25) >= i24) {
                    break;
                }
            }
            i24 += 2;
            i14 = i11;
            i20 = i12;
            i21 = i13;
        }
        if (i24 < 1) {
            i24 = 1;
        }
        this.f34529b = i24;
        if (i14 == 1) {
            int i30 = i10 - i22;
            System.arraycopy(objArr, (i21 - i22) + 1, objArr, i30 + 1, i22);
            objArr[i30] = d10[i17];
        } else {
            if (i14 == 0) {
                throw new IllegalArgumentException("Comparison method violates its general contract!");
            }
            System.arraycopy(d10, 0, objArr, i10 - (i14 - 1), i14);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
    
        r6 = f((java.lang.Comparable) r0[r4], r1, r5, r13, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r6 == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        java.lang.System.arraycopy(r1, r5, r0, r3, r6);
        r3 = r3 + r6;
        r5 = r5 + r6;
        r13 = r13 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0072, code lost:
    
        if (r13 > 1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
    
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0076, code lost:
    
        r7 = r3 + 1;
        r8 = r4 + 1;
        r0[r3] = r0[r4];
        r15 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        if (r15 != 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0084, code lost:
    
        r3 = e((java.lang.Comparable) r1[r5], r0, r8, r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
    
        if (r3 == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008e, code lost:
    
        java.lang.System.arraycopy(r0, r8, r0, r7, r3);
        r4 = r7 + r3;
        r7 = r8 + r3;
        r15 = r15 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0096, code lost:
    
        if (r15 != 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009b, code lost:
    
        r7 = r4;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a0, code lost:
    
        r8 = r7 + 1;
        r9 = r5 + 1;
        r0[r7] = r1[r5];
        r13 = r13 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00aa, code lost:
    
        if (r13 != 1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00cc, code lost:
    
        r14 = r14 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cf, code lost:
    
        if (r6 < 7) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d1, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d4, code lost:
    
        if (r3 < 7) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d6, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00da, code lost:
    
        if ((r3 | r6) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e5, code lost:
    
        r3 = r8;
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00dc, code lost:
    
        if (r14 >= 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00de, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d8, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d3, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ac, code lost:
    
        r6 = r8;
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0098, code lost:
    
        r6 = r4;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x009f, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0082, code lost:
    
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0044, code lost:
    
        r4 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(int base1, int len1, int base2, int len2) {
        int i10;
        int i11;
        int i12;
        Object[] objArr = this.f34528a;
        Object[] d10 = d(len1);
        System.arraycopy(objArr, base1, d10, 0, len1);
        int i13 = base1 + 1;
        int i14 = base2 + 1;
        objArr[base1] = objArr[base2];
        int i15 = len2 - 1;
        if (i15 == 0) {
            System.arraycopy(d10, 0, objArr, i13, len1);
            return;
        }
        if (len1 == 1) {
            System.arraycopy(objArr, i14, objArr, i13, i15);
            objArr[i13 + i15] = d10[0];
            return;
        }
        int i16 = this.f34529b;
        int i17 = 0;
        loop0: while (true) {
            int i18 = 0;
            int i19 = 0;
            while (true) {
                if (((Comparable) objArr[i14]).compareTo(d10[i17]) < 0) {
                    i10 = i13 + 1;
                    int i20 = i14 + 1;
                    objArr[i13] = objArr[i14];
                    i19++;
                    i15--;
                    if (i15 == 0) {
                        break loop0;
                    }
                    i13 = i10;
                    i14 = i20;
                    i18 = 0;
                } else {
                    int i21 = i13 + 1;
                    int i22 = i17 + 1;
                    objArr[i13] = d10[i17];
                    i18++;
                    len1--;
                    if (len1 == 1) {
                        i10 = i21;
                        i17 = i22;
                        break loop0;
                    } else {
                        i13 = i21;
                        i17 = i22;
                        i19 = 0;
                    }
                }
                if ((i18 | i19) >= i16) {
                    break;
                }
            }
            i16 += 2;
            i13 = i11;
            i17 = i12;
        }
        if (i16 < 1) {
            i16 = 1;
        }
        this.f34529b = i16;
        if (len1 == 1) {
            System.arraycopy(objArr, i14, objArr, i10, i15);
            objArr[i10 + i15] = d10[i17];
        } else {
            if (len1 == 0) {
                throw new IllegalArgumentException("Comparison method violates its general contract!");
            }
            System.arraycopy(d10, i17, objArr, i10, len1);
        }
    }

    public final void m(int runBase, int runLen) {
        int[] iArr = this.f34533f;
        int i10 = this.f34532e;
        iArr[i10] = runBase;
        this.f34534g[i10] = runLen;
        this.f34532e = i10 + 1;
    }

    public f(Object[] a10) {
        this.f34529b = 7;
        this.f34532e = 0;
        this.f34528a = a10;
        int length = a10.length;
        this.f34530c = new Object[length < 512 ? length >>> 1 : 256];
        int i10 = length < 120 ? 5 : length < 1542 ? 10 : length < 119151 ? 19 : 40;
        this.f34533f = new int[i10];
        this.f34534g = new int[i10];
    }
}
