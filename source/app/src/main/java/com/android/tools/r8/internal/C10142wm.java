package com.android.tools.r8.internal;

import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.function.Consumer;

public class C10142wm {

    public static final boolean f53605a = true;

    public static void a(InterfaceC10161ws0 interfaceC10161ws0) {
    }

    public static InterfaceC9975vm a(InterfaceC11677v0 interfaceC11677v0, C4724u1 c4724u1, C5094Ef0 c5094Ef0, boolean z10, int i10) {
        return a(interfaceC11677v0, c4724u1, c5094Ef0, z10, i10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10142wm.a((InterfaceC10161ws0) obj);
            }
        });
    }

    public static InterfaceC9975vm a(InterfaceC11677v0 interfaceC11677v0, C4724u1 c4724u1, C5094Ef0 c5094Ef0, boolean z10, int i10, Consumer<InterfaceC10161ws0<?>> consumer) {
        Origin origin = interfaceC11677v0.getOrigin();
        if (!f53605a && origin == null) {
            throw new AssertionError();
        }
        try {
            String a10 = interfaceC11677v0.a();
            C7407gL d10 = C7741iL.a(a10).d();
            if (d10.f48234b.containsKey("configuration_format_version")) {
                if (((AbstractC6907dL) d10.f48234b.get("configuration_format_version")).b() >= 200) {
                    return new C10428yU(c4724u1, c5094Ef0, z10, i10).a(origin, a10, d10);
                }
                if (a(d10, c5094Ef0, origin)) {
                    return new EA(c4724u1, c5094Ef0, z10, i10).a(origin, a10, d10, consumer);
                }
                return new DR(c4724u1, c5094Ef0, z10, i10).a(origin, a10, d10, consumer);
            }
            c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration. Expected required key 'configuration_format_version'", origin));
            throw c5094Ef0.f39969c;
        } catch (Exception e10) {
            c5094Ef0.a(null, new ExceptionDiagnostic(e10, origin));
            throw c5094Ef0.f39969c;
        }
    }

    public static boolean a(C7407gL c7407gL, C5094Ef0 c5094Ef0, Origin origin) {
        if (c7407gL.f48234b.containsKey("configuration_format_version")) {
            int b10 = ((AbstractC6907dL) c7407gL.f48234b.get("configuration_format_version")).b();
            return b10 >= 100 && b10 < 200;
        }
        c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration. Expected required key 'configuration_format_version'", origin));
        throw c5094Ef0.f39969c;
    }
}
