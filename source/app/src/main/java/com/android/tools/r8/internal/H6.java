package com.android.tools.r8.internal;

import com.android.tools.r8.OutputMode;
import com.android.tools.r8.ProgramConsumer;
import com.android.tools.r8.dex.C4311k;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4798y;
import java.io.PrintStream;
import java.nio.file.Path;
import java.util.concurrent.ExecutorService;

public class H6 {

    public interface a {
        I6 a(AbstractC4780x0 abstractC4780x0) throws Exception;
    }

    public static com.android.tools.r8.graph.H2 a(M6 m62, a aVar, Path path, ExecutorService executorService) throws Exception {
        while (true) {
            AbstractC4780x0 a10 = m62.a();
            m62.c();
            if (a10 == null) {
                K6 k62 = m62.f42179g;
                int i10 = k62.f41576b;
                int i11 = k62.f41575a;
                if (i10 - i11 == 1) {
                    return (com.android.tools.r8.graph.H2) m62.f42174b.g(((com.android.tools.r8.graph.H2) m62.f42175c.get(i11)).f36245e);
                }
                return null;
            }
            if (aVar == null) {
                C8570nJ c8570nJ = a10.f38366d;
                ProgramConsumer programConsumer = c8570nJ.f50697l;
                com.android.tools.r8.naming.Q q10 = c8570nJ.f50632Q1;
                com.android.tools.r8.utils.r rVar = new com.android.tools.r8.utils.r(c8570nJ);
                C4311k.a((C4798y<?>) C4798y.a(C4477h.a(a10, com.android.tools.r8.synthesis.E.d())), (com.android.tools.r8.dex.W) null).c(executorService);
                c8570nJ.f0();
                rVar.a().b(path, OutputMode.DexIndexed);
                c8570nJ.f50697l = programConsumer;
                c8570nJ.f50632Q1 = q10;
                PrintStream printStream = System.out;
                printStream.println("Bisecting completed with build in " + ((Object) path) + "/");
                printStream.println("Continue bisection by passing either ----result-good or ----result-bad");
                return null;
            }
            m62.a(aVar.a(a10));
        }
    }
}
