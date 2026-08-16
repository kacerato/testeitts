package com.android.tools.r8;

import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.D8Command;
import com.android.tools.r8.R8Command;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.InterfaceC4651q3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC8194l4;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5821Qv;
import com.android.tools.r8.internal.C5879Rv;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6403aJ;
import com.android.tools.r8.internal.C7775ib0;
import com.android.tools.r8.internal.C8441mb0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8775ob0;
import com.android.tools.r8.internal.C8942pb0;
import com.android.tools.r8.internal.C8981po0;
import com.android.tools.r8.internal.C9362s4;
import com.android.tools.r8.internal.C9905vJ;
import com.android.tools.r8.utils.C11662i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;

public class C11105s0 {

    public final C8570nJ f56328a;

    public final C8659ns0 f56329b;

    public C11105s0(C8570nJ c8570nJ) {
        this.f56328a = c8570nJ;
        this.f56329b = C8659ns0.a(c8570nJ, "R8 partial 8.10.21");
    }

    public static void a(final C11662i c11662i, final C8570nJ c8570nJ) throws CompilationFailedException {
        final ExecutorService a10 = C5467Kr0.a(c8570nJ);
        AbstractC8333lv.a(c8570nJ.f50691j, new AbstractC8333lv.a() {
            @Override
            public final void run() {
                C11105s0.a(C8570nJ.this, c11662i, a10);
            }
        });
    }

