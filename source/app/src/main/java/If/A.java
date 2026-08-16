package If;

import Xf.InterfaceC3312m;
import ag.C3617K;
import ag.P;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.net.URI;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileStore;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.EnumC14431q;
import nf.InterfaceC14410f0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.P0;
import nf.T0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.S;
import pf.y0;
import pf.z0;

@t0({"SMAP\nPathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathUtils.kt\nkotlin/io/path/PathsKt__PathUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1195:1\n1#2:1196\n1915#3,2:1197\n*S KotlinDebug\n*F\n+ 1 PathUtils.kt\nkotlin/io/path/PathsKt__PathUtilsKt\n*L\n415#1:1197,2\n*E\n"})
public class A extends z {
    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path A0(Path path, FileAttribute<?>... attributes) throws IOException {
        M.p(path, "<this>");
        M.p(attributes, "attributes");
        Path createFile = Files.createFile(path, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createFile, "createFile(...)");
        return createFile;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path A1(Path path, Path target, CopyOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(target, "target");
        M.p(options, "options");
        Path move = Files.move(path, target, (CopyOption[]) Arrays.copyOf(options, options.length));
        M.o(move, "move(...)");
        return move;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path B0(Path path, Path target) throws IOException {
        M.p(path, "<this>");
        M.p(target, "target");
        Path createLink = Files.createLink(path, target);
        M.o(createLink, "createLink(...)");
        return createLink;
    }

    public static Path B1(Path path, Path target, boolean z10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        M.p(path, "<this>");
        M.p(target, "target");
        CopyOption[] copyOptionArr = z10 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path move = Files.move(path, target, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        M.o(move, "move(...)");
        return move;
    }

    @InterfaceC14422l0(version = "1.9")
    @NotNull
    public static final Path C0(@NotNull Path path, @NotNull FileAttribute<?>... attributes) throws IOException {
        M.p(path, "<this>");
        M.p(attributes, "attributes");
        Path parent = path.getParent();
        if (parent != null && !Files.isDirectory(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            try {
                FileAttribute[] fileAttributeArr = (FileAttribute[]) Arrays.copyOf(attributes, attributes.length);
                M.o(Files.createDirectories(parent, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length)), "createDirectories(...)");
            } catch (FileAlreadyExistsException e10) {
                if (!Files.isDirectory(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    throw e10;
                }
            }
        }
        return path;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean C1(Path path, LinkOption... options) {
        M.p(path, "<this>");
        M.p(options, "options");
        return Files.notExists(path, (LinkOption[]) Arrays.copyOf(options, options.length));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path D0(Path path, Path target, FileAttribute<?>... attributes) throws IOException {
        M.p(path, "<this>");
        M.p(target, "target");
        M.p(attributes, "attributes");
        Path createSymbolicLink = Files.createSymbolicLink(path, target, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createSymbolicLink, "createSymbolicLink(...)");
        return createSymbolicLink;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <A extends BasicFileAttributes> A D1(Path path, LinkOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(options, "options");
        M.y(4, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS);
        A a10 = (A) Files.readAttributes(path, BasicFileAttributes.class, (LinkOption[]) Arrays.copyOf(options, options.length));
        M.o(a10, "readAttributes(...)");
        return a10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path E0(String str, FileAttribute<?>... attributes) throws IOException {
        M.p(attributes, "attributes");
        Path createTempDirectory = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createTempDirectory, "createTempDirectory(...)");
        return createTempDirectory;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Map<String, Object> E1(Path path, String attributes, LinkOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(attributes, "attributes");
        M.p(options, "options");
        Map<String, Object> readAttributes = Files.readAttributes(path, attributes, (LinkOption[]) Arrays.copyOf(options, options.length));
        M.o(readAttributes, "readAttributes(...)");
        return readAttributes;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final Path F0(@Nullable Path path, @Nullable String str, @NotNull FileAttribute<?>... attributes) throws IOException {
        M.p(attributes, "attributes");
        if (path != null) {
            Path createTempDirectory = Files.createTempDirectory(path, str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
            M.o(createTempDirectory, "createTempDirectory(...)");
            return createTempDirectory;
        }
        Path createTempDirectory2 = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createTempDirectory2, "createTempDirectory(...)");
        return createTempDirectory2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path F1(Path path) throws IOException {
        M.p(path, "<this>");
        Path readSymbolicLink = Files.readSymbolicLink(path);
        M.o(readSymbolicLink, "readSymbolicLink(...)");
        return readSymbolicLink;
    }

    public static Path G0(String str, FileAttribute[] attributes, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            str = null;
        }
        M.p(attributes, "attributes");
        Path createTempDirectory = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createTempDirectory, "createTempDirectory(...)");
        return createTempDirectory;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final Path G1(@NotNull Path path, @NotNull Path base) {
        M.p(path, "<this>");
        M.p(base, "base");
        try {
            return m.f9288a.a(path, base);
        } catch (IllegalArgumentException e10) {
            throw new IllegalArgumentException(e10.getMessage() + "\nthis path: " + ((Object) path) + "\nbase path: " + ((Object) base), e10);
        }
    }

    public static Path H0(Path path, String str, FileAttribute[] fileAttributeArr, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            str = null;
        }
        return F0(path, str, fileAttributeArr);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final Path H1(@NotNull Path path, @NotNull Path base) {
        M.p(path, "<this>");
        M.p(base, "base");
        try {
            return m.f9288a.a(path, base);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path I0(String str, String str2, FileAttribute<?>... attributes) throws IOException {
        M.p(attributes, "attributes");
        Path createTempFile = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createTempFile, "createTempFile(...)");
        return createTempFile;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final Path I1(@NotNull Path path, @NotNull Path base) {
        M.p(path, "<this>");
        M.p(base, "base");
        Path H12 = H1(path, base);
        return H12 == null ? path : H12;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final Path J0(@Nullable Path path, @Nullable String str, @Nullable String str2, @NotNull FileAttribute<?>... attributes) throws IOException {
        M.p(attributes, "attributes");
        if (path != null) {
            Path createTempFile = Files.createTempFile(path, str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
            M.o(createTempFile, "createTempFile(...)");
            return createTempFile;
        }
        Path createTempFile2 = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createTempFile2, "createTempFile(...)");
        return createTempFile2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path J1(Path path, String attribute, Object obj, LinkOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(attribute, "attribute");
        M.p(options, "options");
        Path attribute2 = Files.setAttribute(path, attribute, obj, (LinkOption[]) Arrays.copyOf(options, options.length));
        M.o(attribute2, "setAttribute(...)");
        return attribute2;
    }

    public static Path K0(String str, String str2, FileAttribute[] attributes, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        M.p(attributes, "attributes");
        Path createTempFile = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createTempFile, "createTempFile(...)");
        return createTempFile;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path K1(Path path, FileTime value) throws IOException {
        M.p(path, "<this>");
        M.p(value, "value");
        Path lastModifiedTime = Files.setLastModifiedTime(path, value);
        M.o(lastModifiedTime, "setLastModifiedTime(...)");
        return lastModifiedTime;
    }

    public static Path L0(Path path, String str, String str2, FileAttribute[] fileAttributeArr, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        return J0(path, str, str2, fileAttributeArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path L1(Path path, UserPrincipal value) throws IOException {
        M.p(path, "<this>");
        M.p(value, "value");
        Path owner = Files.setOwner(path, value);
        M.o(owner, "setOwner(...)");
        return owner;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final void M0(Path path) throws IOException {
        M.p(path, "<this>");
        Files.delete(path);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path M1(Path path, Set<? extends PosixFilePermission> value) throws IOException {
        M.p(path, "<this>");
        M.p(value, "value");
        Path posixFilePermissions = Files.setPosixFilePermissions(path, value);
        M.o(posixFilePermissions, "setPosixFilePermissions(...)");
        return posixFilePermissions;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean N0(Path path) throws IOException {
        M.p(path, "<this>");
        return Files.deleteIfExists(path);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path N1(URI uri) {
        M.p(uri, "<this>");
        Path path = Paths.get(uri);
        M.o(path, "get(...)");
        return path;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path O0(Path path, String other) {
        M.p(path, "<this>");
        M.p(other, "other");
        Path resolve = path.resolve(other);
        M.o(resolve, "resolve(...)");
        return resolve;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T> T O1(Path path, String glob, Mf.l<? super InterfaceC3312m<? extends Path>, ? extends T> block) throws IOException {
        M.p(path, "<this>");
        M.p(glob, "glob");
        M.p(block, "block");
        DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            M.m(newDirectoryStream);
            T invoke = block.invoke(S.E1(newDirectoryStream));
            J.d(1);
            kotlin.io.b.a(newDirectoryStream, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path P0(Path path, Path other) {
        M.p(path, "<this>");
        M.p(other, "other");
        Path resolve = path.resolve(other);
        M.o(resolve, "resolve(...)");
        return resolve;
    }

    public static Object P1(Path path, String glob, Mf.l block, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            glob = "*";
        }
        M.p(path, "<this>");
        M.p(glob, "glob");
        M.p(block, "block");
        DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            M.m(newDirectoryStream);
            Object invoke = block.invoke(S.E1(newDirectoryStream));
            J.d(1);
            kotlin.io.b.a(newDirectoryStream, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean Q0(Path path, LinkOption... options) {
        M.p(path, "<this>");
        M.p(options, "options");
        return Files.exists(path, (LinkOption[]) Arrays.copyOf(options, options.length));
    }

    @T0(markerClass = {f.class})
    @InterfaceC14422l0(version = "2.1")
    public static final void Q1(@NotNull Path path, int i10, boolean z10, @NotNull Mf.l<? super g, P0> builderAction) {
        M.p(path, "<this>");
        M.p(builderAction, "builderAction");
        R1(path, W0(builderAction), i10, z10);
    }

    @InterfaceC14410f0
    @NotNull
    public static final Void R0(@NotNull Path path, @NotNull Class<?> attributeViewClass) {
        M.p(path, "path");
        M.p(attributeViewClass, "attributeViewClass");
        throw new UnsupportedOperationException("The desired attribute view type " + ((Object) attributeViewClass) + " is not available for the file " + ((Object) path) + '.');
    }

    @T0(markerClass = {f.class})
    @InterfaceC14422l0(version = "2.1")
    public static final void R1(@NotNull Path path, @NotNull FileVisitor<Path> visitor, int i10, boolean z10) {
        M.p(path, "<this>");
        M.p(visitor, "visitor");
        Files.walkFileTree(path, z10 ? y0.f(FileVisitOption.FOLLOW_LINKS) : z0.k(), i10, visitor);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <V extends FileAttributeView> V S0(Path path, LinkOption... options) {
        M.p(path, "<this>");
        M.p(options, "options");
        M.y(4, "V");
        V v10 = (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(options, options.length));
        if (v10 != null) {
            return v10;
        }
        M.y(4, "V");
        R0(path, FileAttributeView.class);
        throw new KotlinNothingValueException();
    }

    public static void S1(Path path, int i10, boolean z10, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        Q1(path, i10, z10, lVar);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <V extends FileAttributeView> V T0(Path path, LinkOption... options) {
        M.p(path, "<this>");
        M.p(options, "options");
        M.y(4, "V");
        return (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(options, options.length));
    }

    public static void T1(Path path, FileVisitor fileVisitor, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        R1(path, fileVisitor, i10, z10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final long U0(Path path) throws IOException {
        M.p(path, "<this>");
        return Files.size(path);
    }

    @T0(markerClass = {f.class})
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final InterfaceC3312m<Path> U1(@NotNull Path path, @NotNull p... options) {
        M.p(path, "<this>");
        M.p(options, "options");
        return new n(path, options);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final FileStore V0(Path path) throws IOException {
        M.p(path, "<this>");
        FileStore fileStore = Files.getFileStore(path);
        M.o(fileStore, "getFileStore(...)");
        return fileStore;
    }

    @T0(markerClass = {f.class})
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public static final FileVisitor<Path> W0(@NotNull Mf.l<? super g, P0> builderAction) {
        M.p(builderAction, "builderAction");
        h hVar = new h();
        builderAction.invoke(hVar);
        return hVar.e();
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final void X0(Path path, String glob, Mf.l<? super Path, P0> action) throws IOException {
        M.p(path, "<this>");
        M.p(glob, "glob");
        M.p(action, "action");
        DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            M.m(newDirectoryStream);
            Iterator<Path> it = newDirectoryStream.iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
            P0 p02 = P0.f98194a;
            J.d(1);
            kotlin.io.b.a(newDirectoryStream, null);
            J.c(1);
        } finally {
        }
    }

    public static void Y0(Path path, String glob, Mf.l action, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            glob = "*";
        }
        M.p(path, "<this>");
        M.p(glob, "glob");
        M.p(action, "action");
        DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            M.m(newDirectoryStream);
            Iterator<Path> it = newDirectoryStream.iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
            P0 p02 = P0.f98194a;
            J.d(1);
            kotlin.io.b.a(newDirectoryStream, null);
            J.c(1);
        } finally {
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Object Z0(Path path, String attribute, LinkOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(attribute, "attribute");
        M.p(options, "options");
        return Files.getAttribute(path, attribute, (LinkOption[]) Arrays.copyOf(options, options.length));
    }

    @NotNull
    public static final String a1(@NotNull Path path) {
        String obj;
        String Q52;
        M.p(path, "<this>");
        Path fileName = path.getFileName();
        return (fileName == null || (obj = fileName.toString()) == null || (Q52 = P.Q5(obj, '.', "")) == null) ? "" : Q52;
    }

    @InterfaceC14422l0(version = "1.5")
    public static void b1(Path path) {
    }

    public static final String c1(Path path) {
        M.p(path, "<this>");
        return e1(path);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use invariantSeparatorsPathString property instead.", replaceWith = @InterfaceC14412g0(expression = "invariantSeparatorsPathString", imports = {}))
    @Ef.f
    @f
    @InterfaceC14422l0(version = "1.4")
    public static void d1(Path path) {
    }

    @NotNull
    public static final String e1(@NotNull Path path) {
        M.p(path, "<this>");
        String separator = path.getFileSystem().getSeparator();
        if (M.g(separator, "/")) {
            return path.toString();
        }
        String obj = path.toString();
        M.m(separator);
        return C3617K.B2(obj, separator, "/", false, 4, null);
    }

    @InterfaceC14422l0(version = "1.5")
    public static void f1(Path path) {
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final FileTime g1(Path path, LinkOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(options, "options");
        FileTime lastModifiedTime = Files.getLastModifiedTime(path, (LinkOption[]) Arrays.copyOf(options, options.length));
        M.o(lastModifiedTime, "getLastModifiedTime(...)");
        return lastModifiedTime;
    }

    @NotNull
    public static final String h1(@NotNull Path path) {
        M.p(path, "<this>");
        Path fileName = path.getFileName();
        String obj = fileName != null ? fileName.toString() : null;
        return obj == null ? "" : obj;
    }

    @InterfaceC14422l0(version = "1.5")
    public static void i1(Path path) {
    }

    @NotNull
    public static final String j1(@NotNull Path path) {
        String obj;
        String b62;
        M.p(path, "<this>");
        Path fileName = path.getFileName();
        return (fileName == null || (obj = fileName.toString()) == null || (b62 = P.b6(obj, ".", null, 2, null)) == null) ? "" : b62;
    }

    @InterfaceC14422l0(version = "1.5")
    public static void k1(Path path) {
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final UserPrincipal l1(Path path, LinkOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(options, "options");
        return Files.getOwner(path, (LinkOption[]) Arrays.copyOf(options, options.length));
    }

    public static final String m1(Path path) {
        M.p(path, "<this>");
        return path.toString();
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static void n1(Path path) {
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Set<PosixFilePermission> o1(Path path, LinkOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(options, "options");
        Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(path, (LinkOption[]) Arrays.copyOf(options, options.length));
        M.o(posixFilePermissions, "getPosixFilePermissions(...)");
        return posixFilePermissions;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean p1(Path path, LinkOption... options) {
        M.p(path, "<this>");
        M.p(options, "options");
        return Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(options, options.length));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean q1(Path path) {
        M.p(path, "<this>");
        return Files.isExecutable(path);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path r0(String path) {
        M.p(path, "path");
        Path path2 = Paths.get(path, new String[0]);
        M.o(path2, "get(...)");
        return path2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean r1(Path path) throws IOException {
        M.p(path, "<this>");
        return Files.isHidden(path);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path s0(String base, String... subpaths) {
        M.p(base, "base");
        M.p(subpaths, "subpaths");
        Path path = Paths.get(base, (String[]) Arrays.copyOf(subpaths, subpaths.length));
        M.o(path, "get(...)");
        return path;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean s1(Path path) {
        M.p(path, "<this>");
        return Files.isReadable(path);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path t0(Path path) {
        M.p(path, "<this>");
        Path absolutePath = path.toAbsolutePath();
        M.o(absolutePath, "toAbsolutePath(...)");
        return absolutePath;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean t1(Path path, LinkOption... options) {
        M.p(path, "<this>");
        M.p(options, "options");
        return Files.isRegularFile(path, (LinkOption[]) Arrays.copyOf(options, options.length));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final String u0(Path path) {
        M.p(path, "<this>");
        return path.toAbsolutePath().toString();
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean u1(Path path, Path other) throws IOException {
        M.p(path, "<this>");
        M.p(other, "other");
        return Files.isSameFile(path, other);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path v0(Path path, Path target, boolean z10) throws IOException {
        M.p(path, "<this>");
        M.p(target, "target");
        CopyOption[] copyOptionArr = z10 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path copy = Files.copy(path, target, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        M.o(copy, "copy(...)");
        return copy;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean v1(Path path) {
        M.p(path, "<this>");
        return Files.isSymbolicLink(path);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path w0(Path path, Path target, CopyOption... options) throws IOException {
        M.p(path, "<this>");
        M.p(target, "target");
        M.p(options, "options");
        Path copy = Files.copy(path, target, (CopyOption[]) Arrays.copyOf(options, options.length));
        M.o(copy, "copy(...)");
        return copy;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final boolean w1(Path path) {
        M.p(path, "<this>");
        return Files.isWritable(path);
    }

    public static Path x0(Path path, Path target, boolean z10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        M.p(path, "<this>");
        M.p(target, "target");
        CopyOption[] copyOptionArr = z10 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path copy = Files.copy(path, target, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        M.o(copy, "copy(...)");
        return copy;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final List<Path> x1(@NotNull Path path, @NotNull String glob) throws IOException {
        M.p(path, "<this>");
        M.p(glob, "glob");
        DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            M.m(newDirectoryStream);
            List<Path> a62 = S.a6(newDirectoryStream);
            kotlin.io.b.a(newDirectoryStream, null);
            return a62;
        } finally {
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path y0(Path path, FileAttribute<?>... attributes) throws IOException {
        M.p(path, "<this>");
        M.p(attributes, "attributes");
        Path createDirectories = Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createDirectories, "createDirectories(...)");
        return createDirectories;
    }

    public static List y1(Path path, String str, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            str = "*";
        }
        return x1(path, str);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path z0(Path path, FileAttribute<?>... attributes) throws IOException {
        M.p(path, "<this>");
        M.p(attributes, "attributes");
        Path createDirectory = Files.createDirectory(path, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        M.o(createDirectory, "createDirectory(...)");
        return createDirectory;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final Path z1(Path path, Path target, boolean z10) throws IOException {
        M.p(path, "<this>");
        M.p(target, "target");
        CopyOption[] copyOptionArr = z10 ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path move = Files.move(path, target, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        M.o(move, "move(...)");
        return move;
    }
}
