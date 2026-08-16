package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C5957Td0 extends C1 implements Serializable {

    public transient Object[] f44513b;

    public transient int f44514c;

    public transient boolean f44515d;

    public transient int f44516e;

    public transient int f44517f;

    public int f44518g;

    public final float f44519h = 0.75f;

    public C5957Td0() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f44516e = a10;
        this.f44514c = a10 - 1;
        this.f44517f = AbstractC7878jA.b(a10, 0.75f);
        this.f44513b = new Object[this.f44516e + 1];
    }

    @Override
    public final boolean add(Object obj) {
        Object obj2;
        if (obj != null) {
            Object[] objArr = this.f44513b;
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f44514c;
            Object obj3 = objArr[a10];
            if (obj3 != null) {
                if (obj3 == obj) {
                    return false;
                }
                do {
                    a10 = (a10 + 1) & this.f44514c;
                    obj2 = objArr[a10];
                    if (obj2 != null) {
                    }
                } while (obj2 != obj);
                return false;
            }
            objArr[a10] = obj;
        } else {
            if (this.f44515d) {
                return false;
            }
            this.f44515d = true;
        }
        int i10 = this.f44518g;
        this.f44518g = i10 + 1;
        if (i10 >= this.f44517f) {
            j(AbstractC7878jA.a(i10 + 2, this.f44519h));
        }
        return true;
    }

    @Override
    public final boolean addAll(Collection collection) {
        if (this.f44519h <= 0.5d) {
            int a10 = AbstractC7878jA.a(collection.size(), this.f44519h);
            if (a10 > this.f44516e) {
                j(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((collection.size() + this.f44518g) / this.f44519h))));
            if (min > this.f44516e) {
                j(min);
            }
        }
        return super.addAll(collection);
    }

    @Override
    public final void clear() {
        if (this.f44518g == 0) {
            return;
        }
        this.f44518g = 0;
        this.f44515d = false;
        Arrays.fill(this.f44513b, (Object) null);
    }

    public final Object clone() {
        try {
            C5957Td0 c5957Td0 = (C5957Td0) super.clone();
            c5957Td0.f44513b = (Object[]) this.f44513b.clone();
            c5957Td0.f44515d = this.f44515d;
            return c5957Td0;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean contains(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f44515d;
        }
        Object[] objArr = this.f44513b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f44514c;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f44514c;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        return true;
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f44515d ? this.f44518g - 1 : this.f44518g;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i10 - 1;
            if (i10 == 0) {
                return i11;
            }
            while (true) {
                obj = this.f44513b[i12];
                if (obj != null) {
                    break;
                }
                i12++;
            }
            if (this != obj) {
                i11 = System.identityHashCode(obj) + i11;
            }
            i12++;
            i10 = i13;
        }
    }

    @Override
    public final boolean isEmpty() {
        return this.f44518g == 0;
    }

    @Override
    public final A30 iterator() {
        return new C5899Sd0(this);
    }

    public final void j(int i10) {
        Object obj;
        Object[] objArr = this.f44513b;
        int i11 = i10 - 1;
        Object[] objArr2 = new Object[i10 + 1];
        int i12 = this.f44516e;
        int i13 = this.f44515d ? this.f44518g - 1 : this.f44518g;
        while (true) {
            int i14 = i13 - 1;
            if (i13 == 0) {
                this.f44516e = i10;
                this.f44514c = i11;
                this.f44517f = AbstractC7878jA.b(i10, this.f44519h);
                this.f44513b = objArr2;
                return;
            }
            do {
                i12--;
                obj = objArr[i12];
            } while (obj == null);
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & i11;
            if (objArr2[a10] == null) {
                objArr2[a10] = objArr[i12];
                i13 = i14;
            }
            do {
                a10 = (a10 + 1) & i11;
            } while (objArr2[a10] != null);
            objArr2[a10] = objArr[i12];
            i13 = i14;
        }
    }

    public final void k(int i10) {
        Object obj;
        int i11;
        this.f44518g--;
        Object[] objArr = this.f44513b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f44514c;
            while (true) {
                obj = objArr[i12];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i13 = this.f44514c;
                int i14 = a10 & i13;
                if (i10 > i12) {
                    if (i10 >= i14 && i14 > i12) {
                        break;
                    }
                    i12 = (i12 + 1) & i13;
                } else if (i10 < i14 && i14 <= i12) {
                    i12 = (i12 + 1) & i13;
                }
            }
            objArr[i10] = obj;
            i10 = i12;
        }
        objArr[i10] = null;
        if (this.f44518g >= this.f44517f / 4 || (i11 = this.f44516e) <= 16) {
            return;
        }
        j(i11 / 2);
    }

    @Override
    public final boolean remove(Object obj) {
        Object obj2;
        if (obj == null) {
            if (!this.f44515d) {
                return false;
            }
            this.f44515d = false;
            Object[] objArr = this.f44513b;
            int i10 = this.f44516e;
            objArr[i10] = null;
            int i11 = this.f44518g - 1;
            this.f44518g = i11;
            if (i11 < this.f44517f / 4 && i10 > 16) {
                j(i10 / 2);
            }
            return true;
        }
        Object[] objArr2 = this.f44513b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f44514c;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            k(a10);
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f44514c;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        k(a10);
        return true;
    }

    @Override
    public final int size() {
        return this.f44518g;
    }

    @Override
    public final Iterator iterator() {
        return new C5899Sd0(this);
    }
}
