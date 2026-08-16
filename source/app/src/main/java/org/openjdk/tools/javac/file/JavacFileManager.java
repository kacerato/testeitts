package org.openjdk.tools.javac.file;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.InvalidPathException;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.ProviderNotFoundException;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.spi.FileSystemProvider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.lang3.CharEncoding;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.file.JRTIndex;
import org.openjdk.tools.javac.file.RelativePath;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JDK9Wrappers;
import org.openjdk.tools.javac.util.ListBuffer;

public class JavacFileManager extends BaseFileManager implements StandardJavaFileManager {
    private static final Container MISSING_CONTAINER = new Container() {
        @Override
        public void close() throws IOException {
        }

        @Override
        public JavaFileObject getFileObject(Path path, RelativePath.RelativeFile relativeFile) throws IOException {
            return null;
        }

        @Override
        public void list(Path path, RelativePath.RelativeDirectory relativeDirectory, Set<JavaFileObject.Kind> set, boolean z10, ListBuffer<JavaFileObject> listBuffer) throws IOException {
        }
    };
    private static final boolean fileSystemIsCaseSensitive;
    private final Map<Path, Container> containers;
    private FSInfo fsInfo;
    private JRTIndex jrtIndex;
    private StandardJavaFileManager.PathFactory pathFactory;
    protected SortFiles sortFiles;
    private final Set<JavaFileObject.Kind> sourceOrClass;
    protected boolean symbolFileEnabled;

    public final class ArchiveContainer implements Container {
        private final Path archivePath;
        private final FileSystem fileSystem;
        private final Map<RelativePath, Path> packages;

        public ArchiveContainer(Path path) throws IOException, ProviderNotFoundException, SecurityException {
            this.archivePath = path;
            if (JavacFileManager.this.multiReleaseValue == null || !path.toString().endsWith(".jar")) {
                this.fileSystem = FileSystems.newFileSystem(path, (ClassLoader) null);
            } else {
                Map<String, ?> singletonMap = Collections.singletonMap("multi-release", JavacFileManager.this.multiReleaseValue);
                FileSystemProvider jarFSProvider = JavacFileManager.this.fsInfo.getJarFSProvider();
                Assert.checkNonNull(jarFSProvider, "should have been caught before!");
                this.fileSystem = jarFSProvider.newFileSystem(path, singletonMap);
            }
            this.packages = new HashMap();
            for (final Path path2 : this.fileSystem.getRootDirectories()) {
                Files.walkFileTree(path2, EnumSet.noneOf(FileVisitOption.class), Integer.MAX_VALUE, new SimpleFileVisitor<Path>() {
                    @Override
                    public FileVisitResult preVisitDirectory(Path path3, BasicFileAttributes basicFileAttributes) {
                        if (ArchiveContainer.this.isValid(path3.getFileName())) {
                            ArchiveContainer.this.packages.put(new RelativePath.RelativeDirectory(path2.relativize(path3).toString()), path3);
                            return FileVisitResult.CONTINUE;
                        }
                        return FileVisitResult.SKIP_SUBTREE;
                    }
                });
            }
        }

        public boolean isValid(Path path) {
            if (path == null) {
                return true;
            }
            String path2 = path.toString();
            if (path2.endsWith("/")) {
                path2 = path2.substring(0, path2.length() - 1);
            }
            return SourceVersion.isIdentifier(path2);
        }

        @Override
        public void close() throws IOException {
            this.fileSystem.close();
        }

        @Override
        public JavaFileObject getFileObject(Path path, RelativePath.RelativeFile relativeFile) throws IOException {
            Path path2 = this.packages.get(relativeFile.dirname());
            if (path2 == null) {
                return null;
            }
            Path resolve = path2.resolve(relativeFile.basename());
            if (Files.exists(resolve, new LinkOption[0])) {
                return PathFileObject.forJarPath(JavacFileManager.this, resolve, path);
            }
            return null;
        }