    public static void a(C8570nJ c8570nJ, C11662i c11662i, ExecutorService executorService) {
        try {
            new C11105s0(c8570nJ).a(c11662i, executorService);
        } finally {
            executorService.shutdown();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C11662i c11662i, ExecutorService executorService) {
        Map map;
        if (!this.f56328a.B().f57595J) {
            C5821Qv c5821Qv = this.f56328a.f50718s;
            int i10 = 0;
            if (c5821Qv == null) {
                map = null;
            } else {
                IdentityHashMap identityHashMap = new IdentityHashMap();
                ArrayList arrayList = c5821Qv.f43761a;
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    FeatureSplit featureSplit = (FeatureSplit) obj;
                    identityHashMap.put(featureSplit, featureSplit.a());
                }
                map = identityHashMap;
            }
            this.f56329b.b("Process input");
            C4765w4 a10 = new C4303c(c11662i, this.f56328a, this.f56329b).a(executorService);
            List list = a10.f38329k;
            C4462g3 i12 = a10.i();
            C8441mb0 a11 = C8441mb0.a(i12);
            LinkedHashSet linkedHashSet = a11.f50338a;
            LinkedHashSet linkedHashSet2 = a11.f50339b;
            C7775ib0 c7775ib0 = new C7775ib0(linkedHashSet, linkedHashSet2, i12.f37230l, i12.k(), list);
            this.f56329b.d().b("Run D8");
            D8Command.Builder programConsumer = D8Command.builder(this.f56328a.f50691j).setMinApiLevel(this.f56328a.z().d()).setMode(this.f56328a.f50690i1 ? CompilationMode.DEBUG : CompilationMode.RELEASE).setProgramConsumer(DexIndexedConsumer.emptyConsumer());
            ((BaseCompilerCommand.Builder) programConsumer.addClasspathResourceProvider((ClassFileResourceProvider) new C6403aJ(c7775ib0.f48979c))).addLibraryResourceProvider(new C6403aJ(c7775ib0.f48980d));
            ((D8Command.Builder) programConsumer.addProgramResourceProvider(new C9905vJ(linkedHashSet))).addProgramResourceProvider(new C9905vJ(linkedHashSet2));
            programConsumer.d();
            D8Command a12 = programConsumer.a(this.f56328a.m());
            C11662i a13 = a12.a();
            C8570nJ b10 = a12.b();
            this.f56328a.f50593D1.f48617d.accept(b10);
            C8775ob0 c8775ob0 = new C8775ob0(c7775ib0.a(), c7775ib0.b(), this.f56329b);
            b10.f50584A1 = new C9362s4(b10, this.f56328a.q());
            b10.f50718s = this.f56328a.f50718s;
            b10.f50587B1 = new C8981po0(b10, this.f56328a.E());
            b10.f50596E1 = c8775ob0;
            D8.d(a13, b10, executorService);
            boolean z10 = C8775ob0.f51284i;
            if (!z10 && c8775ob0.f51287d == null) {
                throw new AssertionError();
            }
            AbstractC8194l4 abstractC8194l4 = c8775ob0.f51287d;
            C6300Zd c6300Zd = c8775ob0.f51288e;
            if (!z10 && c8775ob0.f51289f == null) {
                throw new AssertionError();
            }
            ArrayList arrayList2 = c8775ob0.f51289f;
            if (!z10 && c8775ob0.f51290g == null) {
                throw new AssertionError();
            }
            ArrayList arrayList3 = c8775ob0.f51290g;
            if (!z10 && c8775ob0.f51291h == null) {
                throw new AssertionError();
            }
            AbstractC9148qo0 abstractC9148qo0 = c8775ob0.f51291h;
            this.f56329b.d();
            if (map != null) {
                ArrayList arrayList4 = this.f56328a.f50718s.f43761a;
                int size2 = arrayList4.size();
                while (i10 < size2) {
                    Object obj2 = arrayList4.get(i10);
                    i10++;
                    FeatureSplit featureSplit2 = (FeatureSplit) obj2;
                    featureSplit2.a((C5879Rv) map.get(featureSplit2));
                }
                map.clear();
            }
            a();
            this.f56329b.b("Run R8");
            R8Command.Builder programConsumer2 = R8Command.builder(new C11042p0(this.f56328a.f50691j)).addProgramResourceProvider((ProgramResourceProvider) new C9905vJ(arrayList3)).enableLegacyFullModeForKeepRules(true).setMinApiLevel(this.f56328a.z().d()).setMode(this.f56328a.f50690i1 ? CompilationMode.DEBUG : CompilationMode.RELEASE).setProgramConsumer(this.f56328a.f50697l);
            for (ProgramResourceProvider programResourceProvider : c11662i.h()) {
                if (programResourceProvider.getDataResourceProvider() == null) {
                    programResourceProvider.finished(this.f56328a.f50691j);
                } else {
                    programConsumer2.addProgramResourceProvider((ProgramResourceProvider) new C11047q0(programResourceProvider));
                }
            }
            ((BaseCompilerCommand.Builder) programConsumer2.addClasspathResourceProvider(new C6403aJ(c7775ib0.f48979c))).addLibraryResourceProvider(new C6403aJ(c7775ib0.f48980d));
            Set set = c7775ib0.f48977a;
            boolean z11 = com.android.tools.r8.graph.I0.f36432u;
            IdentityHashMap identityHashMap2 = new IdentityHashMap(set.size());
            for (Iterator it = set.iterator(); it.hasNext(); it = it) {
                com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
                identityHashMap2.put(h22.getType(), new com.android.tools.r8.graph.I0(h22.getType(), h22.f36366u, h22.f36244d, h22.getAccessFlags(), h22.a1(), h22.R0(), h22.Z0(), h22.U0(), h22.V0(), h22.W0(), h22.X0(), h22.O0(), h22.Q0(), h22.N0(), h22.k0(), InterfaceC4651q3.a(h22.f36251k), N4.a.a(h22.b0()), false));
            }
            programConsumer2.addClasspathResourceProvider(new C6403aJ(identityHashMap2));
            programConsumer2.d();
            R8Command a14 = programConsumer2.a(this.f56328a.m(), this.f56328a.B());
            C11662i a15 = a14.a();
            C8570nJ b11 = a14.b();
            this.f56328a.f50593D1.f48618e.accept(b11);
            b11.f50596E1 = new C8942pb0(abstractC8194l4, c6300Zd, arrayList2, c7775ib0.f48981e, abstractC9148qo0, this.f56329b);
            b11.f50584A1 = new C9362s4(b11, this.f56328a.q());
            b11.f50718s = this.f56328a.f50718s;
            b11.f50587B1 = new C8981po0(b11, this.f56328a.E());
            b11.f50694k = this.f56328a.f50694k;
            b11.F().f50858a = this.f56328a.F().f50858a;
            C8570nJ c8570nJ = this.f56328a;
            b11.f50632Q1 = c8570nJ.f50632Q1;
            b11.f50667b2 = c8570nJ.f50667b2;
            AndroidResourceProvider androidResourceProvider = c8570nJ.f50672d;
            if (androidResourceProvider != null) {
                b11.f50672d = androidResourceProvider;
                b11.f50676e = c8570nJ.f50676e;
                b11.f50682g = c8570nJ.f50682g;
            }
            R8.c(a15, b11, executorService);
            this.f56329b.d();
            if (this.f56328a.U()) {
                this.f56329b.e();
                return;
            }
            return;
        }
        throw this.f56328a.f50691j.b("Partial shrinking does not support proto shrinking");
    }

    public final void a() {
        C5821Qv c5821Qv = this.f56328a.f50718s;
        if (c5821Qv == null) {
            return;
        }
        ArrayList arrayList = c5821Qv.f43761a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            FeatureSplit featureSplit = (FeatureSplit) obj;
            featureSplit.a(AT.a((Collection) featureSplit.getProgramResourceProviders(), new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return C11105s0.this.a((ProgramResourceProvider) obj2);
                }
            }));
        }
    }

    public final ProgramResourceProvider a(ProgramResourceProvider programResourceProvider) {
        return new C11051r0(programResourceProvider);
    }
}
