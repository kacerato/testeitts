package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C9691u20 extends Y0 implements Cloneable {

    public transient Object[] f52762c;

    public transient int[] f52763d;

    public transient int f52764e;

    public transient boolean f52765f;

    public transient int f52766g;

    public transient int f52767h;

    public int f52768i;

    public transient C9190r20 f52769j;

    public transient C8857p20 f52770k;

    public transient C8356m20 f52771l;

    public C9691u20() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f52766g = a10;
        this.f52764e = a10 - 1;
        this.f52767h = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f52766g + 1;
        this.f52762c = new Object[i10];
        this.f52763d = new int[i10];
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0024, code lost:
    
        if (r3.equals(r6) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0026, code lost:
    
        r6 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0028, code lost:
    
        r2 = (r2 + 1) & r4.f52764e;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002e, code lost:
    
        if (r3 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        if (r3.equals(r6) == false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, Object obj) {
        int i11;
        int i12;
        int i13;
        if (obj == null) {
            if (this.f52765f) {
                i12 = this.f52766g;
            } else {
                this.f52765f = true;
                i11 = this.f52766g;
                this.f52762c[i11] = obj;
                this.f52763d[i11] = i10;
                i13 = this.f52768i;
                this.f52768i = i13 + 1;
                if (i13 >= this.f52767h) {
                    e(AbstractC7878jA.a(i13 + 2, 0.75f));
                }
                i12 = -1;
            }
        } else {
            Object[] objArr = this.f52762c;
            int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f52764e;
            Object obj2 = objArr[a10];
            if (obj2 != null) {
            }
            i11 = a10;
            this.f52762c[i11] = obj;
            this.f52763d[i11] = i10;
            i13 = this.f52768i;
            this.f52768i = i13 + 1;
            if (i13 >= this.f52767h) {
            }
            i12 = -1;
        }
        if (i12 < 0) {
            return this.f45889b;
        }
        int[] iArr = this.f52763d;
        int i14 = iArr[i12];
        iArr[i12] = i10;
        return i14;
    }

    @Override
    public final int c(Object obj) {
        Object obj2;
        if (obj == null) {
            if (!this.f52765f) {
                return this.f45889b;
            }
            this.f52765f = false;
            Object[] objArr = this.f52762c;
            int i10 = this.f52766g;
            objArr[i10] = null;
            int i11 = this.f52763d[i10];
            int i12 = this.f52768i - 1;
            this.f52768i = i12;
            if (i12 < this.f52767h / 4 && i10 > 16) {
                e(i10 / 2);
            }
            return i11;
        }
        Object[] objArr2 = this.f52762c;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f52764e;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return this.f45889b;
        }
        if (obj.equals(obj3)) {
            return f(a10);
        }
        do {
            a10 = (a10 + 1) & this.f52764e;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return this.f45889b;
            }
        } while (!obj.equals(obj2));
        return f(a10);
    }

    @Override
    public final void clear() {
        if (this.f52768i == 0) {
            return;
        }
        this.f52768i = 0;
        this.f52765f = false;
        Arrays.fill(this.f52762c, (Object) null);
    }

    public final Object clone() {
        try {
            C9691u20 c9691u20 = (C9691u20) super.clone();
            c9691u20.f52770k = null;
            c9691u20.f52771l = null;
            c9691u20.f52769j = null;
            c9691u20.f52765f = this.f52765f;
            c9691u20.f52762c = (Object[]) this.f52762c.clone();
            c9691u20.f52763d = (int[]) this.f52763d.clone();
            return c9691u20;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f52765f;
        }
        Object[] objArr = this.f52762c;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f52764e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj.equals(obj3)) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f52764e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (!obj.equals(obj2));
        return true;
    }

    @Override
    public final boolean d(int i10) {
        int[] iArr = this.f52763d;
        Object[] objArr = this.f52762c;
        if (this.f52765f && iArr[this.f52766g] == i10) {
            return true;
        }
        int i11 = this.f52766g;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return false;
            }
            if (objArr[i12] != null && iArr[i12] == i10) {
                return true;
            }
            i11 = i12;
        }
    }

    public final void e(int i10) {
        Object obj;
        Object[] objArr = this.f52762c;
        int[] iArr = this.f52763d;
        int i11 = i10 - 1;
        int i12 = i10 + 1;
        Object[] objArr2 = new Object[i12];
        int[] iArr2 = new int[i12];
        int i13 = this.f52766g;
        int i14 = this.f52765f ? this.f52768i - 1 : this.f52768i;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                iArr2[i10] = iArr[this.f52766g];
                this.f52766g = i10;
                this.f52764e = i11;
                this.f52767h = AbstractC7878jA.b(i10, 0.75f);
                this.f52762c = objArr2;
                this.f52763d = iArr2;
                return;
            }
            do {
                i13--;
                obj = objArr[i13];
            } while (obj == null);
            int a10 = AbstractC7878jA.a(obj.hashCode()) & i11;
            if (objArr2[a10] == null) {
                objArr2[a10] = objArr[i13];
                iArr2[a10] = iArr[i13];
                i14 = i15;
            }
            do {
                a10 = (a10 + 1) & i11;
            } while (objArr2[a10] != null);
            objArr2[a10] = objArr[i13];
            iArr2[a10] = iArr[i13];
            i14 = i15;
        }
    }

    public final int f(int i10) {
        Object obj;
        int i11;
        int i12 = this.f52763d[i10];
        this.f52768i--;
        Object[] objArr = this.f52762c;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f52764e;
            while (true) {
                obj = objArr[i13];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(obj.hashCode());
                int i14 = this.f52764e;
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
            objArr[i10] = obj;
            int[] iArr = this.f52763d;
            iArr[i10] = iArr[i13];
            i10 = i13;
        }
        objArr[i10] = null;
        if (this.f52768i < this.f52767h / 4 && (i11 = this.f52766g) > 16) {
            e(i11 / 2);
        }
        return i12;
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f52765f ? this.f52768i - 1 : this.f52768i;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f52762c[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = obj.hashCode();
            }
            i13 ^= this.f52763d[i11];
            i12 += i13;
            i11++;
            i10 = i14;
        }
        return this.f52765f ? i12 + this.f52763d[this.f52766g] : i12;
    }

    @Override
    public final I30 i() {
        if (this.f52769j == null) {
            this.f52769j = new C9190r20(this);
        }
        return this.f52769j;
    }

    @Override
    public final boolean isEmpty() {
        return this.f52768i == 0;
    }

    @Override
    public final Set o() {
        if (this.f52770k == null) {
            this.f52770k = new C8857p20(this);
        }
        return this.f52770k;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f52766g) {
                e(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f52768i) / 0.75f))));
            if (min > this.f52766g) {
                e(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final int size() {
        return this.f52768i;
    }

    @Override
    public final Collection values() {
        if (this.f52771l == null) {
            this.f52771l = new C8356m20(this);
        }
        return this.f52771l;
    }

    @Override
    public final int b(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f52765f ? this.f52763d[this.f52766g] : this.f45889b;
        }
        Object[] objArr = this.f52762c;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f52764e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return this.f45889b;
        }
        if (obj.equals(obj3)) {
            return this.f52763d[a10];
        }
        do {
            a10 = (a10 + 1) & this.f52764e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return this.f45889b;
            }
        } while (!obj.equals(obj2));
        return this.f52763d[a10];
    }
}