        @Override
        public void list(Path path, RelativePath.RelativeDirectory relativeDirectory, final Set<JavaFileObject.Kind> set, boolean z10, final ListBuffer<JavaFileObject> listBuffer) throws IOException {
            Path path2 = this.packages.get(relativeDirectory);
            if (path2 == null) {
                return;
            }
            Files.walkFileTree(path2, EnumSet.of(FileVisitOption.FOLLOW_LINKS), z10 ? Integer.MAX_VALUE : 1, new SimpleFileVisitor<Path>() {
                @Override
                public FileVisitResult preVisitDirectory(Path path3, BasicFileAttributes basicFileAttributes) {
                    if (ArchiveContainer.this.isValid(path3.getFileName())) {
                        return FileVisitResult.CONTINUE;
                    }
                    return FileVisitResult.SKIP_SUBTREE;
                }

                @Override
                public FileVisitResult visitFile(Path path3, BasicFileAttributes basicFileAttributes) {
                    if (basicFileAttributes.isRegularFile() && set.contains(BaseFileManager.getKind(path3.getFileName().toString()))) {
                        ArchiveContainer archiveContainer = ArchiveContainer.this;
                        listBuffer.append(PathFileObject.forJarPath(JavacFileManager.this, path3, archiveContainer.archivePath));
                    }
                    return FileVisitResult.CONTINUE;
                }
            });
        }
    }

    public interface Container {
        void close() throws IOException;

        JavaFileObject getFileObject(Path path, RelativePath.RelativeFile relativeFile) throws IOException;

        void list(Path path, RelativePath.RelativeDirectory relativeDirectory, Set<JavaFileObject.Kind> set, boolean z10, ListBuffer<JavaFileObject> listBuffer) throws IOException;
    }

    public final class DirectoryContainer implements Container {
        private final Path directory;

        public DirectoryContainer(Path path) {
            this.directory = path;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public JavaFileObject getFileObject(Path path, RelativePath.RelativeFile relativeFile) throws IOException {
            try {
                Path resolveAgainst = relativeFile.resolveAgainst(path);
                if (!Files.exists(resolveAgainst, new LinkOption[0])) {
                    return null;
                }
                JavacFileManager javacFileManager = JavacFileManager.this;
                return PathFileObject.forSimplePath(javacFileManager, javacFileManager.fsInfo.getCanonicalFile(resolveAgainst), resolveAgainst);
            } catch (InvalidPathException unused) {
                return null;
            }
        }

        @Override
        public void list(Path path, RelativePath.RelativeDirectory relativeDirectory, Set<JavaFileObject.Kind> set, boolean z10, ListBuffer<JavaFileObject> listBuffer) throws IOException {
            try {
                Path resolveAgainst = relativeDirectory.resolveAgainst(path);
                if (!Files.exists(resolveAgainst, new LinkOption[0]) || !JavacFileManager.this.caseMapCheck(resolveAgainst, relativeDirectory)) {
                    return;
                }
                Stream<Path> list = Files.list(resolveAgainst);
                try {
                    SortFiles sortFiles = JavacFileManager.this.sortFiles;
                    List<Path> list2 = (List) (sortFiles == null ? list : list.sorted(sortFiles)).collect(Collectors.toList());
                    if (list != null) {
                        list.close();
                    }
                    for (Path path2 : list2) {
                        String path3 = path2.getFileName().toString();
                        if (path3.endsWith("/")) {
                            path3 = path3.substring(0, path3.length() - 1);
                        }
                        if (Files.isDirectory(path2, new LinkOption[0])) {
                            if (z10 && SourceVersion.isIdentifier(path3)) {
                                list(path, new RelativePath.RelativeDirectory(relativeDirectory, path3), set, z10, listBuffer);
                            }
                        } else if (JavacFileManager.this.isValidFile(path3, set)) {
                            try {
                                RelativePath.RelativeFile relativeFile = new RelativePath.RelativeFile(relativeDirectory, path3);
                                listBuffer.append(PathFileObject.forDirectoryPath(JavacFileManager.this, relativeFile.resolveAgainst(this.directory), path, relativeFile));
                            } catch (InvalidPathException e10) {
                                throw new IOException("error accessing directory " + ((Object) this.directory) + ((Object) e10));
                            }
                        } else {
                            continue;
                        }
                    }
                } finally {
                }
            } catch (IOException | InvalidPathException unused) {
            }
        }
    }

