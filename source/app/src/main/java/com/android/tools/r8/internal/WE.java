package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class WE extends K implements Cloneable, YE, SortedMap {

    public transient int[] f45341c;

    public transient int[] f45342d;

    public transient int f45343e;

    public transient boolean f45344f;

    public transient int f45345g = -1;

    public transient int f45346h = -1;

    public transient long[] f45347i;

    public transient int f45348j;

    public transient int f45349k;

    public int f45350l;

    public transient TE f45351m;

    public transient RE f45352n;

    public transient OE f45353o;

    public WE(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The expected number of elements must be nonnegative");
        }
        int a10 = AbstractC7878jA.a(i10, 0.75f);
        this.f45348j = a10;
        this.f45343e = a10 - 1;
        this.f45349k = AbstractC7878jA.b(a10, 0.75f);
        int i11 = this.f45348j + 1;
        this.f45341c = new int[i11];
        this.f45342d = new int[i11];
        this.f45347i = new long[i11];
    }

    @Override
    public final boolean a(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f45344f;
        }
        int[] iArr = this.f45341c;
        int a10 = AbstractC7878jA.a(i10) & this.f45343e;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return false;
        }
        if (i10 == i12) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f45343e;
            i11 = iArr[a10];
            if (i11 == 0) {
                return false;
            }
        } while (i10 != i11);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x001c, code lost:
    
        if (r3 == r10) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x001e, code lost:
    
        r10 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0020, code lost:
    
        r2 = (r2 + 1) & r9.f45343e;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0026, code lost:
    
        if (r3 == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0028, code lost:
    
        if (r3 != r10) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        if (i10 != 0) {
            int[] iArr = this.f45341c;
            int a10 = AbstractC7878jA.a(i10) & this.f45343e;
            int i15 = iArr[a10];
            if (i15 != 0) {
            }
            i12 = a10;
            this.f45341c[i12] = i10;
            this.f45342d[i12] = i11;
            i14 = this.f45350l;
            if (i14 != 0) {
            }
            this.f45350l = i14 + 1;
            if (i14 >= this.f45349k) {
            }
            i13 = -1;
        } else if (this.f45344f) {
            i13 = this.f45348j;
        } else {
            this.f45344f = true;
            i12 = this.f45348j;
            this.f45341c[i12] = i10;
            this.f45342d[i12] = i11;
            i14 = this.f45350l;
            if (i14 != 0) {
                this.f45346h = i12;
                this.f45345g = i12;
                this.f45347i[i12] = -1;
            } else {
                long[] jArr = this.f45347i;
                int i16 = this.f45346h;
                long j10 = jArr[i16];
                jArr[i16] = j10 ^ (((i12 & 4294967295L) ^ j10) & 4294967295L);
                jArr[i12] = ((i16 & 4294967295L) << 32) | 4294967295L;
                this.f45346h = i12;
            }
            this.f45350l = i14 + 1;
            if (i14 >= this.f45349k) {
                f(AbstractC7878jA.a(i14 + 2, 0.75f));
            }
            i13 = -1;
        }
        if (i13 < 0) {
            return this.f41547b;
        }
        int[] iArr2 = this.f45342d;
        int i17 = iArr2[i13];
        iArr2[i13] = i11;
        return i17;
    }

    public final void c(int i10, int i11) {
        if (this.f45350l == 1) {
            this.f45346h = i11;
            this.f45345g = i11;
            this.f45347i[i11] = -1;
            return;
        }
        if (this.f45345g == i10) {
            this.f45345g = i11;
            long[] jArr = this.f45347i;
            int i12 = (int) jArr[i10];
            long j10 = jArr[i12];
            jArr[i12] = (C12510d2.f66536l & (((4294967295L & i11) << 32) ^ j10)) ^ j10;
            jArr[i11] = jArr[i10];
            return;
        }
        if (this.f45346h == i10) {
            this.f45346h = i11;
            long[] jArr2 = this.f45347i;
            int i13 = (int) (jArr2[i10] >>> 32);
            long j11 = jArr2[i13];
            jArr2[i13] = j11 ^ (4294967295L & ((i11 & 4294967295L) ^ j11));
            jArr2[i11] = jArr2[i10];
            return;
        }
        long[] jArr3 = this.f45347i;
        long j12 = jArr3[i10];
        int i14 = (int) (j12 >>> 32);
        int i15 = (int) j12;
        long j13 = jArr3[i14];
        long j14 = i11 & 4294967295L;
        jArr3[i14] = ((j13 ^ j14) & 4294967295L) ^ j13;
        long j15 = jArr3[i15];
        jArr3[i15] = (C12510d2.f66536l & ((j14 << 32) ^ j15)) ^ j15;
        jArr3[i11] = j12;
    }

    @Override
    public final void clear() {
        if (this.f45350l == 0) {
            return;
        }
        this.f45350l = 0;
        this.f45344f = false;
        Arrays.fill(this.f45341c, 0);
        this.f45346h = -1;
        this.f45345g = -1;
    }

    public final Object clone() {
        try {
            WE we2 = (WE) super.clone();
            we2.f45352n = null;
            we2.f45353o = null;
            we2.f45351m = null;
            we2.f45344f = this.f45344f;
            we2.f45341c = (int[]) this.f45341c.clone();
            we2.f45342d = (int[]) this.f45342d.clone();
            we2.f45347i = (long[]) this.f45347i.clone();
            return we2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean d(int i10) {
        int[] iArr = this.f45342d;
        int[] iArr2 = this.f45341c;
        if (this.f45344f && iArr[this.f45348j] == i10) {
            return true;
        }
        int i11 = this.f45348j;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return false;
            }
            if (iArr2[i12] != 0 && iArr[i12] == i10) {
                return true;
            }
            i11 = i12;
        }
    }

    public final void e(int i10) {
        if (this.f45350l == 0) {
            this.f45346h = -1;
            this.f45345g = -1;
            return;
        }
        if (this.f45345g == i10) {
            long[] jArr = this.f45347i;
            int i11 = (int) jArr[i10];
            this.f45345g = i11;
            if (i11 >= 0) {
                jArr[i11] = C12510d2.f66536l | jArr[i11];
                return;
            }
            return;
        }
        if (this.f45346h == i10) {
            long[] jArr2 = this.f45347i;
            int i12 = (int) (jArr2[i10] >>> 32);
            this.f45346h = i12;
            if (i12 >= 0) {
                jArr2[i12] = jArr2[i12] | 4294967295L;
                return;
            }
            return;
        }
        long[] jArr3 = this.f45347i;
        long j10 = jArr3[i10];
        int i13 = (int) (j10 >>> 32);
        int i14 = (int) j10;
        long j11 = jArr3[i13];
        jArr3[i13] = (4294967295L & ((j10 & 4294967295L) ^ j11)) ^ j11;
        long j12 = jArr3[i14];
        jArr3[i14] = (C12510d2.f66536l & ((j10 & C12510d2.f66536l) ^ j12)) ^ j12;
    }

    @Override
    public final Set entrySet() {
        if (this.f45351m == null) {
            this.f45351m = new TE(this);
        }
        return this.f45351m;
    }

    public final void f(int i10) {
        int i11;
        int[] iArr;
        int[] iArr2;
        int[] iArr3 = this.f45341c;
        int[] iArr4 = this.f45342d;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        int[] iArr5 = new int[i13];
        int[] iArr6 = new int[i13];
        int i14 = this.f45345g;
        long[] jArr = this.f45347i;
        long[] jArr2 = new long[i13];
        int i15 = -1;
        this.f45345g = -1;
        int i16 = this.f45350l;
        int i17 = -1;
        int i18 = -1;
        while (true) {
            int i19 = i16 - 1;
            if (i16 == 0) {
                break;
            }
            int i20 = iArr3[i14];
            if (i20 != 0) {
                int a10 = AbstractC7878jA.a(i20);
                while (true) {
                    i11 = a10 & i12;
                    if (iArr5[i11] == 0) {
                        break;
                    } else {
                        a10 = i11 + 1;
                    }
                }
            } else {
                i11 = i10;
            }
            iArr5[i11] = iArr3[i14];
            iArr6[i11] = iArr4[i14];
            if (i18 != i15) {
                long j10 = jArr2[i17];
                iArr = iArr3;
                iArr2 = iArr4;
                jArr2[i17] = j10 ^ ((j10 ^ (i11 & 4294967295L)) & 4294967295L);
                long j11 = jArr2[i11];
                int i21 = i11;
                jArr2[i21] = j11 ^ ((((i17 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l);
                i11 = i21;
            } else {
                iArr = iArr3;
                iArr2 = iArr4;
                this.f45345g = i11;
                jArr2[i11] = -1;
            }
            i17 = i11;
            i16 = i19;
            iArr4 = iArr2;
            i15 = -1;
            int i22 = i14;
            i14 = (int) jArr[i14];
            iArr3 = iArr;
            i18 = i22;
        }
        this.f45347i = jArr2;
        this.f45346h = i17;
        if (i17 != -1) {
            jArr2[i17] = jArr2[i17] | 4294967295L;
        }
        this.f45348j = i10;
        this.f45343e = i12;
        this.f45349k = AbstractC7878jA.b(i10, 0.75f);
        this.f45341c = iArr5;
        this.f45342d = iArr6;
    }

    @Override
    public final Object firstKey() {
        if (this.f45350l != 0) {
            return Integer.valueOf(this.f45341c[this.f45345g]);
        }
        throw new NoSuchElementException();
    }

    public final int g(int i10) {
        int i11;
        int i12;
        int i13 = this.f45342d[i10];
        this.f45350l--;
        e(i10);
        int[] iArr = this.f45341c;
        loop0: while (true) {
            int i14 = (i10 + 1) & this.f45343e;
            while (true) {
                i11 = iArr[i14];
                if (i11 == 0) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(i11);
                int i15 = this.f45343e;
                int i16 = a10 & i15;
                if (i10 > i14) {
                    if (i10 >= i16 && i16 > i14) {
                        break;
                    }
                    i14 = (i14 + 1) & i15;
                } else if (i10 < i16 && i16 <= i14) {
                    i14 = (i14 + 1) & i15;
                }
            }
            iArr[i10] = i11;
            int[] iArr2 = this.f45342d;
            iArr2[i10] = iArr2[i14];
            c(i14, i10);
            i10 = i14;
        }
        iArr[i10] = 0;
        if (this.f45350l < this.f45349k / 4 && (i12 = this.f45348j) > 16) {
            f(i12 / 2);
        }
        return i13;
    }

    @Override
    public final int get(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f45344f ? this.f45342d[this.f45348j] : this.f41547b;
        }
        int[] iArr = this.f45341c;
        int a10 = AbstractC7878jA.a(i10) & this.f45343e;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return this.f41547b;
        }
        if (i10 == i12) {
            return this.f45342d[a10];
        }
        do {
            a10 = (a10 + 1) & this.f45343e;
            i11 = iArr[a10];
            if (i11 == 0) {
                return this.f41547b;
            }
        } while (i10 != i11);
        return this.f45342d[a10];
    }

    @Override
    public final I30 h() {
        if (this.f45351m == null) {
            this.f45351m = new TE(this);
        }
        return this.f45351m;
    }

    @Override
    public final int hashCode() {
        int i10;
        int i11 = this.f45344f ? this.f45350l - 1 : this.f45350l;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            while (true) {
                i10 = this.f45341c[i13];
                if (i10 == 0) {
                    i13++;
                }
            }
            i12 += i10 ^ this.f45342d[i13];
            i13++;
            i11 = i14;
        }
        return this.f45344f ? i12 + this.f45342d[this.f45348j] : i12;
    }

    @Override
    public final SortedMap headMap(Object obj) {
        ((Integer) obj).intValue();
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean isEmpty() {
        return this.f45350l == 0;
    }

    @Override
    public final Set o() {
        if (this.f45352n == null) {
            this.f45352n = new RE(this);
        }
        return this.f45352n;
    }

    @Override
    public final Object lastKey() {
        if (this.f45350l != 0) {
            return Integer.valueOf(this.f45341c[this.f45346h]);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f45348j) {
                f(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f45350l) / 0.75f))));
            if (min > this.f45348j) {
                f(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final int remove(int i10) {
        int i11;
        int i12;
        if (i10 == 0) {
            if (!this.f45344f) {
                return this.f41547b;
            }
            this.f45344f = false;
            int[] iArr = this.f45342d;
            int i13 = this.f45348j;
            int i14 = iArr[i13];
            this.f45350l--;
            e(i13);
            if (this.f45350l < this.f45349k / 4 && (i12 = this.f45348j) > 16) {
                f(i12 / 2);
            }
            return i14;
        }
        int[] iArr2 = this.f45341c;
        int a10 = AbstractC7878jA.a(i10) & this.f45343e;
        int i15 = iArr2[a10];
        if (i15 == 0) {
            return this.f41547b;
        }
        if (i10 == i15) {
            return g(a10);
        }
        do {
            a10 = (a10 + 1) & this.f45343e;
            i11 = iArr2[a10];
            if (i11 == 0) {
                return this.f41547b;
            }
        } while (i10 != i11);
        return g(a10);
    }

    @Override
    public final int size() {
        return this.f45350l;
    }

    @Override
    public final SortedMap subMap(Object obj, Object obj2) {
        ((Integer) obj).intValue();
        ((Integer) obj2).intValue();
        throw new UnsupportedOperationException();
    }

    @Override
    public final SortedMap tailMap(Object obj) {
        ((Integer) obj).intValue();
        throw new UnsupportedOperationException();
    }

    @Override
    public final Collection values() {
        if (this.f45353o == null) {
            this.f45353o = new OE(this);
        }
        return this.f45353o;
    }

    @Override
    public final I30 entrySet() {
        if (this.f45351m == null) {
            this.f45351m = new TE(this);
        }
        return this.f45351m;
    }
}
