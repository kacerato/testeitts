package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.ArchiveClassFileProvider;
import com.android.tools.r8.ArchiveProgramResourceProvider;
import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.m;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class C10694j extends AbstractC10685a {
    public C10694j(InterfaceC11677v0 interfaceC11677v0, Collection<ProgramResourceProvider> collection, Path path, Collection<ClassFileResourceProvider> collection2) {
        super(new C5094Ef0(), interfaceC11677v0, collection, path, collection2);
    }

    public static void a(PrintStream printStream, m.d dVar) {
        final C10691g c10691g = new C10691g(dVar.f54685a.f36245e, dVar.f54686b);
        dVar.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10694j.a(AbstractC10692h.this, (C4460g1) obj, (m.a) obj2);
            }
        });
        dVar.b(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10694j.a(AbstractC10692h.this, (C4516j1) obj, (m.c) obj2);
            }
        });
        printStream.println(c10691g);
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr[0].equals("--generate-api-docs") && strArr.length == 5) {
            InterfaceC11677v0.a a10 = InterfaceC11677v0.a(Paths.get(strArr[1], new String[0]));
            ArchiveProgramResourceProvider fromArchive = ArchiveProgramResourceProvider.fromArchive(Paths.get(strArr[2], new String[0]));
            int i10 = AbstractC7552hC.f48487c;
            new C10694j(a10, new C5920Sm0(fromArchive), Paths.get(strArr[3], new String[0]), new C5920Sm0(new ArchiveClassFileProvider(Paths.get(strArr[4], new String[0])))).a("apis.html");
            return;
        }
        throw new RuntimeException(C10656zq0.a("Invalid invocation.", "Usage: GenerateHtmlDoc --generate-api-docs <desugar configuration> <desugar implementation> <output directory> <android jar path for Android " + ((Object) AbstractC10685a.f54638g) + " or higher>"));
    }

    public final void b(PrintStream printStream, m.d dVar) {
        a(printStream, dVar);
    }

    public static void a(AbstractC10692h abstractC10692h, C4460g1 c4460g1, m.a aVar) {
        abstractC10692h.f54653a.put(c4460g1, aVar);
    }

    public static void a(AbstractC10692h abstractC10692h, C4516j1 c4516j1, m.c cVar) {
        if (c4516j1.f37314g.I()) {
            return;
        }
        abstractC10692h.getClass();
        if (!AbstractC10692h.f54652f && c4516j1.f1()) {
            throw new AssertionError();
        }
        if (c4516j1.i1()) {
            abstractC10692h.f54654b.put(c4516j1, cVar);
        } else {
            abstractC10692h.f54655c.put(c4516j1, cVar);
        }
    }

    public C2 a(String str) throws Exception {
        final PrintStream printStream = new PrintStream(Files.newOutputStream(this.f54644e.resolve(str), new OpenOption[0]));
        new o(this.f54640a, this.f54645f, false).b(this.f54643d, this.f54642c).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10694j.this.b(printStream, (m.d) obj);
            }
        });
        return AbstractC10685a.f54638g;
    }
}
