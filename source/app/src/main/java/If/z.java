package If;

import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileSystemLoopException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.io.path.IllegalFileNameException;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.u0;
import nf.C14436t;
import nf.InterfaceC14422l0;
import nf.P0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import pf.S;

@t0({"SMAP\nPathRecursiveFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,532:1\n378#1,2:536\n386#1:538\n386#1:539\n380#1,4:540\n378#1,2:544\n386#1:546\n380#1,4:547\n386#1:551\n378#1,6:552\n378#1,2:558\n386#1:560\n380#1,4:561\n1#2:533\n1915#3,2:534\n*S KotlinDebug\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n*L\n394#1:536,2\n409#1:538\n412#1:539\n394#1:540,4\n420#1:544,2\n421#1:546\n420#1:547,4\n432#1:551\n440#1:552,6\n463#1:558,2\n464#1:560\n463#1:561,4\n314#1:534,2\n*E\n"})
public class z extends r {

    public static final class a {

        public static final int[] f9339a;

        public static final int[] f9340b;

        static {
            int[] iArr = new int[If.b.values().length];
            try {
                iArr[If.b.CONTINUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[If.b.TERMINATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[If.b.SKIP_SUBTREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f9339a = iArr;
            int[] iArr2 = new int[k.values().length];
            try {
                iArr2[k.TERMINATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[k.SKIP_SUBTREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f9340b = iArr2;
        }
    }

    public static final class b extends I implements Mf.p<Path, BasicFileAttributes, FileVisitResult> {

        public final ArrayList<Path> f9341b;

        public final Mf.q<InterfaceC2642a, Path, Path, If.b> f9342c;

        public final Path f9343d;

        public final Path f9344e;

        public final Path f9345f;

        public final Mf.q<Path, Path, Exception, k> f9346g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(ArrayList<Path> arrayList, Mf.q<? super InterfaceC2642a, ? super Path, ? super Path, ? extends If.b> qVar, Path path, Path path2, Path path3, Mf.q<? super Path, ? super Path, ? super Exception, ? extends k> qVar2) {
            super(2, M.a.class, "copy", "copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;", 0);
            this.f9341b = arrayList;
            this.f9342c = qVar;
            this.f9343d = path;
            this.f9344e = path2;
            this.f9345f = path3;
            this.f9346g = qVar2;
        }

        @Override
        public final FileVisitResult invoke(Path p02, BasicFileAttributes p12) {
            M.p(p02, "p0");
            M.p(p12, "p1");
            return z.V(this.f9341b, this.f9342c, this.f9343d, this.f9344e, this.f9345f, this.f9346g, p02, p12);
        }
    }

    public static final class c extends I implements Mf.p<Path, Exception, FileVisitResult> {

        public final Mf.q<Path, Path, Exception, k> f9347b;

        public final Path f9348c;

        public final Path f9349d;

        public final Path f9350e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(Mf.q<? super Path, ? super Path, ? super Exception, ? extends k> qVar, Path path, Path path2, Path path3) {
            super(2, M.a.class, "error", "copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;", 0);
            this.f9347b = qVar;
            this.f9348c = path;
            this.f9349d = path2;
            this.f9350e = path3;
        }

        @Override
        public final FileVisitResult invoke(Path p02, Exception p12) {
            M.p(p02, "p0");
            M.p(p12, "p1");
            return z.Z(this.f9347b, this.f9348c, this.f9349d, this.f9350e, p02, p12);
        }
    }

    public static final void Q(@NotNull Path path) {
        M.p(path, "<this>");
        String h12 = A.h1(path);
        int hashCode = h12.hashCode();
        if (hashCode != 46) {
            if (hashCode != 1518) {
                if (hashCode != 45679) {
                    if (hashCode != 45724) {
                        if (hashCode != 1472) {
                            if (hashCode != 1473 || !h12.equals("./")) {
                                return;
                            }
                        } else if (!h12.equals(ClasspathEntry.DOT_DOT)) {
                            return;
                        }
                    } else if (!h12.equals("..\\")) {
                        return;
                    }
                } else if (!h12.equals("../")) {
                    return;
                }
            } else if (!h12.equals(".\\")) {
                return;
            }
        } else if (!h12.equals(".")) {
            return;
        }
        throw new IllegalFileNameException(path);
    }

    public static final void R(Path path, Path path2) {
        if (!Files.isSymbolicLink(path) && Files.isSameFile(path, path2)) {
            throw new FileSystemLoopException(path.toString());
        }
    }

    public static final void S(e eVar, Mf.a<P0> aVar) {
        try {
            aVar.invoke();
        } catch (Exception e10) {
            eVar.a(e10);
        }
    }

    @f
    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final Path T(@NotNull final Path path, @NotNull final Path target, @NotNull final Mf.q<? super Path, ? super Path, ? super Exception, ? extends k> onError, boolean z10, @NotNull final Mf.q<? super InterfaceC2642a, ? super Path, ? super Path, ? extends If.b> copyAction) {
        M.p(path, "<this>");
        M.p(target, "target");
        M.p(onError, "onError");
        M.p(copyAction, "copyAction");
        LinkOption[] a10 = j.f9279a.a(z10);
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(a10, a10.length);
        if (!Files.exists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            throw new NoSuchFileException(path.toString(), target.toString(), "The source file doesn't exist.");
        }
        boolean z11 = false;
        if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && (z10 || !Files.isSymbolicLink(path))) {
            boolean z12 = Files.exists(target, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && !Files.isSymbolicLink(target);
            if (!z12 || !Files.isSameFile(path, target)) {
                if (M.g(path.getFileSystem(), target.getFileSystem())) {
                    if (z12) {
                        z11 = target.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0]));
                    } else {
                        Path parent = target.getParent();
                        if (parent != null && Files.exists(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && parent.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0]))) {
                            z11 = true;
                        }
                    }
                }
                if (z11) {
                    throw new FileSystemException(path.toString(), target.toString(), "Recursively copying a directory into its subdirectory is prohibited.");
                }
            }
        }
        final Path normalize = target.normalize();
        final ArrayList arrayList = new ArrayList();
        A.S1(path, 0, z10, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                P0 g02;
                g02 = z.g0(ArrayList.this, copyAction, path, target, normalize, onError, (g) obj);
                return g02;
            }
        }, 1, null);
        return target;
    }

