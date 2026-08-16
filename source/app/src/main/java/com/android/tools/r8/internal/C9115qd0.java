package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C9115qd0 extends AbstractC10188x1 implements Cloneable {

    public transient Object[] f51822c;

    public transient int[] f51823d;

    public transient int f51824e;

    public transient boolean f51825f;

    public transient int f51826g;

    public transient int f51827h;

    public int f51828i;

    public transient C8614nd0 f51829j;

    public transient C8280ld0 f51830k;

    public transient C7781id0 f51831l;

    public C9115qd0() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f51826g = a10;
        this.f51824e = a10 - 1;
        this.f51827h = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f51826g + 1;
        this.f51822c = new Object[i10];
        this.f51823d = new int[i10];
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0020, code lost:
    
        if (r3 == r6) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0022, code lost:
    
        r6 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0024, code lost:
    
        r2 = (r2 + 1) & r4.f51824e;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002a, code lost:
    
        if (r3 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002c, code lost:
    
        if (r3 != r6) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, Object obj) {
        int i11;
        int i12;
        int i13;
        if (obj == null) {
            if (this.f51825f) {
                i12 = this.f51826g;
            } else {
                this.f51825f = true;
                i11 = this.f51826g;
                this.f51822c[i11] = obj;
                this.f51823d[i11] = i10;
                i13 = this.f51828i;
                this.f51828i = i13 + 1;
                if (i13 >= this.f51827h) {
                    e(AbstractC7878jA.a(i13 + 2, 0.75f));
                }
                i12 = -1;
            }
        } else {
            Object[] objArr = this.f51822c;
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f51824e;
            Object obj2 = objArr[a10];
            if (obj2 != null) {
            }
            i11 = a10;
            this.f51822c[i11] = obj;
            this.f51823d[i11] = i10;
            i13 = this.f51828i;
            this.f51828i = i13 + 1;
            if (i13 >= this.f51827h) {
            }
            i12 = -1;
        }
        if (i12 < 0) {
            return this.f53665b;
        }
        int[] iArr = this.f51823d;
        int i14 = iArr[i12];
        iArr[i12] = i10;
        return i14;
    }

    @Override
    public final int c(Object obj) {
        Object obj2;
        if (obj == null) {
            if (!this.f51825f) {
                return this.f53665b;
            }
            this.f51825f = false;
            Object[] objArr = this.f51822c;
            int i10 = this.f51826g;
            objArr[i10] = null;
            int i11 = this.f51823d[i10];
            int i12 = this.f51828i - 1;
            this.f51828i = i12;
            if (i12 < this.f51827h / 4 && i10 > 16) {
                e(i10 / 2);
            }
            return i11;
        }
        Object[] objArr2 = this.f51822c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f51824e;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return this.f53665b;
        }
        if (obj == obj3) {
            return f(a10);
        }
        do {
            a10 = (a10 + 1) & this.f51824e;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return this.f53665b;
            }
        } while (obj != obj2);
        return f(a10);
    }

    @Override
    public final void clear() {
        if (this.f51828i == 0) {
            return;
        }
        this.f51828i = 0;
        this.f51825f = false;
        Arrays.fill(this.f51822c, (Object) null);
    }

    public final Object clone() {
        try {
            C9115qd0 c9115qd0 = (C9115qd0) super.clone();
            c9115qd0.f51830k = null;
            c9115qd0.f51831l = null;
            c9115qd0.f51829j = null;
            c9115qd0.f51825f = this.f51825f;
            c9115qd0.f51822c = (Object[]) this.f51822c.clone();
            c9115qd0.f51823d = (int[]) this.f51823d.clone();
            return c9115qd0;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f51825f;
        }
        Object[] objArr = this.f51822c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f51824e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f51824e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        return true;
    }

    @Override
    public final boolean d(int i10) {
        int[] iArr = this.f51823d;
        Object[] objArr = this.f51822c;
        if (this.f51825f && iArr[this.f51826g] == i10) {
            return true;
        }
        int i11 = this.f51826g;
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
        Object[] objArr = this.f51822c;
        int[] iArr = this.f51823d;
        int i11 = i10 - 1;
        int i12 = i10 + 1;
        Object[] objArr2 = new Object[i12];
        int[] iArr2 = new int[i12];
        int i13 = this.f51826g;
        int i14 = this.f51825f ? this.f51828i - 1 : this.f51828i;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                iArr2[i10] = iArr[this.f51826g];
                this.f51826g = i10;
                this.f51824e = i11;
                this.f51827h = AbstractC7878jA.b(i10, 0.75f);
                this.f51822c = objArr2;
                this.f51823d = iArr2;
                return;
            }
            do {
                i13--;
                obj = objArr[i13];
            } while (obj == null);
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & i11;
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
        int i12 = this.f51823d[i10];
        this.f51828i--;
        Object[] objArr = this.f51822c;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f51824e;
            while (true) {
                obj = objArr[i13];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i14 = this.f51824e;
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
            int[] iArr = this.f51823d;
            iArr[i10] = iArr[i13];
            i10 = i13;
        }
        objArr[i10] = null;
        if (this.f51828i < this.f51827h / 4 && (i11 = this.f51826g) > 16) {
            e(i11 / 2);
        }
        return i12;
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f51825f ? this.f51828i - 1 : this.f51828i;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f51822c[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = System.identityHashCode(obj);
            }
            i13 ^= this.f51823d[i11];
            i12 += i13;
            i11++;
            i10 = i14;
        }
        return this.f51825f ? i12 + this.f51823d[this.f51826g] : i12;
    }

    @Override
    public final I30 i() {
        if (this.f51829j == null) {
            this.f51829j = new C8614nd0(this);
        }
        return this.f51829j;
    }

    @Override
    public final boolean isEmpty() {
        return this.f51828i == 0;
    }

    @Override
    public final Set o() {
        if (this.f51830k == null) {
            this.f51830k = new C8280ld0(this);
        }
        return this.f51830k;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f51826g) {
                e(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f51828i) / 0.75f))));
            if (min > this.f51826g) {
                e(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final int size() {
        return this.f51828i;
    }

    @Override
    public final Collection values() {
        if (this.f51831l == null) {
            this.f51831l = new C7781id0(this);
        }
        return this.f51831l;
    }

    @Override
    public final int b(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f51825f ? this.f51823d[this.f51826g] : this.f53665b;
        }
        Object[] objArr = this.f51822c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f51824e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return this.f53665b;
        }
        if (obj == obj3) {
            return this.f51823d[a10];
        }
        do {
            a10 = (a10 + 1) & this.f51824e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return this.f53665b;
            }
        } while (obj != obj2);
        return this.f51823d[a10];
    }
}
