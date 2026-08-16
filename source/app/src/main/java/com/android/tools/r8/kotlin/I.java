package com.android.tools.r8.kotlin;

import com.android.tools.r8.internal.BQ;
import com.android.tools.r8.internal.C10086wQ;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8998pu;
import com.android.tools.r8.internal.EnumC4899Ax0;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.HX;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import java.util.HashMap;
import java.util.Map;

public class I {
    public static Map<String, Object> a(C10420yQ c10420yQ) {
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c10420yQ, "<this>");
        hashMap.put("nullable", Boolean.valueOf(C7698i5.f48800V.a(c10420yQ, xyArr[46])));
        hashMap.put("suspend", Boolean.valueOf(C7698i5.f48801W.a(c10420yQ, xyArr[47])));
        hashMap.put("definitelyNonNull", Boolean.valueOf(C7698i5.f48802X.a(c10420yQ, xyArr[48])));
        return hashMap;
    }

    public static void a(C10086wQ c10086wQ, C10086wQ c10086wQ2) {
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c10086wQ, "<this>");
        Y6 y62 = C7698i5.f48815f;
        boolean a10 = y62.a(c10086wQ, xyArr[4]);
        GJ.c(c10086wQ2, "<this>");
        y62.a(c10086wQ2, xyArr[4], a10);
        C8998pu c8998pu = C7698i5.f48795Q;
        EnumC4899Ax0 enumC4899Ax0 = (EnumC4899Ax0) c8998pu.a(c10086wQ, xyArr[41]);
        GJ.c(enumC4899Ax0, "<set-?>");
        c8998pu.a(c10086wQ2, xyArr[41], enumC4899Ax0);
        C8998pu c8998pu2 = C7698i5.f48796R;
        HX hx = (HX) c8998pu2.a(c10086wQ, xyArr[42]);
        GJ.c(hx, "<set-?>");
        c8998pu2.a(c10086wQ2, xyArr[42], hx);
        Y6 y63 = C7698i5.f48797S;
        y63.a(c10086wQ2, xyArr[43], y63.a(c10086wQ, xyArr[43]));
        Y6 y64 = C7698i5.f48798T;
        y64.a(c10086wQ2, xyArr[44], y64.a(c10086wQ, xyArr[44]));
        Y6 y65 = C7698i5.f48799U;
        y65.a(c10086wQ2, xyArr[45], y65.a(c10086wQ, xyArr[45]));
    }

    public static Map<String, Object> a(BQ bq) {
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(bq, "<this>");
        hashMap.put("reified", Boolean.valueOf(C7698i5.f48803Y.a(bq, xyArr[49])));
        return hashMap;
    }
}
