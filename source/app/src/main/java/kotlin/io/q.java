package kotlin.io;

import ag.C3617K;
import ag.P;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.P0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.S;

@t0({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,478:1\n1#2:479\n1313#3,3:480\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n*L\n352#1:480,3\n*E\n"})
public class q extends n {
    @InterfaceC14394D
    public static final boolean U(@NotNull File file, @NotNull File target, boolean z10, @NotNull final Mf.p<? super File, ? super IOException, ? extends t> onError) {
        M.p(file, "<this>");
        M.p(target, "target");
        M.p(onError, "onError");
        if (!file.exists()) {
            return onError.invoke(file, new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null)) != t.TERMINATE;
        }
        try {
            Iterator<File> it = n.R(file).k(new Mf.p() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    P0 X10;
                    X10 = q.X(Mf.p.this, (File) obj, (IOException) obj2);
                    return X10;
                }
            }).iterator();
            while (it.hasNext()) {
                File next = it.next();
                if (next.exists()) {
                    File file2 = new File(target, w0(next, file));
                    if (file2.exists() && (!next.isDirectory() || !file2.isDirectory())) {
                        if (z10) {
                            if (file2.isDirectory()) {
                                if (!e0(file2)) {
                                }
                            } else if (!file2.delete()) {
                            }
                        }
                        if (onError.invoke(file2, new FileAlreadyExistsException(next, file2, "The destination file already exists.")) == t.TERMINATE) {
                            return false;
                        }
                    }
                    if (next.isDirectory()) {
                        file2.mkdirs();
                    } else if (Z(next, file2, z10, 0, 4, null).length() != next.length() && onError.invoke(next, new IOException("Source file wasn't copied completely, length of destination file differs.")) == t.TERMINATE) {
                        return false;
                    }
                } else {
                    if (onError.invoke(next, new NoSuchFileException(next, null, "The source file doesn't exist.", 2, null)) == t.TERMINATE) {
                        return false;
                    }
                }
            }
            return true;
        } catch (TerminateException unused) {
            return false;
        }
    }

    public static boolean V(File file, File file2, boolean z10, Mf.p pVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            pVar = new Mf.p() {
                @Override
                public final Object invoke(Object obj2, Object obj3) {
                    t W10;
                    W10 = q.W((File) obj2, (IOException) obj3);
                    return W10;
                }
            };
        }
        return U(file, file2, z10, pVar);
    }

    public static final t W(File file, IOException exception) {
        M.p(file, "<unused var>");
        M.p(exception, "exception");
        throw exception;
    }

    public static final P0 X(Mf.p pVar, File f10, IOException e10) {
        M.p(f10, "f");
        M.p(e10, "e");
        if (pVar.invoke(f10, e10) != t.TERMINATE) {
            return P0.f98194a;
        }
        throw new TerminateException(f10);
    }

    @InterfaceC14394D
    @NotNull
    public static final File Y(@NotNull File file, @NotNull File target, boolean z10, int i10) {
        M.p(file, "<this>");
        M.p(target, "target");
        if (!file.exists()) {
            throw new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null);
        }
        if (target.exists()) {
            if (!z10) {
                throw new FileAlreadyExistsException(file, target, "The destination file already exists.");
            }
            if (!target.delete()) {
                throw new FileAlreadyExistsException(file, target, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (!file.isDirectory()) {
            File parentFile = target.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(target);
                try {
                    a.k(fileInputStream, fileOutputStream, i10);
                    P0 p02 = P0.f98194a;
                    b.a(fileOutputStream, null);
                    b.a(fileInputStream, null);
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    b.a(fileInputStream, th2);
                    throw th3;
                }
            }
        } else if (!target.mkdirs()) {
            throw new FileSystemException(file, target, "Failed to create target directory.");
        }
        return target;
    }

    public static File Z(File file, File file2, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 8192;
        }
        return Y(file, file2, z10, i10);
    }

    @InterfaceC14427o(message = "Avoid creating temporary directories in the default temp location with this function due to too wide permissions on the newly created directory. Use kotlin.io.path.createTempDirectory instead.")
    @InterfaceC14429p(errorSince = "2.3", warningSince = "1.4")
    @NotNull
    public static final File a0(@NotNull String prefix, @Nullable String str, @Nullable File file) {
        M.p(prefix, "prefix");
        File createTempFile = File.createTempFile(prefix, str, file);
        createTempFile.delete();
        if (createTempFile.mkdir()) {
            M.m(createTempFile);
            return createTempFile;
        }
        throw new IOException("Unable to create temporary directory " + ((Object) createTempFile) + '.');
    }

    public static File b0(String str, String str2, File file, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "tmp";
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            file = null;
        }
        return a0(str, str2, file);
    }

    @InterfaceC14427o(message = "Avoid creating temporary files in the default temp location with this function due to too wide permissions on the newly created file. Use kotlin.io.path.createTempFile instead or resort to java.io.File.createTempFile.")
    @InterfaceC14429p(errorSince = "2.3", warningSince = "1.4")
    @NotNull
    public static final File c0(@NotNull String prefix, @Nullable String str, @Nullable File file) {
        M.p(prefix, "prefix");
        File createTempFile = File.createTempFile(prefix, str, file);
        M.o(createTempFile, "createTempFile(...)");
        return createTempFile;
    }

    public static File d0(String str, String str2, File file, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "tmp";
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            file = null;
        }
        return c0(str, str2, file);
    }

    @InterfaceC14394D
    public static final boolean e0(@NotNull File file) {
        M.p(file, "<this>");
        while (true) {
            boolean z10 = true;
            for (File file2 : n.Q(file)) {
                if (file2.delete() || !file2.exists()) {
                    if (z10) {
                        break;
                    }
                }
                z10 = false;
            }
            return z10;
        }
    }

    public static final boolean f0(@NotNull File file, @NotNull File other) {
        M.p(file, "<this>");
        M.p(other, "other");
        g f10 = k.f(file);
        g f11 = k.f(other);
        if (f11.i()) {
            return M.g(file, other);
        }
        int h10 = f10.h() - f11.h();
        if (h10 < 0) {
            return false;
        }
        return f10.g().subList(h10, f10.h()).equals(f11.g());
    }

    public static final boolean g0(@NotNull File file, @NotNull String other) {
        M.p(file, "<this>");
        M.p(other, "other");
        return f0(file, new File(other));
    }

    @NotNull
    public static String h0(@NotNull File file) {
        M.p(file, "<this>");
        String name = file.getName();
        M.o(name, "getName(...)");
        return P.Q5(name, '.', "");
    }

    @NotNull
    public static final String i0(@NotNull File file) {
        M.p(file, "<this>");
        char c10 = File.separatorChar;
        String path = file.getPath();
        M.o(path, "getPath(...)");
        return c10 != '/' ? C3617K.A2(path, c10, '/', false, 4, null) : path;
    }

    @NotNull
    public static String j0(@NotNull File file) {
        M.p(file, "<this>");
        String name = file.getName();
        M.o(name, "getName(...)");
        return P.b6(name, ".", null, 2, null);
    }

    @NotNull
    public static final File k0(@NotNull File file) {
        M.p(file, "<this>");
        g f10 = k.f(file);
        File e10 = f10.e();
        List<File> l02 = l0(f10.g());
        String separator = File.separator;
        M.o(separator, "separator");
        return r0(e10, S.r3(l02, separator, null, null, 0, null, null, 62, null));
    }

    public static final List<File> l0(List<? extends File> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (File file : list) {
            String name = file.getName();
            if (M.g(name, ".")) {
                P0 p02 = P0.f98194a;
            } else if (!M.g(name, ClasspathEntry.DOT_DOT)) {
                arrayList.add(file);
            } else if (arrayList.isEmpty() || M.g(((File) S.u3(arrayList)).getName(), ClasspathEntry.DOT_DOT)) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    public static final g m0(g gVar) {
        return new g(gVar.e(), l0(gVar.g()));
    }

    @NotNull
    public static final File n0(@NotNull File file, @NotNull File base) {
        M.p(file, "<this>");
        M.p(base, "base");
        return new File(w0(file, base));
    }

    @Nullable
    public static final File o0(@NotNull File file, @NotNull File base) {
        M.p(file, "<this>");
        M.p(base, "base");
        String x02 = x0(file, base);
        if (x02 != null) {
            return new File(x02);
        }
        return null;
    }

    @NotNull
    public static final File p0(@NotNull File file, @NotNull File base) {
        M.p(file, "<this>");
        M.p(base, "base");
        String x02 = x0(file, base);
        return x02 != null ? new File(x02) : file;
    }

    @NotNull
    public static final File q0(@NotNull File file, @NotNull File relative) {
        M.p(file, "<this>");
        M.p(relative, "relative");
        if (k.d(relative)) {
            return relative;
        }
        String file2 = file.toString();
        M.o(file2, "toString(...)");
        if (file2.length() != 0) {
            char c10 = File.separatorChar;
            if (!P.u3(file2, c10, false, 2, null)) {
                return new File(file2 + c10 + ((Object) relative));
            }
        }
        return new File(file2 + ((Object) relative));
    }

    @NotNull
    public static final File r0(@NotNull File file, @NotNull String relative) {
        M.p(file, "<this>");
        M.p(relative, "relative");
        return q0(file, new File(relative));
    }

    @NotNull
    public static final File s0(@NotNull File file, @NotNull File relative) {
        M.p(file, "<this>");
        M.p(relative, "relative");
        g f10 = k.f(file);
        return q0(q0(f10.e(), f10.h() == 0 ? new File(ClasspathEntry.DOT_DOT) : f10.j(0, f10.h() - 1)), relative);
    }

    @NotNull
    public static final File t0(@NotNull File file, @NotNull String relative) {
        M.p(file, "<this>");
        M.p(relative, "relative");
        return s0(file, new File(relative));
    }

    public static final boolean u0(@NotNull File file, @NotNull File other) {
        M.p(file, "<this>");
        M.p(other, "other");
        g f10 = k.f(file);
        g f11 = k.f(other);
        if (M.g(f10.e(), f11.e()) && f10.h() >= f11.h()) {
            return f10.g().subList(0, f11.h()).equals(f11.g());
        }
        return false;
    }

    public static final boolean v0(@NotNull File file, @NotNull String other) {
        M.p(file, "<this>");
        M.p(other, "other");
        return u0(file, new File(other));
    }

    @NotNull
    public static final String w0(@NotNull File file, @NotNull File base) {
        M.p(file, "<this>");
        M.p(base, "base");
        String x02 = x0(file, base);
        if (x02 != null) {
            return x02;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + ((Object) file) + " and " + ((Object) base) + '.');
    }

    public static final String x0(File file, File file2) {
        g m02 = m0(k.f(file));
        g m03 = m0(k.f(file2));
        if (!M.g(m02.e(), m03.e())) {
            return null;
        }
        int h10 = m03.h();
        int h11 = m02.h();
        int min = Math.min(h11, h10);
        int i10 = 0;
        while (i10 < min && M.g(m02.g().get(i10), m03.g().get(i10))) {
            i10++;
        }
        StringBuilder sb2 = new StringBuilder();
        int i11 = h10 - 1;
        if (i10 <= i11) {
            while (!M.g(m03.g().get(i11).getName(), ClasspathEntry.DOT_DOT)) {
                sb2.append(ClasspathEntry.DOT_DOT);
                if (i11 != i10) {
                    sb2.append(File.separatorChar);
                }
                if (i11 != i10) {
                    i11--;
                }
            }
            return null;
        }
        if (i10 < h11) {
            if (i10 < h10) {
                sb2.append(File.separatorChar);
            }
            List g22 = S.g2(m02.g(), i10);
            String separator = File.separator;
            M.o(separator, "separator");
            S.o3(g22, sb2, (r14 & 2) != 0 ? ", " : separator, (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        }
        return sb2.toString();
    }
}
