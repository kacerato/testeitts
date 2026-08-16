package com.android.tools.r8.dex;

import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.errors.UnsupportedMainDexListUsageDiagnostic;
import com.android.tools.r8.graph.AbstractC4761w0;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4818z0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC9162qt;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.internal.EnumC5583Ms;
import com.android.tools.r8.internal.FU;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11315m2;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public class C4303c {

    public static final boolean f35822f = true;

    public final C8570nJ f35823a;

    public final C4724u1 f35824b;

    public final C8659ns0 f35825c;

    public final C11662i f35826d;

    public C4818z0 f35827e;

    public C4303c(C11662i c11662i, C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        this.f35823a = c8570nJ;
        this.f35824b = c8570nJ.f50660a;
        this.f35825c = c8659ns0;
        this.f35826d = c11662i;
    }

    public C4765w4 a() throws IOException {
        return a((InterfaceC11677v0) null);
    }

    public C4765w4 a(InterfaceC11677v0 interfaceC11677v0) throws IOException {
        ExecutorService createSingleThreadedExecutorService = this.f35823a.G().createSingleThreadedExecutorService();
        try {
            return a(interfaceC11677v0, createSingleThreadedExecutorService);
        } finally {
            createSingleThreadedExecutorService.shutdown();
        }
    }

    public final C4765w4 a(ExecutorService executorService) throws IOException {
        return a(this.f35826d.i(), executorService);
    }

    public final C4765w4 a(InterfaceC11677v0 interfaceC11677v0, ExecutorService executorService) throws IOException {
        return a(interfaceC11677v0, executorService, this.f35823a.f50728v0);
    }

    public final C4765w4 a(InterfaceC11677v0 interfaceC11677v0, ExecutorService executorService, AbstractC9162qt abstractC9162qt) {
        boolean z10 = f35822f;
        if (!z10) {
            C11662i c11662i = this.f35826d;
            C8570nJ c8570nJ = this.f35823a;
            if (c8570nJ.P()) {
                if (!c8570nJ.z().b(C2.L_MR1)) {
                    if (!z10 && !c8570nJ.f50602G1.isEmpty()) {
                        throw new AssertionError();
                    }
                    if (!z10 && c8570nJ.f50629P1 != null) {
                        throw new AssertionError();
                    }
                    if (!z10 && c11662i.k()) {
                        throw new AssertionError();
                    }
                }
            }
        }
        a(abstractC9162qt);
        if (this.f35823a.f50599F1.f50823I0) {
            this.f35826d.m();
        }
        this.f35825c.b("DexApplication.read");
        C4765w4.a a10 = AbstractC4780x0.a(this.f35823a, this.f35825c);
        C10325xr0 c10325xr0 = new C10325xr0(this.f35823a.G(), executorService, -1);
        try {
            try {
                a(interfaceC11677v0, a10, c10325xr0);
                C4301a c4301a = new C4301a(this, c10325xr0);
                c4301a.b();
                c10325xr0.a((Consumer) null);
                C4818z0 a11 = c4301a.a();
                this.f35827e = a11;
                a10.f38321f = a11;
                c4301a.a(a10);
                Iterator<ProgramResourceProvider> it = this.f35826d.h().iterator();
                while (it.hasNext()) {
                    DataResourceProvider dataResourceProvider = it.next().getDataResourceProvider();
                    if (dataResourceProvider != null) {
                        a10.a(dataResourceProvider);
                    }
                }
                this.f35825c.d();
                return a10.b();
            } catch (ResourceException e10) {
                C5094Ef0 c5094Ef0 = this.f35823a.f50691j;
                c5094Ef0.a(null, new StringDiagnostic(e10.getMessage(), e10.getOrigin()));
                throw c5094Ef0.f39969c;
            } catch (ExecutionException e11) {
                throw new RuntimeException(e11);
            }
        } catch (Throwable th2) {
            this.f35825c.d();
            throw th2;
        }
    }

    public final void a(AbstractC9162qt abstractC9162qt) {
        C8570nJ c8570nJ = this.f35823a;
        C9328rt c9328rt = c8570nJ.f50731w0;
        if (c9328rt != null && c8570nJ.f50596E1 == null && abstractC9162qt.a(c9328rt)) {
            Path b10 = abstractC9162qt.b();
            this.f35825c.b("ApplicationReader.dump");
            this.f35826d.a(b10, c9328rt, this.f35823a);
            this.f35825c.d();
            StringDiagnostic stringDiagnostic = new StringDiagnostic("Dumped compilation inputs to: " + ((Object) b10));
            if (!abstractC9162qt.c()) {
                if (abstractC9162qt.d()) {
                    C5094Ef0 c5094Ef0 = this.f35823a.f50691j;
                    synchronized (c5094Ef0) {
                        c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
                    }
                    return;
                }
                return;
            }
            C5094Ef0 c5094Ef02 = this.f35823a.f50691j;
            c5094Ef02.a(null, stringDiagnostic);
            throw c5094Ef02.f39969c;
        }
    }

    public final C11349o2 a(C4462g3 c4462g3) {
        return a((AbstractC4780x0) c4462g3, true);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.AbstractCollection, java.util.List] */
    public final C11349o2 a(AbstractC4780x0 abstractC4780x0, boolean z10) {
        C11349o2 b10 = C11349o2.b();
        b10.getClass();
        C11315m2 c11315m2 = new C11315m2(b10.f57585e);
        if (this.f35826d.k()) {
            for (InterfaceC11677v0 interfaceC11677v0 : this.f35826d.f58594h) {
                if (z10) {
                    this.f35823a.f50691j.error(new UnsupportedMainDexListUsageDiagnostic(interfaceC11677v0.getOrigin()));
                }
                a(abstractC4780x0, c11315m2, FU.a(interfaceC11677v0, this.f35824b));
            }
            if (!this.f35826d.f58595i.isEmpty()) {
                if (z10) {
                    this.f35823a.f50691j.error(new UnsupportedMainDexListUsageDiagnostic(Origin.unknown()));
                }
                a(abstractC4780x0, c11315m2, (Iterable) this.f35826d.f58595i.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C4303c.this.a((String) obj);
                    }
                }).collect(Collectors.toList()));
            }
        }
        boolean z11 = C11315m2.f57526f;
        if (!z11 && !c11315m2.f57530d.isEmpty()) {
            throw new AssertionError();
        }
        if (!z11 && !c11315m2.f57528b.isEmpty()) {
            throw new AssertionError();
        }
        Set set = c11315m2.f57527a;
        Set set2 = Collections.EMPTY_SET;
        return new C11349o2(set, set2, set2, set2, false);
    }

    public final M2 a(String str) {
        return this.f35824b.d(C4932Bl.H(str));
    }

    public final void a(AbstractC4780x0 abstractC4780x0, C11315m2 c11315m2, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            M2 m22 = (M2) it.next();
            H2 c10 = abstractC4780x0.c(m22);
            if (c10 != null) {
                c11315m2.f57527a.add(c10.getType());
            } else {
                C8570nJ c8570nJ = this.f35823a;
                c8570nJ.getClass();
                c8570nJ.f50691j.warning(new StringDiagnostic("Application does not contain `" + m22.j0() + "` as referenced in main-dex-list."));
            }
        }
    }

    public final void a(EnumC5583Ms enumC5583Ms) {
        throw new C5325If("Dex file with version '" + enumC5583Ms.f42433b + "' cannot be used with min sdk level '" + ((Object) this.f35823a.z()) + "'.");
    }

    public final void a(final InterfaceC11677v0 interfaceC11677v0, final C4765w4.a aVar, C10325xr0 c10325xr0) {
        if (interfaceC11677v0 == null) {
            return;
        }
        c10325xr0.b(new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C4303c.this.a(aVar, interfaceC11677v0);
            }
        });
    }

    public final void a(AbstractC4761w0 abstractC4761w0, InterfaceC11677v0 interfaceC11677v0) {
        try {
            String a10 = interfaceC11677v0.a();
            C8570nJ c8570nJ = this.f35823a;
            abstractC4761w0.a(C10912b.a(a10, (DiagnosticsHandler) c8570nJ.f50691j, c8570nJ.X().f50784b, this.f35823a.f50599F1.f50875f1, true));
        } catch (ResourceException | IOException e10) {
            throw new C5325If(interfaceC11677v0.getOrigin(), "Failure to read proguard map file", e10);
        }
    }
}