    @f
    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final Path U(@NotNull Path path, @NotNull Path target, @NotNull Mf.q<? super Path, ? super Path, ? super Exception, ? extends k> onError, final boolean z10, boolean z11) {
        M.p(path, "<this>");
        M.p(target, "target");
        M.p(onError, "onError");
        return z11 ? T(path, target, onError, z10, new Mf.q() {
            @Override
            public final Object n(Object obj, Object obj2, Object obj3) {
                b b02;
                b02 = z.b0(z10, (InterfaceC2642a) obj, (Path) obj2, (Path) obj3);
                return b02;
            }
        }) : W(path, target, onError, z10, null, 8, null);
    }

    public static final FileVisitResult V(ArrayList<Path> arrayList, Mf.q<? super InterfaceC2642a, ? super Path, ? super Path, ? extends If.b> qVar, Path path, Path path2, Path path3, Mf.q<? super Path, ? super Path, ? super Exception, ? extends k> qVar2, Path path4, BasicFileAttributes basicFileAttributes) {
        try {
            if (!arrayList.isEmpty()) {
                Q(path4);
                Object u32 = S.u3(arrayList);
                M.o(u32, "last(...)");
                R(path4, (Path) u32);
            }
            return o0(qVar.n(If.c.f9262a, path4, Y(path, path2, path3, path4)));
        } catch (Exception e10) {
            return Z(qVar2, path, path2, path3, path4, e10);
        }
    }

