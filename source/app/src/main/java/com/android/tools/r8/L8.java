package com.android.tools.r8;

import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8194l4;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C10682zz;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C7037e70;
import com.android.tools.r8.internal.C7306fm;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9539t70;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.internal.T8;
import com.android.tools.r8.shaking.C11197f2;
import com.android.tools.r8.shaking.C11228h;
import com.android.tools.r8.synthesis.C11617z;
import com.android.tools.r8.utils.C11662i;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

public class L8 {

    static final boolean f35379a = true;

    public static void a(C11662i c11662i, C8570nJ c8570nJ, boolean z10, D8Command d8Command, R8Command r8Command) throws CompilationFailedException {
        a(c11662i, c8570nJ, z10, d8Command, r8Command, C5467Kr0.a(c8570nJ));
    }

    public static void main(final String[] strArr) {
        if (strArr.length == 0) {
            throw new RuntimeException(C10656zq0.a("Invalid invocation.", V.a()));
        }
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                L8.b(strArr);
            }
        });
    }

    public static void run(L8Command l8Command) throws CompilationFailedException {
        a(l8Command.a(), l8Command.b(), l8Command.k(), l8Command.i(), l8Command.j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(String[] strArr) {
        L8Command l8Command = (L8Command) L8Command.parse(strArr, com.android.tools.r8.origin.a.f56150f).build();
        if (l8Command.isPrintHelp()) {
            if (System.getProperty("R8_THROW_EXCEPTION_FOR_TESTING_RETRACE") == null) {
                System.out.println(V.a());
                return;
            }
            throw new RuntimeException("Intentional exception for testing retrace.");
        }
        if (l8Command.isPrintVersion()) {
            System.out.println("L8 " + Version.getVersionString());
            return;
        }
        run(l8Command);
    }

    private static void a(final C11662i c11662i, final C8570nJ c8570nJ, boolean z10, D8Command d8Command, R8Command r8Command, final ExecutorService executorService) {
        try {
            AbstractC8333lv.b(c8570nJ.f50691j, new AbstractC8333lv.a() {
                @Override
                public final void run() {
                    L8.a(C8570nJ.this, c11662i, executorService);
                }
            });
            if (z10) {
                R8.run(r8Command, executorService);
            } else if (d8Command != null) {
                D8.run(d8Command, executorService);
            }
            executorService.shutdown();
        } catch (Throwable th2) {
            executorService.shutdown();
            throw th2;
        }
    }

    public static void run(L8Command l8Command, ExecutorService executorService) throws CompilationFailedException {
        a(l8Command.a(), l8Command.b(), l8Command.k(), l8Command.i(), l8Command.j(), executorService);
    }

    public static void a(C8570nJ c8570nJ, C11662i c11662i, ExecutorService executorService) {
        boolean z10 = f35379a;
        if (!z10 && !c8570nJ.M()) {
            throw new AssertionError();
        }
        if (!z10 && !c8570nJ.f50657Z) {
            throw new AssertionError();
        }
        c8570nJ.f50657Z = false;
        if (!z10 && !c8570nJ.f50661a0) {
            throw new AssertionError();
        }
        c8570nJ.f50661a0 = false;
        if (!z10 && c8570nJ.f50619M0) {
            throw new AssertionError();
        }
        c8570nJ.f50619M0 = true;
        c8570nJ.f50734x0 = W.b.f35804d;
        C8659ns0 a10 = C8659ns0.a(c8570nJ, "L8 desugaring");
        if (!z10 && !c8570nJ.M()) {
            throw new AssertionError();
        }
        try {
            try {
                c8570nJ.f50613K0 = false;
                C4798y a11 = a(c11662i, c8570nJ, executorService, a10);
                C7306fm.a(a11);
                if (!c8570nJ.f50648W) {
                    C11228h.a(a11);
                }
                new C9539t70(a11, a10).a(a11, executorService);
                C11617z.a(a11, a10, executorService);
                C7037e70.a(a11);
                a11.f38419l = com.android.tools.r8.naming.V0.a(a11);
                new C10682zz(a11).a(a11.f().d(), executorService);
                T8 t82 = new T8(a11, c8570nJ.y());
                ClassFileConsumer classFileConsumer = (ClassFileConsumer) c8570nJ.f50697l;
                if (!T8.f44394e && t82.f44397c.J()) {
                    throw new AssertionError();
                }
                t82.a(classFileConsumer, (C11662i) null, executorService);
                c8570nJ.Z();
                c11662i.b(c8570nJ.f50691j);
                c8570nJ.f0();
                if (c8570nJ.U()) {
                    a10.e();
                }
                c8570nJ.f50657Z = true;
                c8570nJ.f50661a0 = true;
                c8570nJ.f50619M0 = false;
            } catch (ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th2) {
            c11662i.b(c8570nJ.f50691j);
            c8570nJ.f0();
            if (c8570nJ.U()) {
                a10.e();
            }
            throw th2;
        }
    }

    private static C4798y a(C11662i c11662i, C8570nJ c8570nJ, ExecutorService executorService, C8659ns0 c8659ns0) {
        C4765w4 a10 = new C4303c(c11662i, c8570nJ, c8659ns0).a(executorService);
        c8570nJ.x().a(c8659ns0, a10);
        C4477h a11 = C4477h.a(new C11197f2(c8570nJ).a(a10), com.android.tools.r8.synthesis.E.e());
        return new C4798y(a11, AbstractC8194l4.a(a11, a11.j()), AbstractC9148qo0.b(), 2, C8659ns0.c());
    }
}
