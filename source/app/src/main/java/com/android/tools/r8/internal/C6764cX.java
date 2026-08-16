package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

public final class C6764cX extends AbstractC7794ii {
    public C6764cX(E50 e50) {
        super(new S3(e50, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C9499su0((I50) obj);
            }
        }), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6764cX.a((List) obj);
            }
        });
    }

    public static UO a(List list) {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            DP dp = (DP) it.next();
            dp.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = dp;
            i11 = i12;
        }
        AbstractC7552hC b10 = AbstractC7552hC.b(i11, objArr);
        return b10.isEmpty() ? TO.f44459b : new TO(b10);
    }
}
