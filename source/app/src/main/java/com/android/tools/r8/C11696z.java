package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.U5;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.utils.C11662i;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public class C11696z {
    public static void a(a aVar) {
        C11662i a10 = aVar.a();
        C8570nJ c8570nJ = new C8570nJ();
        c8570nJ.f50645V = true;
        try {
            B b10 = b(aVar);
            try {
                ArrayList a11 = a10.a((Consumer) null);
                int size = a11.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = a11.get(i10);
                    i10++;
                    a(aVar, b10, (ProgramResource) obj, c8570nJ);
                }
                b10.close();
            } catch (Throwable th2) {
                try {
                    b10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static B b(a aVar) {
        String str;
        Path path = aVar.f58681e;
        if (path == null) {
            return new C();
        }
        if (!Files.isDirectory(path, new LinkOption[0])) {
            Path path2 = aVar.f58681e;
            Path parent = path2.getParent();
            if (parent != null) {
                Files.createDirectories(parent, new FileAttribute[0]);
            }
            return new A(new PrintStream(Files.newOutputStream(path2, new OpenOption[0])));
        }
        Path path3 = aVar.f58681e;
        if (aVar.f58683g) {
            str = ".smali";
        } else {
            boolean z10 = com.android.tools.r8.graph.C.f36176l;
            str = ".dump";
        }
        Path parent2 = path3.getParent();
        if (parent2 != null) {
            Files.createDirectories(parent2, new FileAttribute[0]);
        }
        return new C11691y(str, path3);
    }

    public static class a extends BaseCommand {

        public final Path f58681e;

        public final InterfaceC11677v0.a f58682f;

        public final boolean f58683g;

        public static class C0917a extends BaseCommand.Builder<a, C0917a> {

            public Path f58684f;

            public Path f58685g;

            public boolean f58686h;

            public C0917a() {
                super(C11662i.b());
                this.f58684f = null;
                this.f58685g = null;
                this.f58686h = false;
            }

            @Override
            public final BaseCommand.Builder c() {
                return this;
            }

            public C0917a d(Path path) {
                this.f58685g = path;
                return this;
            }

            @Override
            public final BaseCommand makeCommand() {
                if (isPrintHelp() || isPrintVersion()) {
                    return new a(isPrintHelp(), isPrintVersion());
                }
                C11662i a10 = a().a();
                Path path = this.f58684f;
                Path path2 = this.f58685g;
                return new a(a10, path, path2 == null ? null : InterfaceC11677v0.a(path2), this.f58686h);
            }

            public C0917a c(Path path) {
                this.f58684f = path;
                return this;
            }

            public C0917a c(boolean z10) {
                this.f58686h = z10;
                return this;
            }
        }

        public a(C11662i c11662i, Path path, InterfaceC11677v0.a aVar, boolean z10) {
            super(c11662i);
            this.f58681e = path;
            this.f58682f = aVar;
            this.f58683g = z10;
        }

        public static C0917a c() {
            return new C0917a();
        }

        @Override
        public final C8570nJ b() {
            C8570nJ c8570nJ = new C8570nJ();
            c8570nJ.f50645V = true;
            return c8570nJ;
        }

        public a(boolean z10, boolean z11) {
            super(z10, z11);
            this.f58681e = null;
            this.f58682f = null;
            this.f58683g = false;
        }
    }

    public static void a(a aVar, B b10, final ProgramResource programResource, C8570nJ c8570nJ) {
        com.android.tools.r8.graph.B0 c10;
        ExecutorService a10 = C5467Kr0.a(c8570nJ);
        try {
            C4765w4 a11 = new C4303c(C11662i.b().a(new ProgramResourceProvider() {
                @Override
                public final Collection getProgramResources() {
                    Collection singletonList;
                    singletonList = Collections.singletonList(ProgramResource.this);
                    return singletonList;
                }
            }).a(), c8570nJ, C8659ns0.c()).a(aVar.f58682f, a10);
            if (aVar.f58683g) {
                c10 = new U5(a11, c8570nJ);
            } else {
                c10 = new com.android.tools.r8.graph.C(a11, c8570nJ, false, false, true);
            }
            if (b10.b()) {
                c10.e(b10.a(a11.g()).a(null));
            }
            c10.a(b10.a(a11.g()), b10.a());
            a10.shutdown();
        } catch (Throwable th2) {
            a10.shutdown();
            throw th2;
        }
    }
}