    public final class JRTImageContainer implements Container {
        private JRTImageContainer() {
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public JavaFileObject getFileObject(Path path, RelativePath.RelativeFile relativeFile) throws IOException {
            Path path2;
            JRTIndex.Entry entry = JavacFileManager.this.getJRTIndex().getEntry(relativeFile.dirname());
            if ((JavacFileManager.this.symbolFileEnabled && entry.ctSym.hidden) || (path2 = entry.files.get(relativeFile.basename())) == null) {
                return null;
            }
            return PathFileObject.forJRTPath(JavacFileManager.this, path2);
        }

        @Override
        public void list(Path path, RelativePath.RelativeDirectory relativeDirectory, Set<JavaFileObject.Kind> set, boolean z10, ListBuffer<JavaFileObject> listBuffer) throws IOException {
            try {
                JRTIndex.Entry entry = JavacFileManager.this.getJRTIndex().getEntry(relativeDirectory);
                if (JavacFileManager.this.symbolFileEnabled && entry.ctSym.hidden) {
                    return;
                }
                for (Path path2 : entry.files.values()) {
                    if (set.contains(BaseFileManager.getKind(path2))) {
                        listBuffer.append(PathFileObject.forJRTPath(JavacFileManager.this, path2));
                    }
                }
                if (z10) {
                    Iterator<RelativePath.RelativeDirectory> it = entry.subdirs.iterator();
                    while (it.hasNext()) {
                        list(path, it.next(), set, z10, listBuffer);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace(System.err);
                JavacFileManager.this.log.error("error.reading.file", path, JavacFileManager.getMessage(e10));
            }
        }
    }

    public enum SortFiles implements Comparator<Path> {
        FORWARD {
            @Override
            public int compare(Path path, Path path2) {
                return path.getFileName().compareTo(path2.getFileName());
            }
        },
        REVERSE {
            @Override
            public int compare(Path path, Path path2) {
                return -path.getFileName().compareTo(path2.getFileName());
            }
        }
    }

    static {
        fileSystemIsCaseSensitive = File.separatorChar == '/';
    }

    public JavacFileManager(Context context, boolean z10, Charset charset) {
        super(charset);
        this.sourceOrClass = EnumSet.of(JavaFileObject.Kind.SOURCE, JavaFileObject.Kind.CLASS);
        this.pathFactory = new d();
        this.containers = new HashMap();
        if (z10) {
            context.put((Class<Class>) JavaFileManager.class, (Class) this);
        }
        setContext(context);
    }

    private static Iterable<File> asFiles(final Iterable<? extends Path> iterable) {
        if (iterable == null) {
            return null;
        }
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$asFiles$2;
                lambda$asFiles$2 = JavacFileManager.lambda$asFiles$2(Iterable.this);
                return lambda$asFiles$2;
            }
        };
    }

    private static Iterable<Path> asPaths(final Iterable<? extends File> iterable) {
        if (iterable == null) {
            return null;
        }
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$asPaths$1;
                lambda$asPaths$1 = JavacFileManager.lambda$asPaths$1(Iterable.this);
                return lambda$asPaths$1;
            }
        };
    }

    public boolean caseMapCheck(Path path, RelativePath relativePath) {
        if (fileSystemIsCaseSensitive) {
            return true;
        }
        try {
            String path2 = path.toRealPath(LinkOption.NOFOLLOW_LINKS).toString();
            char charAt = path.getFileSystem().getSeparator().charAt(0);
            char[] charArray = path2.toCharArray();
            char[] charArray2 = relativePath.path.toCharArray();
            int length = charArray.length - 1;
            int length2 = charArray2.length - 1;
            while (length >= 0 && length2 >= 0) {
                while (length >= 0 && charArray[length] == charAt) {
                    length--;
                }
                while (length2 >= 0 && charArray2[length2] == '/') {
                    length2--;
                }
                if (length >= 0 && length2 >= 0) {
                    if (charArray[length] != charArray2[length2]) {
                        return false;
                    }
                    length--;
                    length2--;
                }
            }
            return length2 < 0;
        } catch (IOException unused) {
            return false;
        }
    }

