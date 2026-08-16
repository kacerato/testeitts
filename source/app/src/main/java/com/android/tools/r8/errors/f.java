package com.android.tools.r8.errors;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C7561hF;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class f {

    public static final boolean f36099a = true;

    public static StartupClassesNonStartupFractionDiagnostic a(ArrayList arrayList, AbstractC9148qo0 abstractC9148qo0) {
        boolean z10 = f36099a;
        if (!z10 && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && abstractC9148qo0.c()) {
            throw new AssertionError();
        }
        int size = arrayList.size();
        C7561hF c7561hF = new C7561hF(16);
        c7561hF.f41547b = 0;
        int size2 = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < size2) {
            Object obj = arrayList.get(i10);
            i10++;
            H2 h22 = (H2) obj;
            if (!f36099a && !abstractC9148qo0.b(h22.getType())) {
                throw new AssertionError();
            }
            Iterator<C4516j1> it = h22.z1().iterator();
            int i13 = 0;
            while (it.hasNext()) {
                if (abstractC9148qo0.a(it.next().getReference())) {
                    i13++;
                } else {
                    i12++;
                }
            }
            i11 += i13;
            c7561hF.b(i13, c7561hF.get(i13) + 1);
        }
        return new StartupClassesNonStartupFractionDiagnostic(size, i11, i12, c7561hF);
    }
}
