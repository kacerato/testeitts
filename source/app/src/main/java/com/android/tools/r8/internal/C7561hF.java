package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C7561hF extends K implements Cloneable {

    public transient int[] f48508c;

    public transient int[] f48509d;

    public transient int f48510e;

    public transient boolean f48511f;

    public transient int f48512g;

    public transient int f48513h;

    public int f48514i;

    public transient C7060eF f48515j;

    public transient C6727cF f48516k;

    public transient ZE f48517l;

    public C7561hF(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The expected number of elements must be nonnegative");
        }
        int a10 = AbstractC7878jA.a(i10, 0.75f);
        this.f48512g = a10;
        this.f48510e = a10 - 1;
        this.f48513h = AbstractC7878jA.b(a10, 0.75f);
        int i11 = this.f48512g + 1;
        this.f48508c = new int[i11];
        this.f48509d = new int[i11];
    }

    @Override
    public final boolean a(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f48511f;
        }
        int[] iArr = this.f48508c;
        int a10 = AbstractC7878jA.a(i10) & this.f48510e;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return false;
        }
        if (i10 == i12) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f48510e;
            i11 = iArr[a10];
            if (i11 == 0) {
                return false;
            }
        } while (i10 != i11);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x001c, code lost:
    
        if (r3 == r5) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x001e, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0020, code lost:
    
        r2 = (r2 + 1) & r4.f48510e;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0026, code lost:
    
        if (r3 == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0028, code lost:
    
        if (r3 != r5) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        if (i10 != 0) {
            int[] iArr = this.f48508c;
            int a10 = AbstractC7878jA.a(i10) & this.f48510e;
            int i15 = iArr[a10];
            if (i15 != 0) {
            }
            i12 = a10;
            this.f48508c[i12] = i10;
            this.f48509d[i12] = i11;
            i14 = this.f48514i;
            this.f48514i = i14 + 1;
            if (i14 >= this.f48513h) {
            }
            i13 = -1;
        } else if (this.f48511f) {
            i13 = this.f48512g;
        } else {
            this.f48511f = true;
            i12 = this.f48512g;
            this.f48508c[i12] = i10;
            this.f48509d[i12] = i11;
            i14 = this.f48514i;
            this.f48514i = i14 + 1;
            if (i14 >= this.f48513h) {
                e(AbstractC7878jA.a(i14 + 2, 0.75f));
            }
            i13 = -1;
        }
        if (i13 < 0) {
            return this.f41547b;
        }
        int[] iArr2 = this.f48509d;
        int i16 = iArr2[i13];
        iArr2[i13] = i11;
        return i16;
    }

    @Override
    public final void clear() {
        if (this.f48514i == 0) {
            return;
        }
        this.f48514i = 0;
        this.f48511f = false;
        Arrays.fill(this.f48508c, 0);
    }

    public final Object clone() {
        try {
            C7561hF c7561hF = (C7561hF) super.clone();
            c7561hF.f48516k = null;
            c7561hF.f48517l = null;
            c7561hF.f48515j = null;
            c7561hF.f48511f = this.f48511f;
            c7561hF.f48508c = (int[]) this.f48508c.clone();
            c7561hF.f48509d = (int[]) this.f48509d.clone();
            return c7561hF;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean d(int i10) {
        int[] iArr = this.f48509d;
        int[] iArr2 = this.f48508c;
        if (this.f48511f && iArr[this.f48512g] == i10) {
            return true;
        }
        int i11 = this.f48512g;
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
        int i11;
        int[] iArr = this.f48508c;
        int[] iArr2 = this.f48509d;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        int[] iArr3 = new int[i13];
        int[] iArr4 = new int[i13];
        int i14 = this.f48512g;
        int i15 = this.f48511f ? this.f48514i - 1 : this.f48514i;
        while (true) {
            int i16 = i15 - 1;
            if (i15 == 0) {
                iArr4[i10] = iArr2[this.f48512g];
                this.f48512g = i10;
                this.f48510e = i12;
                this.f48513h = AbstractC7878jA.b(i10, 0.75f);
                this.f48508c = iArr3;
                this.f48509d = iArr4;
                return;
            }
            do {
                i14--;
                i11 = iArr[i14];
            } while (i11 == 0);
            int a10 = AbstractC7878jA.a(i11) & i12;
            if (iArr3[a10] == 0) {
                iArr3[a10] = iArr[i14];
                iArr4[a10] = iArr2[i14];
                i15 = i16;
            }
            do {
                a10 = (a10 + 1) & i12;
            } while (iArr3[a10] != 0);
            iArr3[a10] = iArr[i14];
            iArr4[a10] = iArr2[i14];
            i15 = i16;
        }
    }

    public final int f(int i10) {
        int i11;
        int i12;
        int i13 = this.f48509d[i10];
        this.f48514i--;
        int[] iArr = this.f48508c;
        loop0: while (true) {
            int i14 = (i10 + 1) & this.f48510e;
            while (true) {
                i11 = iArr[i14];
                if (i11 == 0) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(i11);
                int i15 = this.f48510e;
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
            int[] iArr2 = this.f48509d;
            iArr2[i10] = iArr2[i14];
            i10 = i14;
        }
        iArr[i10] = 0;
        if (this.f48514i < this.f48513h / 4 && (i12 = this.f48512g) > 16) {
            e(i12 / 2);
        }
        return i13;
    }

    @Override
    public final int get(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f48511f ? this.f48509d[this.f48512g] : this.f41547b;
        }
        int[] iArr = this.f48508c;
        int a10 = AbstractC7878jA.a(i10) & this.f48510e;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return this.f41547b;
        }
        if (i10 == i12) {
            return this.f48509d[a10];
        }
        do {
            a10 = (a10 + 1) & this.f48510e;
            i11 = iArr[a10];
            if (i11 == 0) {
                return this.f41547b;
            }
        } while (i10 != i11);
        return this.f48509d[a10];
    }

    @Override
    public final I30 h() {
        if (this.f48515j == null) {
            this.f48515j = new C7060eF(this);
        }
        return this.f48515j;
    }

    @Override
    public final int hashCode() {
        int i10;
        int i11 = this.f48511f ? this.f48514i - 1 : this.f48514i;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            while (true) {
                i10 = this.f48508c[i13];
                if (i10 == 0) {
                    i13++;
                }
            }
            i12 += i10 ^ this.f48509d[i13];
            i13++;
            i11 = i14;
        }
        return this.f48511f ? i12 + this.f48509d[this.f48512g] : i12;
    }

    @Override
    public final boolean isEmpty() {
        return this.f48514i == 0;
    }

    @Override
    public final Set o() {
        if (this.f48516k == null) {
            this.f48516k = new C6727cF(this);
        }
        return this.f48516k;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f48512g) {
                e(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f48514i) / 0.75f))));
            if (min > this.f48512g) {
                e(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final int remove(int i10) {
        int i11;
        if (i10 == 0) {
            if (!this.f48511f) {
                return this.f41547b;
            }
            this.f48511f = false;
            int[] iArr = this.f48509d;
            int i12 = this.f48512g;
            int i13 = iArr[i12];
            int i14 = this.f48514i - 1;
            this.f48514i = i14;
            if (i14 < this.f48513h / 4 && i12 > 16) {
                e(i12 / 2);
            }
            return i13;
        }
        int[] iArr2 = this.f48508c;
        int a10 = AbstractC7878jA.a(i10) & this.f48510e;
        int i15 = iArr2[a10];
        if (i15 == 0) {
            return this.f41547b;
        }
        if (i10 == i15) {
            return f(a10);
        }
        do {
            a10 = (a10 + 1) & this.f48510e;
            i11 = iArr2[a10];
            if (i11 == 0) {
                return this.f41547b;
            }
        } while (i10 != i11);
        return f(a10);
    }

    @Override
    public final int size() {
        return this.f48514i;
    }

    @Override
    public final Collection values() {
        if (this.f48517l == null) {
            this.f48517l = new ZE(this);
        }
        return this.f48517l;
    }
}