    private void checkModuleOrientedOrOutputLocation(JavaFileManager.Location location) {
        Objects.requireNonNull(location);
        if (location.isModuleOrientedLocation() || location.isOutputLocation()) {
            return;
        }
        throw new IllegalArgumentException("location is not an output location or a module-oriented location: " + location.getName());
    }

    private void checkNotModuleOrientedLocation(JavaFileManager.Location location) {
        Objects.requireNonNull(location);
        if (location.isModuleOrientedLocation()) {
            throw new IllegalArgumentException("location is module-oriented: " + location.getName());
        }
    }

    private void checkOutputLocation(JavaFileManager.Location location) {
        Objects.requireNonNull(location);
        if (location.isOutputLocation()) {
            return;
        }
        throw new IllegalArgumentException("location is not an output location: " + location.getName());
    }

    private Path getClassOutDir() {
        return this.locations.getOutputLocation(StandardLocation.CLASS_OUTPUT);
    }

    public synchronized JRTIndex getJRTIndex() {
        try {
            if (this.jrtIndex == null) {
                this.jrtIndex = JRTIndex.getSharedInstance();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.jrtIndex;
    }

    public static String getMessage(IOException iOException) {
        String localizedMessage = iOException.getLocalizedMessage();
        if (localizedMessage != null) {
            return localizedMessage;
        }
        String message = iOException.getMessage();
        return message != null ? message : iOException.toString();
    }

    private Path getPath(String str, String... strArr) {
        return this.pathFactory.getPath(str, strArr);
    }

    public static String getRelativeName(File file) {
        if (!file.isAbsolute()) {
            String replace = file.getPath().replace(File.separatorChar, '/');
            if (isRelativeUri(replace)) {
                return replace;
            }
        }
        throw new IllegalArgumentException("Invalid relative path: " + ((Object) file));
    }

    private Path getSourceOutDir() {
        return this.locations.getOutputLocation(StandardLocation.SOURCE_OUTPUT);
    }

    public static boolean isRelativeUri(URI uri) {
        if (uri.isAbsolute()) {
            return false;
        }
        String path = uri.normalize().getPath();
        return (path.length() == 0 || !path.equals(uri.getPath()) || path.startsWith("/") || path.startsWith("./") || path.startsWith("../")) ? false : true;
    }

    public boolean isValidFile(String str, Set<JavaFileObject.Kind> set) {
        return set.contains(BaseFileManager.getKind(str));
    }

    private static boolean isValidName(String str) {
        for (String str2 : str.split("\\.", -1)) {
            if (!SourceVersion.isIdentifier(str2)) {
                return false;
            }
        }
        return true;
    }

    public static Iterator lambda$asFiles$2(Iterable iterable) {
        return new Iterator<File>() {
            Iterator iter;

            {
                this.iter = Iterable.this.iterator();
            }

            @Override
            public boolean hasNext() {
                return this.iter.hasNext();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public File next() {
                try {
                    return ((Path) this.iter.next()).toFile();
                } catch (UnsupportedOperationException e10) {
                    throw new IllegalStateException(e10);
                }
            }
        };
    }

    public static Iterator lambda$asPaths$1(Iterable iterable) {
        return new Iterator<Path>() {
            Iterator iter;

            {
                this.iter = Iterable.this.iterator();
            }

            @Override
            public boolean hasNext() {
                return this.iter.hasNext();
            }

            @Override
            public Path next() {
                return ((File) this.iter.next()).toPath();
            }
        };
    }

    public static JavaFileManager lambda$preRegister$0(Context context) {
        return new JavacFileManager(context, true, null);
    }

    public static void preRegister(Context context) {
        context.put(JavaFileManager.class, new Context.Factory() {
            @Override
            public final Object make(Context context2) {
                JavaFileManager lambda$preRegister$0;
                lambda$preRegister$0 = JavacFileManager.lambda$preRegister$0(context2);
                return lambda$preRegister$0;
            }
        });
    }

    private static void printAscii(String str, Object... objArr) {
        try {
            System.out.println(new String(String.format(null, str, objArr).getBytes(CharEncoding.US_ASCII), CharEncoding.US_ASCII));
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    public static void testName(String str, boolean z10, boolean z11) {
        try {
            validatePackageName(str);
        } catch (IllegalArgumentException unused) {
            if (z10) {
                throw new AssertionError((Object) ("Valid package name rejected: " + str));
            }
            printAscii("Invalid package name: \"%s\"", str);
        }
        if (!z10) {
            throw new AssertionError((Object) ("Invalid package name accepted: " + str));
        }
        printAscii("Valid package name: \"%s\"", str);
        try {
            validateClassName(str);
            if (z11) {
                printAscii("Valid class name: \"%s\"", str);
                return;
            }
            throw new AssertionError((Object) ("Invalid class name accepted: " + str));
        } catch (IllegalArgumentException unused2) {
            if (!z11) {
                printAscii("Invalid class name: \"%s\"", str);
                return;
            }
            throw new AssertionError((Object) ("Valid class name rejected: " + str));
        }
    }

    public static char[] toArray(CharBuffer charBuffer) {
        return charBuffer.hasArray() ? ((CharBuffer) charBuffer.compact().flip()).array() : charBuffer.toString().toCharArray();
    }

    private static void validateClassName(String str) {
        if (isValidName(str)) {
            return;
        }
        throw new IllegalArgumentException("Invalid class name: " + str);
    }

    private static void validatePackageName(String str) {
        if (str.length() <= 0 || isValidName(str)) {
            return;
        }
        throw new IllegalArgumentException("Invalid packageName name: " + str);
    }

    @Override
    public Path asPath(FileObject fileObject) {
        if (fileObject instanceof PathFileObject) {
            return ((PathFileObject) fileObject).path;
        }
        throw new IllegalArgumentException(fileObject.getName());
    }

    @Override
    public void close() throws IOException {
        if (this.deferredCloseTimeout > 0) {
            deferredClose();
            return;
        }
        this.locations.close();
        Iterator<Container> it = this.containers.values().iterator();
        while (it.hasNext()) {
            it.next().close();
        }
        this.containers.clear();
        this.contentCache.clear();
    }

    @Override
    public boolean contains(JavaFileManager.Location location, FileObject fileObject) throws IOException {
        BaseFileManager.nullCheck(location);
        BaseFileManager.nullCheck(fileObject);
        return this.locations.contains(location, asPath(fileObject));
    }

    @Override
    public void flush() {
        this.contentCache.clear();
    }

    @Override
    public ClassLoader getClassLoader(JavaFileManager.Location location) {
        checkNotModuleOrientedLocation(location);
        Iterable<? extends File> location2 = getLocation(location);
        if (location2 == null) {
            return null;
        }
        ListBuffer listBuffer = new ListBuffer();
        Iterator<? extends File> it = location2.iterator();
        while (it.hasNext()) {
            try {
                listBuffer.append(it.next().toURI().toURL());
            } catch (MalformedURLException e10) {
                throw new AssertionError(e10);
            }
        }
        return getClassLoader((URL[]) listBuffer.toArray(new URL[listBuffer.size()]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized Container getContainer(Path path) throws IOException {
        Container container = this.containers.get(path);
        if (container != null) {
            return container;
        }
        BasicFileAttributes basicFileAttributes = null;
        Object[] objArr = 0;
        if (this.fsInfo.isFile(path) && path.equals(Locations.thisSystemModules)) {
            Map<Path, Container> map = this.containers;
            JRTImageContainer jRTImageContainer = new JRTImageContainer();
            map.put(path, jRTImageContainer);
            return jRTImageContainer;
        }
        Path canonicalFile = this.fsInfo.getCanonicalFile(path);
        Container container2 = this.containers.get(canonicalFile);
        if (container2 != null) {
            this.containers.put(path, container2);
            return container2;
        }
        try {
            basicFileAttributes = Files.readAttributes(canonicalFile, (Class<BasicFileAttributes>) BasicFileAttributes.class, new LinkOption[0]);
        } catch (IOException unused) {
            container2 = MISSING_CONTAINER;
        }
        if (basicFileAttributes != null) {
            if (basicFileAttributes.isDirectory()) {
                container2 = new DirectoryContainer(path);
            } else {
                try {
                    container2 = new ArchiveContainer(path);
                } catch (SecurityException | ProviderNotFoundException e10) {
                    throw new IOException(e10);
                }
            }
        }
        this.containers.put(canonicalFile, container2);
        this.containers.put(path, container2);
        return container2;
    }

    @Override
    public FileObject getFileForInput(JavaFileManager.Location location, String str, String str2) throws IOException {
        checkNotModuleOrientedLocation(location);
        BaseFileManager.nullCheck(str);
        if (isRelativeUri(str2)) {
            return getFileForInput(location, str.length() == 0 ? new RelativePath.RelativeFile(str2) : new RelativePath.RelativeFile(RelativePath.RelativeDirectory.forPackage(str), str2));
        }
        throw new IllegalArgumentException("Invalid relative name: " + str2);
    }

    public JavaFileObject getFileForOutput(String str, JavaFileObject.Kind kind, JavaFileObject javaFileObject) throws IOException {
        return getJavaFileForOutput(StandardLocation.CLASS_OUTPUT, str, kind, javaFileObject);
    }

    @Override
    public JavaFileObject getJavaFileForInput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind) throws IOException {
        checkNotModuleOrientedLocation(location);
        BaseFileManager.nullCheck(str);
        BaseFileManager.nullCheck(kind);
        if (this.sourceOrClass.contains(kind)) {
            return getFileForInput(location, RelativePath.RelativeFile.forClass(str, kind));
        }
        throw new IllegalArgumentException("Invalid kind: " + ((Object) kind));
    }

    @Override
    public JavaFileObject getJavaFileForOutput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind, FileObject fileObject) throws IOException {
        checkOutputLocation(location);
        BaseFileManager.nullCheck(str);
        BaseFileManager.nullCheck(kind);
        if (this.sourceOrClass.contains(kind)) {
            return getFileForOutput(location, RelativePath.RelativeFile.forClass(str, kind), fileObject);
        }
        throw new IllegalArgumentException("Invalid kind: " + ((Object) kind));
    }

    public JavaFileObject getJavaFileObject(String str) {
        return getJavaFileObjects(str).iterator().next();
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjects(String... strArr) {
        return getJavaFileObjectsFromStrings(Arrays.asList((Object[]) BaseFileManager.nullCheck(strArr)));
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjectsFromFiles(Iterable<? extends File> iterable) {
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList();
        for (File file : iterable) {
            Objects.requireNonNull(file);
            Path path = file.toPath();
            arrayList.add(PathFileObject.forSimplePath(this, this.fsInfo.getCanonicalFile(path), path));
        }
        return arrayList;
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjectsFromPaths(Iterable<? extends Path> iterable) {
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList();
        for (Path path : iterable) {
            arrayList.add(PathFileObject.forSimplePath(this, this.fsInfo.getCanonicalFile(path), path));
        }
        return arrayList;
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjectsFromStrings(Iterable<String> iterable) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<String> it = iterable.iterator();
        while (it.hasNext()) {
            listBuffer.append(getPath((String) BaseFileManager.nullCheck(it.next()), new String[0]));
        }
        return getJavaFileObjectsFromPaths(listBuffer.toList());
    }

    @Override
    public Iterable<? extends File> getLocation(JavaFileManager.Location location) {
        BaseFileManager.nullCheck(location);
        return asFiles(this.locations.getLocation(location));
    }

    @Override
    public Iterable<? extends Path> getLocationAsPaths(JavaFileManager.Location location) {
        BaseFileManager.nullCheck(location);
        return this.locations.getLocation(location);
    }

    @Override
    public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, String str) throws IOException {
        checkModuleOrientedOrOutputLocation(location);
        BaseFileManager.nullCheck(str);
        if (location == StandardLocation.SOURCE_OUTPUT && getSourceOutDir() == null) {
            location = StandardLocation.CLASS_OUTPUT;
        }
        return this.locations.getLocationForModule(location, str);
    }

    @Override
    public <S> ServiceLoader<S> getServiceLoader(JavaFileManager.Location location, Class<S> cls) throws IOException {
        BaseFileManager.nullCheck(location);
        BaseFileManager.nullCheck(cls);
        JDK9Wrappers.Module.getModule(getClass()).addUses(cls);
        if (!location.isModuleOrientedLocation()) {
            return ServiceLoader.load(cls, getClassLoader(location));
        }
        Collection<Path> location2 = this.locations.getLocation(location);
        JDK9Wrappers.ModuleFinder of2 = JDK9Wrappers.ModuleFinder.of((Path[]) location2.toArray(new Path[location2.size()]));
        JDK9Wrappers.Layer boot = JDK9Wrappers.Layer.boot();
        return JDK9Wrappers.ServiceLoaderHelper.load(boot.defineModulesWithOneLoader(boot.configuration().resolveAndBind(JDK9Wrappers.ModuleFinder.of(new Path[0]), of2, Collections.emptySet()), ClassLoader.getSystemClassLoader()), cls);
    }

    @Override
    public boolean hasLocation(JavaFileManager.Location location) {
        BaseFileManager.nullCheck(location);
        return this.locations.hasLocation(location);
    }

    @Override
    public String inferBinaryName(JavaFileManager.Location location, JavaFileObject javaFileObject) {
        checkNotModuleOrientedLocation(location);
        Objects.requireNonNull(javaFileObject);
        Iterable<? extends Path> locationAsPaths = getLocationAsPaths(location);
        if (locationAsPaths == null) {
            return null;
        }
        if (javaFileObject instanceof PathFileObject) {
            return ((PathFileObject) javaFileObject).inferBinaryName(locationAsPaths);
        }
        throw new IllegalArgumentException(javaFileObject.getClass().getName());
    }

    @Override
    public String inferModuleName(JavaFileManager.Location location) {
        checkNotModuleOrientedLocation(location);
        return this.locations.inferModuleName(location);
    }

    @Override
    public boolean isSameFile(FileObject fileObject, FileObject fileObject2) {
        BaseFileManager.nullCheck(fileObject);
        BaseFileManager.nullCheck(fileObject2);
        return ((fileObject instanceof PathFileObject) && (fileObject2 instanceof PathFileObject)) ? ((PathFileObject) fileObject).isSameFile((PathFileObject) fileObject2) : fileObject.equals(fileObject2);
    }

    public boolean isSymbolFileEnabled() {
        return this.symbolFileEnabled;
    }

    @Override
    public Iterable<JavaFileObject> list(JavaFileManager.Location location, String str, Set<JavaFileObject.Kind> set, boolean z10) throws IOException {
        checkNotModuleOrientedLocation(location);
        BaseFileManager.nullCheck(str);
        BaseFileManager.nullCheck((Collection) set);
        Iterable<? extends Path> locationAsPaths = getLocationAsPaths(location);
        if (locationAsPaths == null) {
            return org.openjdk.tools.javac.util.List.nil();
        }
        RelativePath.RelativeDirectory forPackage = RelativePath.RelativeDirectory.forPackage(str);
        ListBuffer<JavaFileObject> listBuffer = new ListBuffer<>();
        for (Path path : locationAsPaths) {
            getContainer(path).list(path, forPackage, set, z10, listBuffer);
        }
        return listBuffer.toList();
    }

    @Override
    public Iterable<Set<JavaFileManager.Location>> listLocationsForModules(JavaFileManager.Location location) throws IOException {
        checkModuleOrientedOrOutputLocation(location);
        return this.locations.listLocationsForModules(location);
    }

    @Override
    public void setContext(Context context) {
        super.setContext(context);
        this.fsInfo = FSInfo.instance(context);
        this.symbolFileEnabled = !this.options.isSet("ignore.symbol.file");
        String str = this.options.get("sortFiles");
        if (str != null) {
            this.sortFiles = str.equals("reverse") ? SortFiles.REVERSE : SortFiles.FORWARD;
        }
    }

    @Override
    public void setLocation(JavaFileManager.Location location, Iterable<? extends File> iterable) throws IOException {
        BaseFileManager.nullCheck(location);
        this.locations.setLocation(location, asPaths(iterable));
    }

    @Override
    public void setLocationForModule(JavaFileManager.Location location, String str, Collection<? extends Path> collection) throws IOException {
        BaseFileManager.nullCheck(location);
        checkModuleOrientedOrOutputLocation(location);
        this.locations.setLocationForModule(location, (String) BaseFileManager.nullCheck(str), BaseFileManager.nullCheck((Collection) collection));
    }

    @Override
    public void setLocationFromPaths(JavaFileManager.Location location, Collection<? extends Path> collection) throws IOException {
        BaseFileManager.nullCheck(location);
        this.locations.setLocation(location, BaseFileManager.nullCheck((Collection) collection));
    }

    @Override
    public void setPathFactory(StandardJavaFileManager.PathFactory pathFactory) {
        Objects.requireNonNull(pathFactory);
        this.pathFactory = pathFactory;
        this.locations.setPathFactory(pathFactory);
    }

    public void setSymbolFileEnabled(boolean z10) {
        this.symbolFileEnabled = z10;
    }

    @Override
    public FileObject getFileForOutput(JavaFileManager.Location location, String str, String str2, FileObject fileObject) throws IOException {
        checkOutputLocation(location);
        BaseFileManager.nullCheck(str);
        if (isRelativeUri(str2)) {
            return getFileForOutput(location, str.length() == 0 ? new RelativePath.RelativeFile(str2) : new RelativePath.RelativeFile(RelativePath.RelativeDirectory.forPackage(str), str2), fileObject);
        }
        throw new IllegalArgumentException("Invalid relative name: " + str2);
    }

    public JavaFileObject getJavaFileObject(Path path) {
        return getJavaFileObjects(path).iterator().next();
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjects(File... fileArr) {
        return getJavaFileObjectsFromFiles(Arrays.asList((Object[]) BaseFileManager.nullCheck(fileArr)));
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjects(Path... pathArr) {
        return getJavaFileObjectsFromPaths(Arrays.asList((Object[]) BaseFileManager.nullCheck(pathArr)));
    }

    public static boolean isRelativeUri(String str) {
        try {
            return isRelativeUri(new URI(str));
        } catch (URISyntaxException unused) {
            return false;
        }
    }

    @Override
    public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, JavaFileObject javaFileObject) throws IOException {
        checkModuleOrientedOrOutputLocation(location);
        if (!(javaFileObject instanceof PathFileObject)) {
            return null;
        }
        return this.locations.getLocationForModule(location, Locations.normalize(((PathFileObject) javaFileObject).path));
    }

    private JavaFileObject getFileForInput(JavaFileManager.Location location, RelativePath.RelativeFile relativeFile) throws IOException {
        Iterable<? extends Path> locationAsPaths = getLocationAsPaths(location);
        if (locationAsPaths == null) {
            return null;
        }
        for (Path path : locationAsPaths) {
            JavaFileObject fileObject = getContainer(path).getFileObject(path, relativeFile);
            if (fileObject != null) {
                return fileObject;
            }
        }
        return null;
    }

    private JavaFileObject getFileForOutput(JavaFileManager.Location location, RelativePath.RelativeFile relativeFile, FileObject fileObject) throws IOException {
        Path next;
        if (location == StandardLocation.CLASS_OUTPUT) {
            if (getClassOutDir() != null) {
                next = getClassOutDir();
            } else {
                String basename = relativeFile.basename();
                if (fileObject != null && (fileObject instanceof PathFileObject)) {
                    return ((PathFileObject) fileObject).getSibling(basename);
                }
                Path path = getPath(basename, new String[0]);
                return PathFileObject.forSimplePath(this, this.fsInfo.getCanonicalFile(path), path);
            }
        } else if (location == StandardLocation.SOURCE_OUTPUT) {
            next = getSourceOutDir() != null ? getSourceOutDir() : getClassOutDir();
        } else {
            Iterator<Path> it = this.locations.getLocation(location).iterator();
            next = it.hasNext() ? it.next() : null;
        }
        if (next == null) {
            try {
                next = getPath(System.getProperty("user.dir"), new String[0]);
            } catch (InvalidPathException e10) {
                throw new IOException("bad filename " + ((Object) relativeFile), e10);
            }
        }
        return PathFileObject.forDirectoryPath(this, relativeFile.resolveAgainst(this.fsInfo.getCanonicalFile(next)), next, relativeFile);
    }
}
