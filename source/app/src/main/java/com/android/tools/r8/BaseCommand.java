package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7348g;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public abstract class BaseCommand {

    static final boolean f35160d = true;

    private final boolean f35161a;

    private final boolean f35162b;

    private final C11662i f35163c;

    public static abstract class Builder<C extends BaseCommand, B extends Builder<C, B>> {

        private final C5094Ef0 f35164a;

        private boolean f35165b;

        private boolean f35166c;

        private final C11662i.a f35167d;

        final ArrayList f35168e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Builder(DiagnosticsHandler diagnosticsHandler) {
            this(C11662i.a(r2));
            C5094Ef0 c5094Ef0;
            if (diagnosticsHandler instanceof C5094Ef0) {
                c5094Ef0 = (C5094Ef0) diagnosticsHandler;
            } else {
                c5094Ef0 = new C5094Ef0(diagnosticsHandler);
            }
        }

        public B addClassProgramData(final byte[] bArr, final Origin origin) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.a(bArr, origin);
                }
            });
            return (B) c();
        }

        public B addClasspathFiles(final Path... pathArr) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.a(pathArr);
                }
            });
            return (B) c();
        }

        public B addClasspathResourceProvider(final ClassFileResourceProvider classFileResourceProvider) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.a(classFileResourceProvider);
                }
            });
            return (B) c();
        }

        public B addDexProgramData(final byte[] bArr, final Origin origin) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.b(bArr, origin);
                }
            });
            return (B) c();
        }

        public B addLibraryFiles(Path... pathArr) {
            addLibraryFiles(Arrays.asList(pathArr));
            return (B) c();
        }

        public B addLibraryResourceProvider(final ClassFileResourceProvider classFileResourceProvider) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.b(classFileResourceProvider);
                }
            });
            return (B) c();
        }

        public B addMainDexClasses(final String... strArr) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.a(strArr);
                }
            });
            return (B) c();
        }

        public B addMainDexListFiles(final Path... pathArr) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.b(pathArr);
                }
            });
            return (B) c();
        }

        public B addProgramFiles(Path... pathArr) {
            addProgramFiles(Arrays.asList(pathArr));
            return (B) c();
        }

        public B addProgramResourceProvider(ProgramResourceProvider programResourceProvider) {
            this.f35167d.a(programResourceProvider);
            return (B) c();
        }

        public final C build() throws CompilationFailedException {
            final C7 c72 = new C7(null);
            AbstractC8333lv.a(this.f35164a, new AbstractC8333lv.a() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.a(c72);
                }
            });
            return (C) c72.a();
        }

        public abstract Builder c();

        public void error(Diagnostic diagnostic) {
            this.f35164a.error(diagnostic);
        }

        public RuntimeException fatalError(Diagnostic diagnostic) {
            C5094Ef0 c5094Ef0 = this.f35164a;
            c5094Ef0.a(null, diagnostic);
            throw c5094Ef0.f39969c;
        }

        public boolean isPrintHelp() {
            return this.f35165b;
        }

        public boolean isPrintVersion() {
            return this.f35166c;
        }

        public abstract BaseCommand makeCommand();

        public B setPrintHelp(boolean z10) {
            this.f35165b = z10;
            return (B) c();
        }

        public B setPrintVersion(boolean z10) {
            this.f35166c = z10;
            return (B) c();
        }

        public void a(C7 c72) {
            d();
            c72.a((C7) makeCommand());
            this.f35164a.a();
        }

        public void c(Collection collection) {
            this.f35167d.f58605i.addAll(collection);
        }

        public void e(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Path path = (Path) it.next();
                try {
                    this.f35167d.c(path);
                    this.f35168e.add(path);
                } catch (C5325If e10) {
                    this.f35164a.error(new ExceptionDiagnostic(e10, new C4841i(path)));
                }
            }
        }

        public C5094Ef0 b() {
            return this.f35164a;
        }

        public void d() {
        }

        public void b(ClassFileResourceProvider classFileResourceProvider) {
            a().b(classFileResourceProvider);
        }

        public void d(Collection collection) {
            try {
                C11662i.a aVar = this.f35167d;
                aVar.getClass();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    Path path = (Path) it.next();
                    if (Files.exists(path, new LinkOption[0])) {
                        aVar.f58604h.add(InterfaceC11677v0.a(path));
                    } else {
                        throw new NoSuchFileException(path.toString());
                    }
                }
            } catch (NoSuchFileException e10) {
                this.f35164a.error(new StringDiagnostic("Main-dex-list file does not exist", new PathOrigin(Paths.get(e10.getFile(), new String[0]))));
            }
        }

        public B addClasspathFiles(final Collection<Path> collection) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.a(collection);
                }
            });
            return (B) c();
        }

        public B addLibraryFiles(final Collection<Path> collection) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.b(collection);
                }
            });
            return (B) c();
        }

        public B addMainDexClasses(final Collection<String> collection) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.c(collection);
                }
            });
            return (B) c();
        }

        public B addMainDexListFiles(final Collection<Path> collection) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.d(collection);
                }
            });
            return (B) c();
        }

        public B addProgramFiles(final Collection<Path> collection) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.e(collection);
                }
            });
            return (B) c();
        }

        public void b(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Path path = (Path) it.next();
                try {
                    this.f35167d.b(path);
                } catch (C5325If e10) {
                    this.f35164a.error(new ExceptionDiagnostic(e10, new C4836h(path)));
                }
            }
        }

        public Builder(C11662i.a aVar) {
            this.f35165b = false;
            this.f35166c = false;
            this.f35168e = new ArrayList();
            this.f35167d = aVar;
            this.f35164a = aVar.f58609m;
        }

        public C11662i.a a() {
            return this.f35167d;
        }

        public void a(Path[] pathArr) {
            Arrays.stream(pathArr).forEach(new I0(this));
        }

        public void a(Collection collection) {
            collection.forEach(new I0(this));
        }

        public void a(final Path path) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.b(path);
                }
            });
        }

        public void b(Path path) {
            C11662i.a a10 = a();
            a10.a(path, a10.f58601e);
        }

        public void a(ClassFileResourceProvider classFileResourceProvider) {
            a().a(classFileResourceProvider);
        }

        public void a(byte[] bArr, Origin origin) {
            this.f35167d.a(bArr, origin);
        }

        public void a(String[] strArr) {
            C11662i.a aVar = this.f35167d;
            aVar.getClass();
            aVar.f58605i.addAll(Arrays.asList(strArr));
        }

        public void b(byte[] bArr, Origin origin) {
            this.f35167d.b(bArr, origin);
        }

        public void b(Path[] pathArr) {
            try {
                C11662i.a aVar = this.f35167d;
                aVar.getClass();
                for (Path path : Arrays.asList(pathArr)) {
                    if (Files.exists(path, new LinkOption[0])) {
                        aVar.f58604h.add(InterfaceC11677v0.a(path));
                    } else {
                        throw new NoSuchFileException(path.toString());
                    }
                }
            } catch (NoSuchFileException e10) {
                this.f35164a.error(new StringDiagnostic("Main-dex-list file does not exist", new PathOrigin(Paths.get(e10.getFile(), new String[0]))));
            }
        }

        public void a(boolean z10) {
            this.f35167d.f58606j = z10;
        }

        public final void a(PathOrigin pathOrigin, IOException iOException) {
            this.f35164a.error(new ExceptionDiagnostic(iOException, pathOrigin));
        }

        public final void a(Runnable runnable) {
            try {
                runnable.run();
            } catch (C5325If e10) {
                this.f35164a.error(new StringDiagnostic(e10.getMessage(), e10.f41159b, e10.f41160c));
            } catch (C7348g unused) {
            }
        }

        public final void b(final boolean z10) {
            a(new Runnable() {
                @Override
                public final void run() {
                    BaseCommand.Builder.this.a(z10);
                }
            });
        }
    }

    public BaseCommand(boolean z10, boolean z11) {
        this.f35161a = z10;
        this.f35162b = z11;
        this.f35163c = null;
    }

    public C11662i a() {
        return this.f35163c;
    }

    public abstract C8570nJ b();

    public boolean isPrintHelp() {
        return this.f35161a;
    }

    public boolean isPrintVersion() {
        return this.f35162b;
    }

    public BaseCommand(C11662i c11662i) {
        if (!f35160d && c11662i == null) {
            throw new AssertionError();
        }
        this.f35163c = c11662i;
        this.f35161a = false;
        this.f35162b = false;
    }
}
