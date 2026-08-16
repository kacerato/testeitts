package com.android.tools.r8.errors;

import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import java.util.ArrayList;
import java.util.Comparator;

public final class d {

    public final C7051eC f36098a;

    public d() {
        int i10 = AbstractC7552hC.f48487c;
        this.f36098a = new C7051eC();
    }

    public final d a(ArrayList arrayList) {
        arrayList.sort(Comparator.comparing(new q()));
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            this.f36098a.a("Enum " + ((H2) obj).b1() + " was not unboxed.");
        }
        return this;
    }

    public final CheckEnumUnboxedDiagnostic a() {
        return new CheckEnumUnboxedDiagnostic(this.f36098a.a());
    }
}
