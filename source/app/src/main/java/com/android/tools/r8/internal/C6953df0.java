package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class C6953df0 extends EC {

    public static final OY[] f47447k = new OY[0];

    public static final EC f47448l = a((Collection) C6190Xe0.f45779e);

    public final transient OY[] f47449f;

    public final transient OY[] f47450g;

    public final transient int f47451h;

    public final transient int f47452i;

    public transient JC f47453j;

    public C6953df0(OY[] oyArr, OY[] oyArr2, int i10, int i11, C7119ef0 c7119ef0) {
        this.f47449f = oyArr;
        this.f47450g = oyArr2;
        this.f47451h = i10;
        this.f47452i = i11;
        this.f47453j = c7119ef0;
    }

    public static EC a(Collection collection) {
        int size = collection.size();
        OY[] oyArr = new OY[size];
        if (size == 0) {
            return new C6953df0(oyArr, f47447k, 0, 0, C7119ef0.f47742j);
        }
        int a10 = AbstractC9047qA.a(size, 1.0d);
        int i10 = a10 - 1;
        OY[] oyArr2 = new OY[a10];
        Iterator it = collection.iterator();
        int i11 = 0;
        int i12 = 0;
        long j10 = 0;
        while (it.hasNext()) {
            MY my = (MY) it.next();
            Object b10 = my.b();
            b10.getClass();
            int a11 = my.a();
            int hashCode = b10.hashCode();
            int a12 = AbstractC9047qA.a(hashCode) & i10;
            OY oy = oyArr2[a12];
            OY oy2 = oy == null ? (!(my instanceof OY) || (my instanceof C6786cf0)) ? new OY(a11, b10) : (OY) my : new C6786cf0(b10, a11, oy);
            i11 += hashCode ^ a11;
            oyArr[i12] = oy2;
            oyArr2[a12] = oy2;
            j10 += a11;
            i12++;
        }
        for (int i13 = 0; i13 < a10; i13++) {
            int i14 = 0;
            for (OY oy3 = oyArr2[i13]; oy3 != null; oy3 = oy3.c()) {
                i14++;
                if (i14 > 9) {
                    MY[] myArr = (MY[]) AbstractC7552hC.b(size, oyArr).toArray(new MY[0]);
                    HashMap hashMap = new HashMap(AbstractC9595tV.a(myArr.length));
                    long j11 = 0;
                    for (int i15 = 0; i15 < myArr.length; i15++) {
                        MY my2 = myArr[i15];
                        int a13 = my2.a();
                        j11 += a13;
                        Object b11 = my2.b();
                        b11.getClass();
                        hashMap.put(b11, Integer.valueOf(a13));
                        if (!(my2 instanceof OY)) {
                            myArr[i15] = new OY(a13, b11);
                        }
                    }
                    return new UK(hashMap, AbstractC7552hC.b(myArr.length, myArr), j11);
                }
            }
        }
        return new C6953df0(oyArr, oyArr2, HJ.a(j10), i11, null);
    }

    @Override
    public final int b(Object obj) {
        OY[] oyArr = this.f47450g;
        if (obj != null && oyArr.length != 0) {
            for (OY oy = oyArr[AbstractC9047qA.a(obj) & (oyArr.length - 1)]; oy != null; oy = oy.c()) {
                if (V30.a(obj, oy.f42913b)) {
                    return oy.f42914c;
                }
            }
        }
        return 0;
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final QC w() {
        JC jc2 = this.f47453j;
        if (jc2 != null) {
            return jc2;
        }
        CC cc2 = new CC(Arrays.asList(this.f47449f), this);
        this.f47453j = cc2;
        return cc2;
    }

    @Override
    public final int hashCode() {
        return this.f47452i;
    }

    @Override
    public final MY j(int i10) {
        return this.f47449f[i10];
    }

    @Override
    public final int size() {
        return this.f47451h;
    }
}
