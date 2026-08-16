package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class QF extends N implements Cloneable {

    public transient int[] f43511b;

    public transient Object[] f43512c;

    public transient int f43513d;

    public transient boolean f43514e;

    public transient int f43515f;

    public transient int f43516g;

    public int f43517h;

    public transient NF f43518i;

    public transient LF f43519j;

    public transient IF f43520k;

    public QF(int i10) {
        if (i10 >= 0) {
            int a10 = AbstractC7878jA.a(i10, 0.75f);
            this.f43515f = a10;
            this.f43513d = a10 - 1;
            this.f43516g = AbstractC7878jA.b(a10, 0.75f);
            int i11 = this.f43515f + 1;
            this.f43511b = new int[i11];
            this.f43512c = new Object[i11];
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
    
        r2 = (r2 + 1) & r4.f43513d;
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
            if (this.f43514e) {
                i12 = this.f43515f;
            } else {
                this.f43514e = true;
                i11 = this.f43515f;
                this.f43511b[i11] = i10;
                this.f43512c[i11] = obj;
                i13 = this.f43517h;
                this.f43517h = i13 + 1;
                if (i13 >= this.f43516g) {
                    d(AbstractC7878jA.a(i13 + 2, 0.75f));
                }
                i12 = -1;
            }
        } else {
            int[] iArr = this.f43511b;
            int a10 = AbstractC7878jA.a(i10) & this.f43513d;
            int i14 = iArr[a10];
            if (i14 != 0) {
            }
            i11 = a10;
            this.f43511b[i11] = i10;
            this.f43512c[i11] = obj;
            i13 = this.f43517h;
            this.f43517h = i13 + 1;
            if (i13 >= this.f43516g) {
            }
            i12 = -1;
        }
        if (i12 < 0) {
            return null;
        }
        Object[] objArr = this.f43512c;
        Object obj2 = objArr[i12];
        objArr[i12] = obj;
        return obj2;
    }

    @Override
    public final I30 b() {
        if (this.f43518i == null) {
            this.f43518i = new NF(this);
        }
        return this.f43518i;
    }

    @Override
    public final void clear() {
        if (this.f43517h == 0) {
            return;
        }
        this.f43517h = 0;
        this.f43514e = false;
        Arrays.fill(this.f43511b, 0);
        Arrays.fill(this.f43512c, (Object) null);
    }

    public final Object clone() {
        try {
            QF qf2 = (QF) super.clone();
            qf2.f43519j = null;
            qf2.f43520k = null;
            qf2.f43518i = null;
            qf2.f43514e = this.f43514e;
            qf2.f43511b = (int[]) this.f43511b.clone();
            qf2.f43512c = (Object[]) this.f43512c.clone();
            return qf2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
    
        return true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean containsValue(Object obj) {
        Object obj2;
        Object[] objArr = this.f43512c;
        int[] iArr = this.f43511b;
        if (this.f43514e && ((obj2 = objArr[this.f43515f]) != null ? obj2.equals(obj) : obj == null)) {
            return true;
        }
        int i10 = this.f43515f;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (iArr[i11] != 0) {
                Object obj3 = objArr[i11];
                if (obj3 == null) {
                    if (obj == null) {
                        break;
                    }
                } else if (obj3.equals(obj)) {
                    break;
                }
            }
            i10 = i11;
        }
    }

    public final void d(int i10) {
        int i11;
        int[] iArr = this.f43511b;
        Object[] objArr = this.f43512c;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        int[] iArr2 = new int[i13];
        Object[] objArr2 = new Object[i13];
        int i14 = this.f43515f;
        int i15 = this.f43514e ? this.f43517h - 1 : this.f43517h;
        while (true) {
            int i16 = i15 - 1;
            if (i15 == 0) {
                objArr2[i10] = objArr[this.f43515f];
                this.f43515f = i10;
                this.f43513d = i12;
                this.f43516g = AbstractC7878jA.b(i10, 0.75f);
                this.f43511b = iArr2;
                this.f43512c = objArr2;
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
        Object[] objArr = this.f43512c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f43517h--;
        int[] iArr = this.f43511b;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f43513d;
            while (true) {
                i11 = iArr[i13];
                if (i11 == 0) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(i11);
                int i14 = this.f43513d;
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
            Object[] objArr2 = this.f43512c;
            objArr2[i10] = objArr2[i13];
            i10 = i13;
        }
        iArr[i10] = 0;
        this.f43512c[i10] = null;
        if (this.f43517h < this.f43516g / 4 && (i12 = this.f43515f) > 16) {
            d(i12 / 2);
        }
        return obj;
    }

    @Override
    public final Object get(int i10) {
        int i11;
        if (i10 == 0) {
            if (this.f43514e) {
                return this.f43512c[this.f43515f];
            }
            return null;
        }
        int[] iArr = this.f43511b;
        int a10 = AbstractC7878jA.a(i10) & this.f43513d;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return null;
        }
        if (i10 == i12) {
            return this.f43512c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f43513d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return null;
            }
        } while (i10 != i11);
        return this.f43512c[a10];
    }

    @Override
    public final int hashCode() {
        int i10;
        int i11 = this.f43514e ? this.f43517h - 1 : this.f43517h;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            while (true) {
                i10 = this.f43511b[i12];
                if (i10 != 0) {
                    break;
                }
                i12++;
            }
            Object obj = this.f43512c[i12];
            if (this != obj) {
                i10 ^= obj == null ? 0 : obj.hashCode();
            }
            i13 += i10;
            i12++;
            i11 = i14;
        }
        if (!this.f43514e) {
            return i13;
        }
        Object obj2 = this.f43512c[this.f43515f];
        return i13 + (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override
    public final boolean isEmpty() {
        return this.f43517h == 0;
    }

    @Override
    public final Set o() {
        if (this.f43519j == null) {
            this.f43519j = new LF(this);
        }
        return this.f43519j;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f43515f) {
                d(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f43517h) / 0.75f))));
            if (min > this.f43515f) {
                d(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(int i10) {
        int i11;
        if (i10 == 0) {
            if (!this.f43514e) {
                return null;
            }
            this.f43514e = false;
            Object[] objArr = this.f43512c;
            int i12 = this.f43515f;
            Object obj = objArr[i12];
            objArr[i12] = null;
            int i13 = this.f43517h - 1;
            this.f43517h = i13;
            if (i13 < this.f43516g / 4 && i12 > 16) {
                d(i12 / 2);
            }
            return obj;
        }
        int[] iArr = this.f43511b;
        int a10 = AbstractC7878jA.a(i10) & this.f43513d;
        int i14 = iArr[a10];
        if (i14 == 0) {
            return null;
        }
        if (i10 == i14) {
            return e(a10);
        }
        do {
            a10 = (a10 + 1) & this.f43513d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return null;
            }
        } while (i10 != i11);
        return e(a10);
    }

    @Override
    public final int size() {
        return this.f43517h;
    }

    @Override
    public final InterfaceC10028w30 values() {
        if (this.f43520k == null) {
            this.f43520k = new IF(this);
        }
        return this.f43520k;
    }

    public QF(QF qf2) {
        this(qf2.f43517h);
        putAll(qf2);
    }

    @Override
    public final boolean a(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f43514e;
        }
        int[] iArr = this.f43511b;
        int a10 = AbstractC7878jA.a(i10) & this.f43513d;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return false;
        }
        if (i10 == i12) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f43513d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return false;
            }
        } while (i10 != i11);
        return true;
    }
}
