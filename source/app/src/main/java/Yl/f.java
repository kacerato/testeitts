package Yl;

public class f {

    public long[] f30637a;

    public int f30638b;

    public f(int i10) {
        this.f30637a = new long[i10];
    }

    public final void a(f fVar) {
        long[] jArr = fVar.f30637a;
        int length = jArr.length;
        long[] jArr2 = this.f30637a;
        if (length > jArr2.length) {
            this.f30637a = org.bouncycastle.util.a.T(jArr2, jArr.length);
        }
        int i10 = 0;
        while (true) {
            long[] jArr3 = fVar.f30637a;
            if (i10 >= jArr3.length) {
                return;
            }
            long[] jArr4 = this.f30637a;
            jArr4[i10] = (jArr4[i10] + jArr3[i10]) & 34342963199L;
            i10++;
        }
    }

    public f b(f fVar) {
        long[] jArr;
        long[] jArr2;
        int length = this.f30637a.length;
        if (fVar.f30637a.length != length || this.f30638b != fVar.f30638b) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        f d10 = d(fVar);
        if (d10.f30637a.length > length) {
            if (this.f30638b % 2 == 0) {
                int i10 = length;
                while (true) {
                    jArr2 = d10.f30637a;
                    if (i10 >= jArr2.length) {
                        break;
                    }
                    int i11 = i10 - length;
                    jArr2[i11] = (jArr2[i11] + jArr2[i10]) & 34342963199L;
                    i10++;
                }
                d10.f30637a = org.bouncycastle.util.a.T(jArr2, length);
            } else {
                int i12 = length;
                while (true) {
                    jArr = d10.f30637a;
                    if (i12 >= jArr.length) {
                        break;
                    }
                    int i13 = i12 - length;
                    long j10 = jArr[i13] + (jArr[i12 - 1] >> 24);
                    jArr[i13] = j10;
                    long j11 = j10 + ((2047 & jArr[i12]) << 24);
                    jArr[i13] = j11;
                    jArr[i13] = j11 & 34342963199L;
                    i12++;
                }
                long[] T10 = org.bouncycastle.util.a.T(jArr, length);
                d10.f30637a = T10;
                int length2 = T10.length - 1;
                T10[length2] = T10[length2] & 2047;
            }
        }
        f fVar2 = new f(d10.f30637a);
        fVar2.f30638b = this.f30638b;
        return fVar2;
    }

    public void c(int i10) {
        long j10 = i10;
        long j11 = (j10 << 24) + j10;
        int i11 = 0;
        while (true) {
            long[] jArr = this.f30637a;
            if (i11 >= jArr.length) {
                return;
            }
            jArr[i11] = (jArr[i11] << 1) & j11;
            i11++;
        }
    }

    public Object clone() {
        f fVar = new f((long[]) this.f30637a.clone());
        fVar.f30638b = this.f30638b;
        return fVar;
    }

