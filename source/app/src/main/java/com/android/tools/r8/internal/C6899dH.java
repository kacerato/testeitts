package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C6899dH extends T implements Cloneable {

    public transient int[] f47340b;

    public transient Object[] f47341c;

    public transient int f47342d;

    public transient boolean f47343e;

    public transient int f47344f;

    public transient int f47345g;

    public int f47346h;

    public final float f47347i;

    public transient C6399aH f47348j;

    public transient YG f47349k;

    public transient VG f47350l;

    public C6899dH(int i10) {
        if (i10 >= 0) {
            this.f47347i = 0.75f;
            int a10 = AbstractC7878jA.a(i10, 0.75f);
            this.f47344f = a10;
            this.f47342d = a10 - 1;
            this.f47345g = AbstractC7878jA.b(a10, 0.75f);
            int i11 = this.f47344f + 1;
            this.f47340b = new int[i11];
            this.f47341c = new Object[i11];
            return;
        }
        throw new IllegalArgumentException("The expected number of elements must be nonnegative");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x001c, code lost:
    
        if (r3 == r5) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x001e, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0020, code lost:
    
        r2 = (r2 + 1) & r4.f47342d;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0026, code lost:
    
        if (r3 == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0028, code lost:
    
        if (r3 != r5) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(int i10, Object obj) {
        int i11;
        int i12;
        int i13;
        if (i10 == 0) {
            if (this.f47343e) {
                i12 = this.f47344f;
            } else {
                this.f47343e = true;
                i11 = this.f47344f;
                this.f47340b[i11] = i10;
                this.f47341c[i11] = obj;
                i13 = this.f47346h;
                this.f47346h = i13 + 1;
                if (i13 >= this.f47345g) {
                    d(AbstractC7878jA.a(i13 + 2, this.f47347i));
                }
                i12 = -1;
            }
        } else {
            int[] iArr = this.f47340b;
            int a10 = AbstractC7878jA.a(i10) & this.f47342d;
            int i14 = iArr[a10];
            if (i14 != 0) {
            }
            i11 = a10;
            this.f47340b[i11] = i10;
            this.f47341c[i11] = obj;
            i13 = this.f47346h;
            this.f47346h = i13 + 1;
            if (i13 >= this.f47345g) {
            }
            i12 = -1;
        }
        if (i12 < 0) {
            return null;
        }
        Object[] objArr = this.f47341c;
        Object obj2 = objArr[i12];
        objArr[i12] = obj;
        return obj2;
    }

    @Override
    public final I30 c() {
        if (this.f47348j == null) {
            this.f47348j = new C6399aH(this);
        }
        return this.f47348j;
    }

    @Override
    public final void clear() {
        if (this.f47346h == 0) {
            return;
        }
        this.f47346h = 0;
        this.f47343e = false;
        Arrays.fill(this.f47340b, 0);
        Arrays.fill(this.f47341c, (Object) null);
    }

    public final Object clone() {
        try {
            C6899dH c6899dH = (C6899dH) super.clone();
            c6899dH.f47349k = null;
            c6899dH.f47350l = null;
            c6899dH.f47348j = null;
            c6899dH.f47343e = this.f47343e;
            c6899dH.f47340b = (int[]) this.f47340b.clone();
            c6899dH.f47341c = (Object[]) this.f47341c.clone();
            return c6899dH;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsValue(Object obj) {
        Object[] objArr = this.f47341c;
        int[] iArr = this.f47340b;
        if (this.f47343e && objArr[this.f47344f] == obj) {
            return true;
        }
        int i10 = this.f47344f;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (iArr[i11] != 0 && objArr[i11] == obj) {
                return true;
            }
            i10 = i11;
        }
    }

    public final void d(int i10) {
        int i11;
        int[] iArr = this.f47340b;
        Object[] objArr = this.f47341c;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        int[] iArr2 = new int[i13];
        Object[] objArr2 = new Object[i13];
        int i14 = this.f47344f;
        int i15 = this.f47343e ? this.f47346h - 1 : this.f47346h;
        while (true) {
            int i16 = i15 - 1;
            if (i15 == 0) {
                objArr2[i10] = objArr[this.f47344f];
                this.f47344f = i10;
                this.f47342d = i12;
                this.f47345g = AbstractC7878jA.b(i10, this.f47347i);
                this.f47340b = iArr2;
                this.f47341c = objArr2;
                return;
            }
            do {
                i14--;
                i11 = iArr[i14];
            } while (i11 == 0);
            int a10 = AbstractC7878jA.a(i11) & i12;
            if (iArr2[a10] == 0) {
                iArr2[a10] = iArr[i14];
                objArr2[a10] = objArr[i14];
                i15 = i16;
            }
            do {
                a10 = (a10 + 1) & i12;
            } while (iArr2[a10] != 0);
            iArr2[a10] = iArr[i14];
            objArr2[a10] = objArr[i14];
            i15 = i16;
        }
    }

    public final Object e(int i10) {
        int i11;
        int i12;
        Object[] objArr = this.f47341c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f47346h--;
        int[] iArr = this.f47340b;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f47342d;
            while (true) {
                i11 = iArr[i13];
                if (i11 == 0) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(i11);
                int i14 = this.f47342d;
                int i15 = a10 & i14;
                if (i10 > i13) {
                    if (i10 >= i15 && i15 > i13) {
                        break;
                    }
                    i13 = (i13 + 1) & i14;
                } else if (i10 < i15 && i15 <= i13) {
                    i13 = (i13 + 1) & i14;
                }
            }
            iArr[i10] = i11;
            Object[] objArr2 = this.f47341c;
            objArr2[i10] = objArr2[i13];
            i10 = i13;
        }
        iArr[i10] = 0;
        this.f47341c[i10] = null;
        if (this.f47346h < this.f47345g / 4 && (i12 = this.f47344f) > 16) {
            d(i12 / 2);
        }
        return obj;
    }

    @Override
    public final Object get(int i10) {
        int i11;
        if (i10 == 0) {
            if (this.f47343e) {
                return this.f47341c[this.f47344f];
            }
            return null;
        }
        int[] iArr = this.f47340b;
        int a10 = AbstractC7878jA.a(i10) & this.f47342d;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return null;
        }
        if (i10 == i12) {
            return this.f47341c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f47342d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return null;
            }
        } while (i10 != i11);
        return this.f47341c[a10];
    }

    @Override
    public final int hashCode() {
        int i10;
        int i11 = this.f47343e ? this.f47346h - 1 : this.f47346h;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            while (true) {
                i10 = this.f47340b[i12];
                if (i10 != 0) {
                    break;
                }
                i12++;
            }
            Object obj = this.f47341c[i12];
            if (this != obj) {
                i10 ^= obj == null ? 0 : System.identityHashCode(obj);
            }
            i13 += i10;
            i12++;
            i11 = i14;
        }
        if (!this.f47343e) {
            return i13;
        }
        Object obj2 = this.f47341c[this.f47344f];
        return i13 + (obj2 != null ? System.identityHashCode(obj2) : 0);
    }

    @Override
    public final boolean isEmpty() {
        return this.f47346h == 0;
    }

    @Override
    public final void putAll(Map map) {
        if (this.f47347i <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), this.f47347i);
            if (a10 > this.f47344f) {
                d(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f47346h) / this.f47347i))));
            if (min > this.f47344f) {
                d(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(int i10) {
        int i11;
        if (i10 == 0) {
            if (!this.f47343e) {
                return null;
            }
            this.f47343e = false;
            Object[] objArr = this.f47341c;
            int i12 = this.f47344f;
            Object obj = objArr[i12];
            objArr[i12] = null;
            int i13 = this.f47346h - 1;
            this.f47346h = i13;
            if (i13 < this.f47345g / 4 && i12 > 16) {
                d(i12 / 2);
            }
            return obj;
        }
        int[] iArr = this.f47340b;
        int a10 = AbstractC7878jA.a(i10) & this.f47342d;
        int i14 = iArr[a10];
        if (i14 == 0) {
            return null;
        }
        if (i10 == i14) {
            return e(a10);
        }
        do {
            a10 = (a10 + 1) & this.f47342d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return null;
            }
        } while (i10 != i11);
        return e(a10);
    }

    @Override
    public final int size() {
        return this.f47346h;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        if (this.f47350l == null) {
            this.f47350l = new VG(this);
        }
        return this.f47350l;
    }

    @Override
    public final InterfaceC8568nI o() {
        if (this.f47349k == null) {
            this.f47349k = new YG(this);
        }
        return this.f47349k;
    }

    public C6899dH() {
        this(16);
    }

    @Override
    public final boolean a(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f47343e;
        }
        int[] iArr = this.f47340b;
        int a10 = AbstractC7878jA.a(i10) & this.f47342d;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return false;
        }
        if (i10 == i12) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f47342d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return false;
            }
        } while (i10 != i11);
        return true;
    }
}
