package com.android.tools.r8.errors;

import com.android.tools.r8.graph.D5;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.shaking.C11132b5;
import com.android.tools.r8.shaking.S0;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;

public final class c {

    public final C7051eC f36097a;

    public c() {
        int i10 = AbstractC7552hC.f48487c;
        this.f36097a = new C7051eC();
    }

    public final c a(ArrayList arrayList, S0 s02, C11132b5 c11132b5) {
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            D5 d52 = (D5) obj;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            c11132b5.a(s02.a(d52.getReference()), new PrintStream(byteArrayOutputStream));
            this.f36097a.a("Item " + d52.getReference().j0() + " was not discarded.\n" + byteArrayOutputStream.toString());
        }
        return this;
    }

    public final CheckDiscardDiagnostic a() {
        return new CheckDiscardDiagnostic(this.f36097a.a());
    }
}