    public final f d(f fVar) {
        long[] jArr = this.f30637a;
        long[] jArr2 = fVar.f30637a;
        int length = jArr2.length;
        int i10 = 0;
        if (length <= 32) {
            int i11 = length * 2;
            f fVar2 = new f(new long[i11]);
            for (int i12 = 0; i12 < i11; i12++) {
                for (int max = Math.max(0, (i12 - length) + 1); max <= Math.min(i12, length - 1); max++) {
                    long j10 = jArr[i12 - max] * jArr2[max];
                    long[] jArr3 = fVar2.f30637a;
                    jArr3[i12] = (jArr3[i12] + (j10 & ((j10 & 2047) + 34342961152L))) & 34342963199L;
                    int i13 = i12 + 1;
                    jArr3[i13] = (jArr3[i13] + ((j10 >>> 48) & 2047)) & 34342963199L;
                }
            }
            return fVar2;
        }
        int i14 = length / 2;
        f fVar3 = new f(org.bouncycastle.util.a.T(jArr, i14));
        f fVar4 = new f(org.bouncycastle.util.a.a0(jArr, i14, length));
        f fVar5 = new f(org.bouncycastle.util.a.T(jArr2, i14));
        f fVar6 = new f(org.bouncycastle.util.a.a0(jArr2, i14, length));
        f fVar7 = (f) fVar3.clone();
        fVar7.a(fVar4);
        f fVar8 = (f) fVar5.clone();
        fVar8.a(fVar6);
        f d10 = fVar3.d(fVar5);
        f d11 = fVar4.d(fVar6);
        f d12 = fVar7.d(fVar8);
        d12.e(d10);
        d12.e(d11);
        f fVar9 = new f(length * 2);
        int i15 = 0;
        while (true) {
            long[] jArr4 = d10.f30637a;
            if (i15 >= jArr4.length) {
                break;
            }
            fVar9.f30637a[i15] = jArr4[i15] & 34342963199L;
            i15++;
        }
        int i16 = 0;
        while (true) {
            long[] jArr5 = d12.f30637a;
            if (i16 >= jArr5.length) {
                break;
            }
            long[] jArr6 = fVar9.f30637a;
            int i17 = i14 + i16;
            jArr6[i17] = (jArr6[i17] + jArr5[i16]) & 34342963199L;
            i16++;
        }
        while (true) {
            long[] jArr7 = d11.f30637a;
            if (i10 >= jArr7.length) {
                return fVar9;
            }
            long[] jArr8 = fVar9.f30637a;
            int i18 = (i14 * 2) + i10;
            jArr8[i18] = (jArr8[i18] + jArr7[i10]) & 34342963199L;
            i10++;
        }
    }

    public final void e(f fVar) {
        long[] jArr = fVar.f30637a;
        int length = jArr.length;
        long[] jArr2 = this.f30637a;
        if (length > jArr2.length) {
            this.f30637a = org.bouncycastle.util.a.T(jArr2, jArr.length);
        }
        int i10 = 0;
        while (true) {
            long[] jArr3 = fVar.f30637a;
            if (i10 >= jArr3.length) {
                return;
            }
            long[] jArr4 = this.f30637a;
            jArr4[i10] = 34342963199L & ((jArr4[i10] + 140737496743936L) - jArr3[i10]);
            i10++;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return org.bouncycastle.util.a.j(this.f30637a, ((f) obj).f30637a);
        }
        return false;
    }

    public void f(f fVar, int i10) {
        long j10 = i10;
        long j11 = (j10 << 24) + j10;
        int i11 = 0;
        while (true) {
            long[] jArr = fVar.f30637a;
            if (i11 >= jArr.length) {
                return;
            }
            long[] jArr2 = this.f30637a;
            jArr2[i11] = ((jArr2[i11] + 140737496743936L) - jArr[i11]) & j11;
            i11++;
        }
    }

    public e g() {
        int[] iArr = new int[this.f30638b];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            long[] jArr = this.f30637a;
            if (i10 >= jArr.length) {
                return new e(iArr);
            }
            int i12 = i11 + 1;
            long j10 = jArr[i10];
            iArr[i11] = (int) (j10 & 2047);
            if (i12 < this.f30638b) {
                i11 += 2;
                iArr[i12] = (int) ((j10 >> 24) & 2047);
            } else {
                i11 = i12;
            }
            i10++;
        }
    }

    public f(e eVar) {
        long j10;
        int length = eVar.f30630a.length;
        this.f30638b = length;
        this.f30637a = new long[(length + 1) / 2];
        int i10 = 0;
        int i11 = 0;
        while (i10 < this.f30638b) {
            int i12 = i10 + 1;
            int i13 = eVar.f30630a[i10];
            while (i13 < 0) {
                i13 += 2048;
            }
            if (i12 < this.f30638b) {
                i10 += 2;
                j10 = eVar.f30630a[i12];
            } else {
                i10 = i12;
                j10 = 0;
            }
            while (j10 < 0) {
                j10 += 2048;
            }
            this.f30637a[i11] = i13 + (j10 << 24);
            i11++;
        }
    }

    public f(long[] jArr) {
        this.f30637a = jArr;
    }
}
