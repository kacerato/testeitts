package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.BU;
import com.android.tools.r8.internal.C10094wU;
import com.android.tools.r8.internal.C10142wm;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.CU;
import com.android.tools.r8.internal.EU;
import com.android.tools.r8.internal.InterfaceC9975vm;
import java.nio.file.Path;
import java.util.Collection;

public abstract class AbstractC10685a {

    static final C2 f54638g = C2.U;

    static final boolean f54639h = true;

    final C8570nJ f54640a;

    final InterfaceC9975vm f54641b;

    final InterfaceC11677v0 f54642c;

    final Collection f54643d;

    final Path f54644e;

    final Collection f54645f;

    public AbstractC10685a(C5094Ef0 c5094Ef0, InterfaceC11677v0 interfaceC11677v0, Collection collection, Path path, Collection collection2) {
        InterfaceC9975vm a10;
        if (!f54639h && collection2 == null) {
            throw new AssertionError();
        }
        C8570nJ c8570nJ = new C8570nJ(new C4724u1(), c5094Ef0).q().a(true).f52271f;
        this.f54640a = c8570nJ;
        this.f54642c = interfaceC11677v0;
        this.f54645f = collection2;
        if (interfaceC11677v0 == null) {
            C2 c22 = C2.B;
            int i10 = AbstractC7552hC.f48487c;
            EU eu = new EU(c22, "unused", null, null, false, C6190Xe0.f45779e);
            boolean z10 = CU.f39231s;
            a10 = new C10094wU(eu, new BU().a());
        } else {
            a10 = C10142wm.a(interfaceC11677v0, c8570nJ.m(), c8570nJ.f50691j, false, C2.B.d());
        }
        this.f54641b = a10;
        this.f54643d = collection;
        this.f54644e = path;
    }
}
