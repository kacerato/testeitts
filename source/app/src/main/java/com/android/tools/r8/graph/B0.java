package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.naming.C10912b;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class B0 {

    public final AbstractC4780x0 f36143a;

    public final C8570nJ f36144b;

    public B0(AbstractC4780x0 abstractC4780x0, C8570nJ c8570nJ) {
        this.f36143a = abstractC4780x0;
        this.f36144b = c8570nJ;
    }

    public static PrintStream a(PrintStream printStream, E0 e02) {
        return printStream;
    }

    public abstract void b(H2 h22, PrintStream printStream);

    public void b(final PrintStream printStream) throws IOException {
        e(printStream);
        a(new A0() {
            @Override
            public final PrintStream a(E0 e02) {
                return B0.a(PrintStream.this, e02);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                B0.a((PrintStream) obj);
            }
        });
    }

    public abstract void a(PrintStream printStream, H5 h52);

    public abstract void a(PrintStream printStream, C4460g1 c4460g1);

    public abstract void c(H2 h22, PrintStream printStream);

    public void c(PrintStream printStream) {
    }

    public void d(PrintStream printStream) {
    }

    public final void e(PrintStream printStream) {
        Collection<com.android.tools.r8.dex.W> d10 = this.f36143a.f38367e.d();
        System.out.println("Number of markers: " + d10.size());
        Iterator<com.android.tools.r8.dex.W> it = d10.iterator();
        while (it.hasNext()) {
            printStream.println(it.next().toString());
        }
    }

    public static void a(PrintStream printStream) {
    }

    public static A0 a(final C10912b c10912b, final Path path, final String str) {
        return new A0() {
            @Override
            public final PrintStream a(E0 e02) {
                return B0.a(C10912b.this, path, str, e02);
            }
        };
    }

    public static PrintStream a(C10912b c10912b, Path path, String str, E0 e02) {
        Path resolve = path.resolve(C4932Bl.a(e02.f36245e.V0(), c10912b).replace('.', File.separatorChar) + str);
        Path parent = resolve.getParent();
        if (parent != null) {
            Files.createDirectories(parent, new FileAttribute[0]);
        }
        return new PrintStream(Files.newOutputStream(resolve, new OpenOption[0]));
    }

    public final void a(A0 a02, Consumer consumer) {
        for (H2 h22 : this.f36143a.e()) {
            if (a(h22)) {
                PrintStream a10 = a02.a(h22);
                try {
                    a(h22, a10);
                } finally {
                    consumer.accept(a10);
                }
            }
        }
    }

    public final boolean a(H2 h22) {
        if (this.f36144b.f50589C0.f45780d.length <= 0) {
            return true;
        }
        N4 b02 = h22.b0();
        final C8570nJ c8570nJ = this.f36144b;
        Objects.requireNonNull(c8570nJ);
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8570nJ.this.a((C4516j1) obj);
            }
        };
        C4516j1 a10 = b02.f36638b.a(predicate);
        if (a10 == null) {
            a10 = b02.f36638b.b(predicate);
        }
        return a10 != null;
    }

    public final void a(H2 h22, final PrintStream printStream) {
        c(h22, printStream);
        d(printStream);
        h22.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B0.this.a(printStream, (C4460g1) obj);
            }
        }, EnumC6871d70.f47286b);
        c(printStream);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B0.this.a(printStream, (H5) obj);
            }
        });
        b(h22, printStream);
    }
}
