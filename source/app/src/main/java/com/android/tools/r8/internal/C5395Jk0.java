package com.android.tools.r8.internal;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;

public final class C5395Jk0 extends AbstractC8206l8 {

    public static final int[] f41489j;

    public final int f41490d;

    public final AbstractC8206l8 f41491e;

    public final AbstractC8206l8 f41492f;

    public final int f41493g;

    public final int f41494h;

    public int f41495i = 0;

    static {
        ArrayList arrayList = new ArrayList();
        int i10 = 1;
        int i11 = 1;
        while (i10 > 0) {
            arrayList.add(Integer.valueOf(i10));
            int i12 = i11 + i10;
            i11 = i10;
            i10 = i12;
        }
        arrayList.add(Integer.MAX_VALUE);
        f41489j = new int[arrayList.size()];
        int i13 = 0;
        while (true) {
            int[] iArr = f41489j;
            if (i13 >= iArr.length) {
                return;
            }
            iArr[i13] = ((Integer) arrayList.get(i13)).intValue();
            i13++;
        }
    }

    public C5395Jk0(AbstractC8206l8 abstractC8206l8, AbstractC8206l8 abstractC8206l82) {
        this.f41491e = abstractC8206l8;
        this.f41492f = abstractC8206l82;
        int size = abstractC8206l8.size();
        this.f41493g = size;
        this.f41490d = abstractC8206l82.size() + size;
        this.f41494h = Math.max(abstractC8206l8.a(), abstractC8206l82.a()) + 1;
    }

    @Override
    public final int a() {
        return this.f41494h;
    }

    @Override
    public final boolean b() {
        return this.f41490d >= f41489j[this.f41494h];
    }

    @Override
    public final boolean c() {
        int b10 = this.f41491e.b(0, 0, this.f41493g);
        AbstractC8206l8 abstractC8206l8 = this.f41492f;
        return abstractC8206l8.b(b10, 0, abstractC8206l8.size()) == 0;
    }

    public final boolean equals(Object obj) {
        int g10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8206l8)) {
            return false;
        }
        AbstractC8206l8 abstractC8206l8 = (AbstractC8206l8) obj;
        if (this.f41490d != abstractC8206l8.size()) {
            return false;
        }
        if (this.f41490d == 0) {
            return true;
        }
        if (this.f41495i != 0 && (g10 = abstractC8206l8.g()) != 0 && this.f41495i != g10) {
            return false;
        }
        C5279Hk0 c5279Hk0 = new C5279Hk0(this);
        ET next = c5279Hk0.next();
        C5279Hk0 c5279Hk02 = new C5279Hk0(abstractC8206l8);
        ET next2 = c5279Hk02.next();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int length = next.f39875d.length - i10;
            int length2 = next2.f39875d.length - i11;
            int min = Math.min(length, length2);
            if (!(i10 == 0 ? next.a(next2, i11, min) : next2.a(next, i10, min))) {
                return false;
            }
            i12 += min;
            int i13 = this.f41490d;
            if (i12 >= i13) {
                if (i12 == i13) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == length) {
                next = c5279Hk0.next();
                i10 = 0;
            } else {
                i10 += min;
            }
            if (min == length2) {
                next2 = c5279Hk02.next();
                i11 = 0;
            } else {
                i11 += min;
            }
        }
    }

    @Override
    public final int g() {
        return this.f41495i;
    }

    @Override
    public final String h() {
        byte[] bArr;
        int i10 = this.f41490d;
        if (i10 == 0) {
            bArr = XI.f45650a;
        } else {
            byte[] bArr2 = new byte[i10];
            b(bArr2, 0, 0, i10);
            bArr = bArr2;
        }
        return new String(bArr, "UTF-8");
    }

    public final int hashCode() {
        int i10 = this.f41495i;
        if (i10 == 0) {
            int i11 = this.f41490d;
            i10 = a(i11, 0, i11);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f41495i = i10;
        }
        return i10;
    }

    @Override
    public final Iterator iterator() {
        return new C5337Ik0(this);
    }

    @Override
    public final int size() {
        return this.f41490d;
    }

    @Override
    public final void a(OutputStream outputStream, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = this.f41493g;
        if (i12 <= i13) {
            this.f41491e.a(outputStream, i10, i11);
        } else {
            if (i10 >= i13) {
                this.f41492f.a(outputStream, i10 - i13, i11);
                return;
            }
            int i14 = i13 - i10;
            this.f41491e.a(outputStream, i10, i14);
            this.f41492f.a(outputStream, 0, i11 - i14);
        }
    }

    @Override
    public final void b(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i10 + i12;
        int i14 = this.f41493g;
        if (i13 <= i14) {
            this.f41491e.b(bArr, i10, i11, i12);
        } else {
            if (i10 >= i14) {
                this.f41492f.b(bArr, i10 - i14, i11, i12);
                return;
            }
            int i15 = i14 - i10;
            this.f41491e.b(bArr, i10, i11, i15);
            this.f41492f.b(bArr, 0, i11 + i15, i12 - i15);
        }
    }

    @Override
    public final int a(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.f41493g;
        if (i13 <= i14) {
            return this.f41491e.a(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.f41492f.a(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.f41492f.a(this.f41491e.a(i10, i11, i15), 0, i12 - i15);
    }

    @Override
    public final int b(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.f41493g;
        if (i13 <= i14) {
            return this.f41491e.b(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.f41492f.b(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.f41492f.b(this.f41491e.b(i10, i11, i15), 0, i12 - i15);
    }
}
