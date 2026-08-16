package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.ArchiveClassFileProvider;
import com.android.tools.r8.ArchiveProgramResourceProvider;
import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.m;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import yd.C16181m;

public class C10689e extends AbstractC10685a {

    static final boolean f54646i = true;

    public C10689e(C5094Ef0 c5094Ef0, InterfaceC11677v0 interfaceC11677v0, Collection<ProgramResourceProvider> collection, Path path, Collection<ClassFileResourceProvider> collection2) {
        super(c5094Ef0, interfaceC11677v0, collection, path, collection2);
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 4) {
            C5094Ef0 c5094Ef0 = new C5094Ef0();
            InterfaceC11677v0.a a10 = InterfaceC11677v0.a(Paths.get(strArr[0], new String[0]));
            ArchiveProgramResourceProvider fromArchive = ArchiveProgramResourceProvider.fromArchive(Paths.get(strArr[1], new String[0]));
            int i10 = AbstractC7552hC.f48487c;
            new C10689e(c5094Ef0, a10, new C5920Sm0(fromArchive), Paths.get(strArr[2], new String[0]), new C5920Sm0(new ArchiveClassFileProvider(Paths.get(strArr[3], new String[0])))).run();
            return;
        }
        throw new RuntimeException(C10656zq0.a("Invalid invocation.", "Usage: GenerateDesugaredLibraryLintFiles <desugar configuration> <desugar implementation> <output directory> <android jar path for Android " + ((Object) AbstractC10685a.f54638g) + " or higher>"));
    }

    public C2 run() throws Exception {
        C2 d10 = this.f54641b.d();
        m b10 = new o(this.f54640a, this.f54645f, true).b(this.f54643d, this.f54642c);
        a(d10, C2.B, b10);
        a(d10, C2.L, b10);
        return d10;
    }

    private static String a(C2 c22, C2 c23) {
        return "desugared_apis_" + c22.d() + ConstantDescs.DEFAULT_NAME + c23.d();
    }

    private Path b(C2 c22, C2 c23) {
        Path resolve = this.f54644e.resolve("compile_api_level_" + c22.d());
        Files.createDirectories(resolve, new FileAttribute[0]);
        return Paths.get(((Object) resolve) + File.separator + a(c22, c23) + ".txt", new String[0]);
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.AbstractCollection, java.util.List] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.AbstractCollection, java.util.List] */
    public final void a(C2 c22, final C2 c23, m mVar) {
        final ArrayList arrayList = new ArrayList();
        mVar.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10689e.this.a(c23, arrayList, (m.d) obj);
            }
        });
        for (A2 a22 : mVar.f54671b) {
            String h10 = C4932Bl.h(a22.s0().f36592f.toString());
            L2 l22 = a22.f38298g;
            I2 i22 = a22.f36127i;
            i22.getClass();
            arrayList.add(h10 + C16181m.f130230g + ((Object) l22) + i22.a(AbstractC10992r0.a()));
        }
        for (C4554l1 c4554l1 : mVar.f54672c) {
            arrayList.add(C4932Bl.h(c4554l1.s0().f36592f.toString()) + C16181m.f130230g + ((Object) c4554l1.f38298g));
        }
        arrayList.sort(Comparator.naturalOrder());
        a(c22, c23, arrayList);
    }

    public void a(C2 c22, List list, String str, C4516j1 c4516j1, m.c cVar) {
        if (c4516j1.j1() || c4516j1.f1()) {
            return;
        }
        if (cVar != null) {
            if (cVar.f54675a) {
                return;
            }
            if (cVar.f54682e) {
                if (c22 != C2.L) {
                    return;
                }
            } else if (!f54646i && !cVar.f54683f) {
                throw new AssertionError();
            }
        }
        L2 l22 = c4516j1.getReference().f38298g;
        I2 i22 = c4516j1.getReference().f36127i;
        i22.getClass();
        list.add(str + C16181m.f130230g + ((Object) l22) + i22.a(AbstractC10992r0.a()));
    }

    public void a(final C2 c22, final List list, m.d dVar) {
        final String h10 = C4932Bl.h(dVar.f54685a.f36245e.f36592f.toString());
        if (!dVar.f54686b.f54667b) {
            dVar.b(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C10689e.this.a(c22, list, h10, (C4516j1) obj, (m.c) obj2);
                }
            });
            dVar.a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C10689e.a(List.this, h10, (C4460g1) obj, (m.a) obj2);
                }
            });
        } else {
            list.add(h10);
        }
    }

    public static void a(List list, String str, C4460g1 c4460g1, m.a aVar) {
        if (aVar == null || !aVar.f54675a) {
            list.add(str + C16181m.f130230g + ((Object) c4460g1.getReference().f38298g));
        }
    }

    public void a(C2 c22, C2 c23, ArrayList arrayList) {
        C6169Ww.a(b(c22, c23), arrayList);
    }
}
