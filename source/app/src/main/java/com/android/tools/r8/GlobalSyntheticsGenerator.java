package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.androidapi.f;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.dex.C4311k;
import com.android.tools.r8.graph.C4351a6;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.InterfaceC4651q3;
import com.android.tools.r8.graph.InterfaceC4784x4;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AbstractC10447yc0;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5766Pw0;
import com.android.tools.r8.internal.C5824Qw0;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9539t70;
import com.android.tools.r8.internal.EnumC5372Jb0;
import com.android.tools.r8.internal.InterfaceC5882Rw0;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.InterfaceC6358a3;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.android.tools.r8.internal.InterfaceC8444mc0;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.T8;
import com.android.tools.r8.internal.ZI;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.synthesis.C11617z;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.C11662i;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public class GlobalSyntheticsGenerator {

    static final boolean f35324a = true;

    public static Set a(Set set, InterfaceC4784x4 interfaceC4784x4) {
        return set;
    }

    public static void main(final String[] strArr) {
        if (strArr.length == 0) {
            throw new RuntimeException(C10656zq0.a("Invalid invocation.", O.a()));
        }
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                GlobalSyntheticsGenerator.b(strArr);
            }
        });
    }

    public static void run(GlobalSyntheticsGeneratorCommand globalSyntheticsGeneratorCommand) throws CompilationFailedException {
        a(globalSyntheticsGeneratorCommand.getInputApp(), globalSyntheticsGeneratorCommand.a());
    }

    public static void a(C11662i c11662i, C8570nJ c8570nJ) throws CompilationFailedException {
        a(c11662i, c8570nJ, C5467Kr0.a(c8570nJ));
    }

    public static void run(GlobalSyntheticsGeneratorCommand globalSyntheticsGeneratorCommand, ExecutorService executorService) throws CompilationFailedException {
        a(globalSyntheticsGeneratorCommand.getInputApp(), globalSyntheticsGeneratorCommand.a(), executorService);
    }

    public static void b(String[] strArr) {
        GlobalSyntheticsGeneratorCommand build = GlobalSyntheticsGeneratorCommand.parse(strArr, com.android.tools.r8.origin.a.f56150f).build();
        if (build.isPrintHelp()) {
            if (System.getProperty("R8_THROW_EXCEPTION_FOR_TESTING_RETRACE") == null) {
                System.out.println(O.a());
                return;
            }
            throw new RuntimeException("Intentional exception for testing retrace.");
        }
        if (build.isPrintVersion()) {
            System.out.println("GlobalSyntheticsGenerator " + Version.getVersionString());
            return;
        }
        run(build);
    }

    private static void a(final C11662i c11662i, final C8570nJ c8570nJ, final ExecutorService executorService) {
        try {
            AbstractC8333lv.a(c8570nJ.f50691j, new AbstractC8333lv.a() {
                @Override
                public final void run() {
                    GlobalSyntheticsGenerator.a(C8570nJ.this, c11662i, executorService);
                }
            });
        } finally {
            executorService.shutdown();
        }
    }

    public static void a(C8570nJ c8570nJ, C11662i c11662i, ExecutorService executorService) {
        C8659ns0 a10 = C8659ns0.a(c8570nJ, "GlobalSyntheticsGenerator 8.10.21");
        try {
            try {
                a10.b("Read input app");
                C4798y a11 = a(c11662i, c8570nJ, executorService, a10);
                a10.d();
                a10.b("Create global synthetics");
                a(a11, a10, executorService);
                a10.d();
                boolean z10 = f35324a;
                if (!z10) {
                    P.a(a11);
                }
                if (c8570nJ.P()) {
                    C4311k.a((C4798y<?>) a11, c8570nJ.y()).a(c11662i, executorService);
                } else {
                    if (!z10 && !(c8570nJ.f50697l instanceof ClassFileConsumer)) {
                        throw new AssertionError();
                    }
                    new T8(a11, c8570nJ.y()).a((ClassFileConsumer) c8570nJ.f50697l, c11662i, executorService);
                }
                c8570nJ.f0();
                if (c8570nJ.U()) {
                    a10.e();
                }
            } catch (IOException e10) {
                throw new C5325If(e10.getMessage(), e10);
            } catch (ExecutionException e11) {
                throw new RuntimeException(e11);
            }
        } catch (Throwable th2) {
            c8570nJ.f0();
            if (c8570nJ.U()) {
                a10.e();
            }
            throw th2;
        }
    }

    private static C4798y a(C11662i c11662i, C8570nJ c8570nJ, ExecutorService executorService, final C8659ns0 c8659ns0) {
        c8659ns0.b("Application read");
        final C4462g3 i10 = new C4303c(c11662i, c8570nJ, c8659ns0).a(executorService).i();
        c8659ns0.d();
        final C4477h c4477h = (C4477h) c8659ns0.a("Create app-info", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                C4477h a10;
                a10 = GlobalSyntheticsGenerator.a(C4462g3.this);
                return a10;
            }
        });
        AbstractC4895Av0 it = c11662i.f58591e.iterator();
        while (it.hasNext()) {
            ((ZI) it.next()).close();
        }
        return (C4798y) c8659ns0.a("Create app-view", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                C4798y a10;
                a10 = C4798y.a(C4477h.this, c8659ns0);
                return a10;
            }
        });
    }

    public static C4477h a(C4462g3 c4462g3) {
        return C4477h.a(c4462g3, com.android.tools.r8.synthesis.E.e());
    }

    private static void a(final C4798y c4798y, final C8659ns0 c8659ns0, final ExecutorService executorService) {
        if (!f35324a) {
            com.android.tools.r8.synthesis.S s10 = c4798y.f38408a.g().f58085b;
            for (S.b bVar : s10.b()) {
                if (!f35324a && bVar.d() && bVar.e() && !InterfaceC7166ev.a(bVar, s10.f58174a) && !InterfaceC7166ev.a(bVar, s10.f58175b) && !InterfaceC7166ev.a(bVar, s10.f58176c) && !InterfaceC7166ev.a(bVar, s10.f58177d)) {
                    throw new AssertionError();
                }
            }
        }
        com.android.tools.r8.graph.H2 a10 = a(c4798y.b());
        int i10 = QC.f43505c;
        C5978Tm0 c5978Tm0 = new C5978Tm0(a10);
        AbstractC10447yc0.a(c4798y, c5978Tm0, InterfaceC8444mc0.f50350a, null, null);
        C5824Qw0 c5824Qw0 = InterfaceC5882Rw0.f44034b;
        C5766Pw0.b(c4798y, c5824Qw0, c5978Tm0);
        C5766Pw0.a(c4798y, c5824Qw0, c5978Tm0);
        if (!f35324a && !c4798y.f38408a.g().b()) {
            throw new AssertionError();
        }
        c4798y.b(c4798y.e());
        new C9539t70(c4798y, C8659ns0.c()).a(c4798y, executorService);
        c4798y.b(c4798y.e());
        c8659ns0.a("Finalize synthetics", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C11617z.a(C4798y.this, c8659ns0, executorService);
            }
        });
        com.android.tools.r8.naming.O0.a(c4798y);
        c4798y.f38419l = com.android.tools.r8.naming.V0.a(c4798y);
        if (c4798y.E().P()) {
            a(c4798y, c5978Tm0, executorService);
        }
        c4798y.b(c4798y.e());
    }

    private static com.android.tools.r8.graph.H2 a(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Lcom/android/tools/r8/GlobalSynthetics$$SynthesizingContext;");
        ProgramResource.Kind kind = ProgramResource.Kind.CF;
        Origin unknown = Origin.unknown();
        com.android.tools.r8.graph.Q e10 = com.android.tools.r8.graph.Q.e(1057);
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38068i2;
        com.android.tools.r8.graph.O2 k02 = com.android.tools.r8.graph.O2.k0();
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("GlobalSynthetics$$SynthesizingContext.java");
        boolean z10 = C4615o5.f37545c;
        List list = Collections.EMPTY_LIST;
        boolean z11 = C4500i3.f37288c;
        return new com.android.tools.r8.graph.H2(d10, kind, unknown, e10, m22, k02, b10, null, list, list, list, null, list, H3.b.f(), C4723u0.l0(), InterfaceC4651q3.empty(), N4.a.empty(), c4724u1.f37846D6, new C10895l2(), EnumC5372Jb0.f41429b);
    }

    public static void a(Set set, C4724u1 c4724u1, com.android.tools.r8.androidapi.a aVar, C4798y c4798y, final Set set2, C4351a6 c4351a6, InterfaceC6358a3 interfaceC6358a3, C4725u2 c4725u2) {
        if (set.contains(c4725u2.M0().getTypeName()) || com.android.tools.r8.internal.Y2.a(c4724u1, c4725u2.getType())) {
            return;
        }
        f.a F10 = aVar.a(c4725u2.getReference()).F();
        if (F10 == null) {
            c4798y.E().f50691j.warning(com.android.tools.r8.androidapi.d.a(c4725u2.getReference()));
            return;
        }
        if (F10.a().e(c4798y.E().z())) {
            return;
        }
        if (c4725u2.p1()) {
            com.android.tools.r8.graph.M2 m22 = c4798y.b().f38173v3;
            com.android.tools.r8.graph.M2 type = c4725u2.getType();
            while (type != null) {
                if (type != m22) {
                    com.android.tools.r8.graph.E0 c10 = c4798y.f().c(type);
                    type = c10 == null ? null : c10.a1();
                }
            }
            return;
        }
        com.android.tools.r8.internal.Y2.a(c4798y, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set a10;
                a10 = GlobalSyntheticsGenerator.a(Set.this, (InterfaceC4784x4) obj);
                return a10;
            }
        }, c4725u2, c4351a6, interfaceC6358a3);
    }

    private static void a(final C4798y c4798y, final C5978Tm0 c5978Tm0, ExecutorService executorService) {
        final com.android.tools.r8.androidapi.a aVar = c4798y.f38404S;
        final Set<String> c10 = com.android.tools.r8.internal.E2.c();
        final C4724u1 b10 = c4798y.b();
        final C4351a6 c4351a6 = new C4351a6(c4798y.b().f37835C3);
        final com.android.tools.r8.internal.Z2 z22 = com.android.tools.r8.internal.Z2.f46148a;
        J.a(c4798y, c4798y.e().a().k(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                GlobalSyntheticsGenerator.a(Set.this, b10, aVar, c4798y, c5978Tm0, c4351a6, z22, (C4725u2) obj);
            }
        }, executorService);
    }
}
