package com.android.tools.r8.tracereferences;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.Version;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.AbstractC9462si;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5354It;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.EK;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.utils.C11662i;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class TraceReferences {

    static final boolean f58404a = true;

    public static void main(final String[] strArr) {
        if (strArr.length == 0) {
            throw new RuntimeException(C10656zq0.a("Invalid invocation.", C11631h.a()));
        }
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                TraceReferences.run(strArr);
            }
        });
    }

    public static void run(TraceReferencesCommand traceReferencesCommand) throws CompilationFailedException {
        b(traceReferencesCommand, traceReferencesCommand.b());
    }

    public static void a(Set set, ClassFileResourceProvider classFileResourceProvider) {
        set.addAll(classFileResourceProvider.getClassDescriptors());
    }

    public static void b(final TraceReferencesCommand traceReferencesCommand, final C8570nJ c8570nJ) throws CompilationFailedException {
        AbstractC8333lv.a(traceReferencesCommand.d(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                TraceReferences.c(TraceReferencesCommand.this, c8570nJ);
            }
        });
    }

    public static void c(TraceReferencesCommand traceReferencesCommand, C8570nJ c8570nJ) {
        final C11662i.a b10 = C11662i.b();
        AbstractC7552hC c10 = traceReferencesCommand.c();
        Objects.requireNonNull(b10);
        c10.forEach(new C11635l(b10));
        traceReferencesCommand.f().forEach(new C11636m(b10));
        traceReferencesCommand.e().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11662i.a.this.a((ProgramResourceProvider) obj);
            }
        });
        final HashSet hashSet = new HashSet();
        traceReferencesCommand.f().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                TraceReferences.a(Set.this, (ClassFileResourceProvider) obj);
            }
        });
        for (ProgramResourceProvider programResourceProvider : traceReferencesCommand.e()) {
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Set.this.remove((String) obj);
                }
            };
            for (ProgramResource programResource : programResourceProvider.getProgramResources()) {
                if (programResource.getKind() == ProgramResource.Kind.DEX) {
                    if (!f58404a && programResource.getClassDescriptors() != null) {
                        throw new AssertionError();
                    }
                    C11662i.a b11 = C11662i.b();
                    byte[] bytes = programResource.getBytes();
                    int i10 = AbstractC7552hC.f48487c;
                    C5920Sm0 c5920Sm0 = new C5920Sm0(bytes);
                    b11.getClass();
                    Iterator it = c5920Sm0.iterator();
                    while (true) {
                        EK ek2 = (EK) it;
                        if (ek2.f39831b) {
                            break;
                        } else {
                            b11.f58598b.addAll(Arrays.asList(ProgramResource.fromBytes(Origin.unknown(), ProgramResource.Kind.DEX, (byte[]) ek2.next(), null)));
                        }
                    }
                    Iterator<H2> it2 = new C4303c(b11.a(), new C8570nJ(), C8659ns0.c()).a().d().iterator();
                    while (it2.hasNext()) {
                        consumer.accept(it2.next().getType().V0());
                    }
                } else {
                    if (!f58404a && programResource.getClassDescriptors() == null) {
                        throw new AssertionError();
                    }
                    programResource.getClassDescriptors().forEach(consumer);
                }
            }
        }
        C4798y c4798y = new C4798y(C4514j.a(new C4303c(b10.a(), c8570nJ, C8659ns0.c()).a().i(), C6300Zd.a(), C11349o2.b(), com.android.tools.r8.synthesis.E.e()), C5354It.f41240c, AbstractC9148qo0.b(), 1, C8659ns0.c());
        AbstractC9462si.a(c4798y);
        C5094Ef0 d10 = traceReferencesCommand.d();
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a10;
                a10 = TraceReferences.a(Set.this, (M2) obj);
                return a10;
            }
        };
        TraceReferencesConsumer a10 = traceReferencesCommand.a();
        C11633j c11633j = new C11633j(c4798y, a10, d10, predicate);
        Iterator<H2> it3 = ((C4514j) c4798y.f()).d().iterator();
        while (it3.hasNext()) {
            c11633j.a(it3.next());
        }
        a10.finished(d10);
    }

    public static void run(String... strArr) throws CompilationFailedException {
        TraceReferencesCommand build = TraceReferencesCommand.parse(strArr, com.android.tools.r8.origin.a.f56150f).build();
        if (build.isPrintHelp()) {
            System.out.println(C11631h.a());
            return;
        }
        if (build.isPrintVersion()) {
            System.out.println("tracereferences " + Version.getVersionString());
            return;
        }
        run(build);
    }

    public static boolean a(Set set, M2 m22) {
        return set.contains(m22.V0());
    }
}
