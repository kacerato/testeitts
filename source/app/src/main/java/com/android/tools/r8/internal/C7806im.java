package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public class C7806im {

    public static final boolean f49051a = true;

    public static C7767iY a(Path path, Set<Path> set, Set<Path> set2, Path path2, C8570nJ c8570nJ) throws IOException {
        C7767iY c10;
        InterfaceC11677v0.a a10 = InterfaceC11677v0.a(path);
        try {
            C7407gL d10 = C7741iL.a(a10.a()).d();
            C5094Ef0 c5094Ef0 = c8570nJ.f50691j;
            PathOrigin pathOrigin = a10.f58649c;
            boolean z10 = C10142wm.f53605a;
            if (d10.f48234b.containsKey("configuration_format_version")) {
                if (((AbstractC6907dL) d10.f48234b.get("configuration_format_version")).b() >= 200) {
                    Files.copy(path, path2, new CopyOption[0]);
                    return null;
                }
                C11662i.a b10 = C11662i.b();
                b10.f(set);
                C4303c c4303c = new C4303c(b10.e(set2).a(), c8570nJ, C8659ns0.c());
                ExecutorService a11 = C5467Kr0.a(c8570nJ);
                if (!f49051a && c8570nJ.f50704n0) {
                    throw new AssertionError();
                }
                c8570nJ.f50704n0 = true;
                C4765w4 a12 = c4303c.a(a11);
                c8570nJ.f50704n0 = false;
                if (!C10142wm.a(d10, c8570nJ.f50691j, a10.f58649c)) {
                    c10 = new JR(C8659ns0.c()).a(new C8767oY(c8570nJ.m(), c8570nJ.f50691j).c(a10), a12);
                } else {
                    c10 = new C8433mY(c8570nJ.m(), c8570nJ.f50691j).c(a10);
                }
                Files.write(path2, Collections.singleton(a(c8570nJ, a12, c10)), new OpenOption[0]);
                return c10;
            }
            c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration. Expected required key 'configuration_format_version'", pathOrigin));
            throw c5094Ef0.f39969c;
        } catch (Exception e10) {
            C5094Ef0 c5094Ef02 = c8570nJ.f50691j;
            c5094Ef02.a(null, new ExceptionDiagnostic(e10, a10.f58649c));
            throw c5094Ef02.f39969c;
        }
    }

    public static String a(C8570nJ c8570nJ, C4765w4 c4765w4, C7767iY c7767iY) {
        C8934pY a10 = new OA(C8659ns0.c()).a(c7767iY, c4765w4);
        final C7 c72 = new C7();
        C9267rY.a(a10, new StringConsumer() {
            @Override
            public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
                C7.this.a((C7) str);
            }
        }, c8570nJ.m());
        return (String) c72.a();
    }
}