    public static Path W(Path path, Path path2, Mf.q qVar, final boolean z10, Mf.q qVar2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            qVar = new Mf.q() {
                @Override
                public final Object n(Object obj2, Object obj3, Object obj4) {
                    k c02;
                    c02 = z.c0((Path) obj2, (Path) obj3, (Exception) obj4);
                    return c02;
                }
            };
        }
        if ((i10 & 8) != 0) {
            qVar2 = new Mf.q() {
                @Override
                public final Object n(Object obj2, Object obj3, Object obj4) {
                    b d02;
                    d02 = z.d0(z10, (InterfaceC2642a) obj2, (Path) obj3, (Path) obj4);
                    return d02;
                }
            };
        }
        return T(path, path2, qVar, z10, qVar2);
    }

    public static Path X(Path path, Path path2, Mf.q qVar, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            qVar = new Mf.q() {
                @Override
                public final Object n(Object obj2, Object obj3, Object obj4) {
                    k a02;
                    a02 = z.a0((Path) obj2, (Path) obj3, (Exception) obj4);
                    return a02;
                }
            };
        }
        return U(path, path2, qVar, z10, z11);
    }

    public static final Path Y(Path path, Path path2, Path path3, Path path4) {
        Path resolve = path2.resolve(A.G1(path4, path).toString());
        if (!resolve.normalize().startsWith(path3)) {
            throw new IllegalFileNameException(path4, resolve, "Copying files to outside the specified target directory is prohibited. The directory being recursively copied might contain an entry with an illegal name.");
        }
        M.m(resolve);
        return resolve;
    }

    public static final FileVisitResult Z(Mf.q<? super Path, ? super Path, ? super Exception, ? extends k> qVar, Path path, Path path2, Path path3, Path path4, Exception exc) {
        return p0(qVar.n(path4, Y(path, path2, path3, path4), exc));
    }

    public static final k a0(Path path, Path path2, Exception exception) {
        M.p(path, "<unused var>");
        M.p(path2, "<unused var>");
        M.p(exception, "exception");
        throw exception;
    }

    public static final If.b b0(boolean z10, InterfaceC2642a copyToRecursively, Path src, Path dst) {
        M.p(copyToRecursively, "$this$copyToRecursively");
        M.p(src, "src");
        M.p(dst, "dst");
        LinkOption[] a10 = j.f9279a.a(z10);
        boolean isDirectory = Files.isDirectory(dst, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1));
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(a10, a10.length);
        if (!Files.isDirectory(src, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length)) || !isDirectory) {
            if (isDirectory) {
                h0(dst);
            }
            u0 u0Var = new u0(2);
            u0Var.b(a10);
            u0Var.a(StandardCopyOption.REPLACE_EXISTING);
            CopyOption[] copyOptionArr = (CopyOption[]) u0Var.d(new CopyOption[u0Var.c()]);
            M.o(Files.copy(src, dst, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length)), "copy(...)");
        }
        return If.b.CONTINUE;
    }

    public static final k c0(Path path, Path path2, Exception exception) {
        M.p(path, "<unused var>");
        M.p(path2, "<unused var>");
        M.p(exception, "exception");
        throw exception;
    }

    public static final If.b d0(boolean z10, InterfaceC2642a interfaceC2642a, Path src, Path dst) {
        M.p(interfaceC2642a, "<this>");
        M.p(src, "src");
        M.p(dst, "dst");
        return interfaceC2642a.a(src, dst, z10);
    }

    public static final FileVisitResult e0(ArrayList arrayList, Mf.q qVar, Path path, Path path2, Path path3, Mf.q qVar2, Path directory, BasicFileAttributes attributes) {
        M.p(directory, "directory");
        M.p(attributes, "attributes");
        FileVisitResult V10 = V(arrayList, qVar, path, path2, path3, qVar2, directory, attributes);
        if (V10 == FileVisitResult.CONTINUE) {
            arrayList.add(directory);
        }
        return V10;
    }

    public static final FileVisitResult f0(ArrayList arrayList, Mf.q qVar, Path path, Path path2, Path path3, Path directory, IOException iOException) {
        M.p(directory, "directory");
        pf.M.Q0(arrayList);
        return iOException == null ? FileVisitResult.CONTINUE : Z(qVar, path, path2, path3, directory, iOException);
    }

    public static final P0 g0(final ArrayList arrayList, final Mf.q qVar, final Path path, final Path path2, final Path path3, final Mf.q qVar2, g visitFileTree) {
        M.p(visitFileTree, "$this$visitFileTree");
        visitFileTree.c(new Mf.p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                FileVisitResult e02;
                e02 = z.e0(ArrayList.this, qVar, path, path2, path3, qVar2, (Path) obj, (BasicFileAttributes) obj2);
                return e02;
            }
        });
        visitFileTree.d(new b(arrayList, qVar, path, path2, path3, qVar2));
        visitFileTree.a(new c(qVar2, path, path2, path3));
        visitFileTree.b(new Mf.p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                FileVisitResult f02;
                f02 = z.f0(ArrayList.this, qVar2, path, path2, path3, (Path) obj, (IOException) obj2);
                return f02;
            }
        });
        return P0.f98194a;
    }

    @f
    @InterfaceC14422l0(version = "1.8")
    public static final void h0(@NotNull Path path) {
        M.p(path, "<this>");
        List<Exception> i02 = i0(path);
        if (i02.isEmpty()) {
            return;
        }
        FileSystemException fileSystemException = new FileSystemException("Failed to delete one or more files. See suppressed exceptions for details.");
        Iterator<Exception> it = i02.iterator();
        while (it.hasNext()) {
            C14436t.a(fileSystemException, it.next());
        }
        throw fileSystemException;
    }

    public static final List<Exception> i0(Path path) {
        DirectoryStream<Path> directoryStream;
        boolean z10 = false;
        boolean z11 = true;
        e eVar = new e(0, 1, null);
        Path fileName = path.getFileName();
        if (fileName != null) {
            Path parent = path.getParent();
            if (parent == null) {
                parent = path.getFileSystem().getPath("", new String[0]);
            }
            try {
                directoryStream = Files.newDirectoryStream(parent);
            } catch (Throwable unused) {
                directoryStream = null;
            }
            if (directoryStream != null) {
                try {
                    if (directoryStream instanceof SecureDirectoryStream) {
                        eVar.g(parent);
                        k0((SecureDirectoryStream) directoryStream, fileName, null, eVar);
                    } else {
                        z10 = true;
                    }
                    P0 p02 = P0.f98194a;
                    kotlin.io.b.a(directoryStream, null);
                    z11 = z10;
                } finally {
                }
            }
        }
        if (z11) {
            m0(path, null, eVar);
        }
        return eVar.d();
    }

    public static final void j0(SecureDirectoryStream<Path> secureDirectoryStream, Path path, e eVar) {
        SecureDirectoryStream<Path> secureDirectoryStream2;
        try {
            try {
                secureDirectoryStream2 = secureDirectoryStream.newDirectoryStream(path, LinkOption.NOFOLLOW_LINKS);
            } catch (Exception e10) {
                eVar.a(e10);
                return;
            }
        } catch (NoSuchFileException unused) {
            secureDirectoryStream2 = null;
        }
        if (secureDirectoryStream2 == null) {
            return;
        }
        try {
            Iterator<Path> it = secureDirectoryStream2.iterator();
            M.o(it, "iterator(...)");
            while (it.hasNext()) {
                Path fileName = it.next().getFileName();
                M.o(fileName, "getFileName(...)");
                k0(secureDirectoryStream2, fileName, eVar.e(), eVar);
            }
            P0 p02 = P0.f98194a;
            kotlin.io.b.a(secureDirectoryStream2, null);
        } finally {
        }
    }

    public static final void k0(SecureDirectoryStream<Path> secureDirectoryStream, Path path, Path path2, e eVar) {
        eVar.b(path);
        if (path2 != null) {
            try {
                Path e10 = eVar.e();
                M.m(e10);
                Q(e10);
                R(e10, path2);
            } catch (Exception e11) {
                eVar.a(e11);
            }
        }
        if (n0(secureDirectoryStream, path, LinkOption.NOFOLLOW_LINKS)) {
            int f10 = eVar.f();
            j0(secureDirectoryStream, path, eVar);
            if (f10 == eVar.f()) {
                secureDirectoryStream.deleteDirectory(path);
                P0 p02 = P0.f98194a;
            }
            eVar.c(path);
        }
        secureDirectoryStream.deleteFile(path);
        P0 p03 = P0.f98194a;
        eVar.c(path);
    }

    public static final void l0(Path path, e eVar) {
        DirectoryStream<Path> directoryStream;
        try {
            try {
                directoryStream = Files.newDirectoryStream(path);
            } catch (Exception e10) {
                eVar.a(e10);
                return;
            }
        } catch (NoSuchFileException unused) {
            directoryStream = null;
        }
        if (directoryStream == null) {
            return;
        }
        try {
            Iterator<Path> it = directoryStream.iterator();
            M.o(it, "iterator(...)");
            while (it.hasNext()) {
                Path next = it.next();
                M.m(next);
                m0(next, path, eVar);
            }
            P0 p02 = P0.f98194a;
            kotlin.io.b.a(directoryStream, null);
        } finally {
        }
    }

    public static final void m0(Path path, Path path2, e eVar) {
        if (path2 != null) {
            try {
                Q(path);
                R(path, path2);
            } catch (Exception e10) {
                eVar.a(e10);
                return;
            }
        }
        if (!Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            Files.deleteIfExists(path);
            return;
        }
        int f10 = eVar.f();
        l0(path, eVar);
        if (f10 == eVar.f()) {
            Files.deleteIfExists(path);
        }
    }

    public static final boolean n0(SecureDirectoryStream<Path> secureDirectoryStream, Path path, LinkOption... linkOptionArr) {
        Boolean bool;
        try {
            bool = Boolean.valueOf(((BasicFileAttributeView) secureDirectoryStream.getFileAttributeView(path, BasicFileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))).readAttributes().isDirectory());
        } catch (NoSuchFileException unused) {
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @f
    public static final FileVisitResult o0(If.b bVar) {
        int i10 = a.f9339a[bVar.ordinal()];
        if (i10 == 1) {
            return FileVisitResult.CONTINUE;
        }
        if (i10 == 2) {
            return FileVisitResult.TERMINATE;
        }
        if (i10 == 3) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        throw new NoWhenBranchMatchedException();
    }

    @f
    public static final FileVisitResult p0(k kVar) {
        int i10 = a.f9340b[kVar.ordinal()];
        if (i10 == 1) {
            return FileVisitResult.TERMINATE;
        }
        if (i10 == 2) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final <R> R q0(Mf.a<? extends R> aVar) {
        try {
            return aVar.invoke();
        } catch (NoSuchFileException unused) {
            return null;
        }
    }
}
