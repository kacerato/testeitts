package com.android.tools.r8.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.C14025w;

public abstract class AbstractC6075Ve {

    public static final Object[] f45114a = new Object[0];

    public static final Object[] a(Collection collection) {
        int size = collection.size();
        if (size == 0) {
            return f45114a;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return f45114a;
        }
        Object[] objArr = new Object[size];
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            objArr[i10] = it.next();
            if (i11 >= objArr.length) {
                if (!it.hasNext()) {
                    return objArr;
                }
                int i12 = ((i11 * 3) + 1) >>> 1;
                if (i12 <= i11) {
                    i12 = C14025w.f95792b;
                    if (i11 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArr = Arrays.copyOf(objArr, i12);
            } else if (!it.hasNext()) {
                Object[] copyOf = Arrays.copyOf(objArr, i11);
                GJ.b(copyOf, "copyOf(...)");
                return copyOf;
            }
            i10 = i11;
        }
    }

    public static final Object[] a(Collection collection, Object[] objArr) {
        Object[] objArr2;
        int size = collection.size();
        int i10 = 0;
        if (size == 0) {
            if (objArr.length > 0) {
                objArr[0] = null;
                return objArr;
            }
        } else {
            Iterator it = collection.iterator();
            if (!it.hasNext()) {
                if (objArr.length > 0) {
                    objArr[0] = null;
                }
            } else {
                if (size <= objArr.length) {
                    objArr2 = objArr;
                } else {
                    Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                    GJ.a(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                    objArr2 = (Object[]) newInstance;
                }
                while (true) {
                    int i11 = i10 + 1;
                    objArr2[i10] = it.next();
                    if (i11 >= objArr2.length) {
                        if (!it.hasNext()) {
                            return objArr2;
                        }
                        int i12 = ((i11 * 3) + 1) >>> 1;
                        if (i12 <= i11) {
                            i12 = C14025w.f95792b;
                            if (i11 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr2 = Arrays.copyOf(objArr2, i12);
                    } else if (!it.hasNext()) {
                        if (objArr2 == objArr) {
                            objArr[i11] = null;
                            return objArr;
                        }
                        Object[] copyOf = Arrays.copyOf(objArr2, i11);
                        GJ.b(copyOf, "copyOf(...)");
                        return copyOf;
                    }
                    i10 = i11;
                }
            }
        }
        return objArr;
    }
}
