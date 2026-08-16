package org.openjdk.tools.javac.file;

import b3.s;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.text.Normalizer;
import java.util.Iterator;
import java.util.Objects;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.file.RelativePath;

public abstract class PathFileObject implements JavaFileObject {
    private static final FileSystem defaultFileSystem = FileSystems.getDefault();
    private static final boolean isMacOS = System.getProperty("os.name", "").contains("OS X");
    protected final BaseFileManager fileManager;
    private boolean hasParents;
    protected final Path path;

    public static class CannotCreateUriError extends Error {
        private static final long serialVersionUID = 9101708840997613546L;

        public CannotCreateUriError(String str, Throwable th2) {
            super(str, th2);
        }
    }

    public static class DirectoryFileObject extends PathFileObject {
        private final RelativePath relativePath;
        private final Path userPackageRootDir;

        @Override
        public String getName() {
            return this.relativePath.resolveAgainst(this.userPackageRootDir).toString();
        }

        @Override
        public PathFileObject getSibling(String str) {
            return new DirectoryFileObject(this.fileManager, this.path.resolveSibling(str), this.userPackageRootDir, new RelativePath.RelativeFile(this.relativePath.dirname(), str));
        }

        @Override
        public String inferBinaryName(Iterable<? extends Path> iterable) {
            return PathFileObject.toBinaryName(this.relativePath);
        }

        @Override
        public String toString() {
            return "DirectoryFileObject[" + ((Object) this.userPackageRootDir) + s.f32937c + this.relativePath.path + "]";
        }

        private DirectoryFileObject(BaseFileManager baseFileManager, Path path, Path path2, RelativePath relativePath) {
            super(baseFileManager, path);
            Objects.requireNonNull(path2);
            this.userPackageRootDir = path2;
            this.relativePath = relativePath;
        }
    }

    public static class JRTFileObject extends PathFileObject {
        @Override
        public String getName() {
            return this.path.toString();
        }

        @Override
        public PathFileObject getSibling(String str) {
            return new JRTFileObject(this.fileManager, this.path.resolveSibling(str));
        }

        @Override
        public String inferBinaryName(Iterable<? extends Path> iterable) {
            Path path = this.path;
            return PathFileObject.toBinaryName(path.subpath(2, path.getNameCount()));
        }

        @Override
        public String toString() {
            return "JRTFileObject[" + ((Object) this.path) + "]";
        }

        private JRTFileObject(BaseFileManager baseFileManager, Path path) {
            super(baseFileManager, path);
        }
    }

    public static class JarFileObject extends PathFileObject {
        private final Path userJarPath;

        private static URI createJarUri(Path path, String str) {
            URI normalize = path.toUri().normalize();
            String str2 = str.startsWith("/") ? "!" : "!/";
            try {
                return new URI("jar:" + ((Object) normalize) + str2 + str);
            } catch (URISyntaxException e10) {
                throw new CannotCreateUriError(((Object) normalize) + str2 + str, e10);
            }
        }

        @Override
        public String getName() {
            return ((Object) this.userJarPath) + "(" + ((Object) this.path) + ")";
        }

        @Override
        public PathFileObject getSibling(String str) {
            return new JarFileObject(this.fileManager, this.path.resolveSibling(str), this.userJarPath);
        }

        @Override
        public String inferBinaryName(Iterable<? extends Path> iterable) {
            return PathFileObject.toBinaryName(this.path.getFileSystem().getRootDirectories().iterator().next().relativize(this.path));
        }

        @Override
        public String toString() {
            return "JarFileObject[" + ((Object) this.userJarPath) + s.f32937c + ((Object) this.path) + "]";
        }

        @Override
        public URI toUri() {
            return createJarUri(this.userJarPath, this.path.toString());
        }

        private JarFileObject(BaseFileManager baseFileManager, Path path, Path path2) {
            super(baseFileManager, path);
            this.userJarPath = path2;
        }
    }

    public static class SimpleFileObject extends PathFileObject {
        private final Path userPath;

        @Override
        public JavaFileObject.Kind getKind() {
            return BaseFileManager.getKind(this.userPath);
        }

        @Override
        public String getName() {
            return this.userPath.toString();
        }

        @Override
        public String getShortName() {
            return this.userPath.getFileName().toString();
        }

        @Override
        public PathFileObject getSibling(String str) {
            return new SimpleFileObject(this.fileManager, this.path.resolveSibling(str), this.userPath.resolveSibling(str));
        }

        @Override
        public String inferBinaryName(Iterable<? extends Path> iterable) {
            Path absolutePath = this.path.toAbsolutePath();
            Iterator<? extends Path> it = iterable.iterator();
            while (it.hasNext()) {
                Path absolutePath2 = it.next().toAbsolutePath();
                if (absolutePath.startsWith(absolutePath2)) {
                    try {
                        Path relativize = absolutePath2.relativize(absolutePath);
                        if (relativize != null) {
                            return PathFileObject.toBinaryName(relativize);
                        }
                        continue;
                    } catch (IllegalArgumentException unused) {
                        continue;
                    }
                }
            }
            return null;
        }

        @Override
        public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
            return isPathNameCompatible(this.userPath, str, kind);
        }

        private SimpleFileObject(BaseFileManager baseFileManager, Path path, Path path2) {
            super(baseFileManager, path);
            this.userPath = path2;
        }
    }

    public PathFileObject(BaseFileManager baseFileManager, Path path) {
        Objects.requireNonNull(baseFileManager);
        this.fileManager = baseFileManager;
        if (Files.isDirectory(path, new LinkOption[0])) {
            throw new IllegalArgumentException("directories not supported");
        }
        this.path = path;
    }

    private void ensureParentDirectoriesExist() throws IOException {
        if (this.hasParents) {
            return;
        }
        Path parent = this.path.getParent();
        if (parent != null && !Files.isDirectory(parent, new LinkOption[0])) {
            try {
                Files.createDirectories(parent, new FileAttribute[0]);
            } catch (IOException e10) {
                throw new IOException("could not create parent directories", e10);
            }
        }
        this.hasParents = true;
    }

    public static PathFileObject forDirectoryPath(BaseFileManager baseFileManager, Path path, Path path2, RelativePath relativePath) {
        return new DirectoryFileObject(baseFileManager, path, path2, relativePath);
    }

    public static PathFileObject forJRTPath(BaseFileManager baseFileManager, Path path) {
        return new JRTFileObject(baseFileManager, path);
    }

    public static PathFileObject forJarPath(BaseFileManager baseFileManager, Path path, Path path2) {
        return new JarFileObject(baseFileManager, path, path2);
    }

    public static PathFileObject forSimplePath(BaseFileManager baseFileManager, Path path, Path path2) {
        return new SimpleFileObject(baseFileManager, path, path2);
    }

    public static String getSimpleName(FileObject fileObject) {
        String schemeSpecificPart = fileObject.toUri().getSchemeSpecificPart();
        return schemeSpecificPart.substring(schemeSpecificPart.lastIndexOf("/") + 1);
    }

    private static String removeExtension(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    public static String toBinaryName(RelativePath relativePath) {
        return toBinaryName(relativePath.path, "/");
    }

    @Override
    public boolean delete() {
        try {
            Files.delete(this.path);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof PathFileObject) && this.path.equals(((PathFileObject) obj).path);
    }

    @Override
    public Modifier getAccessLevel() {
        return null;
    }

    @Override
    public CharSequence getCharContent(boolean z10) throws IOException {
        CharBuffer cachedContent = this.fileManager.getCachedContent(this);
        if (cachedContent != null) {
            return cachedContent;
        }
        InputStream openInputStream = openInputStream();
        try {
            ByteBuffer makeByteBuffer = this.fileManager.makeByteBuffer(openInputStream);
            JavaFileObject useSource = this.fileManager.log.useSource(this);
            try {
                CharBuffer decode = this.fileManager.decode(makeByteBuffer, z10);
                this.fileManager.log.useSource(useSource);
                this.fileManager.recycleByteBuffer(makeByteBuffer);
                if (!z10) {
                    this.fileManager.cache(this, decode);
                }
                if (openInputStream != null) {
                    openInputStream.close();
                }
                return decode;
            } catch (Throwable th2) {
                this.fileManager.log.useSource(useSource);
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (Throwable th5) {
                        th3.addSuppressed(th5);
                    }
                }
                throw th4;
            }
        }
    }

    @Override
    public JavaFileObject.Kind getKind() {
        return BaseFileManager.getKind(this.path);
    }

    @Override
    public long getLastModified() {
        try {
            return Files.getLastModifiedTime(this.path, new LinkOption[0]).toMillis();
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override
    public NestingKind getNestingKind() {
        return null;
    }

    public Path getPath() {
        return this.path;
    }

    public String getShortName() {
        return this.path.getFileName().toString();
    }

    public abstract PathFileObject getSibling(String str);

    public int hashCode() {
        return this.path.hashCode();
    }

    public abstract String inferBinaryName(Iterable<? extends Path> iterable);

    @Override
    public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
        return isPathNameCompatible(this.path, str, kind);
    }

    public boolean isPathNameCompatible(Path path, String str, JavaFileObject.Kind kind) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(kind);
        if (kind == JavaFileObject.Kind.OTHER && BaseFileManager.getKind(path) != kind) {
            return false;
        }
        String str2 = str + kind.extension;
        String path2 = path.getFileName().toString();
        if (path2.equals(str2)) {
            return true;
        }
        if (path.getFileSystem() == defaultFileSystem) {
            if (isMacOS && Normalizer.isNormalized(path2, Normalizer.Form.NFD)) {
                Normalizer.Form form = Normalizer.Form.NFC;
                if (Normalizer.isNormalized(str2, form) && Normalizer.normalize(path2, form).equals(str2)) {
                    return true;
                }
            }
            if (path2.equalsIgnoreCase(str2)) {
                try {
                    return path.toRealPath(LinkOption.NOFOLLOW_LINKS).getFileName().toString().equals(str2);
                } catch (IOException unused) {
                }
            }
        }
        return false;
    }

    public boolean isSameFile(PathFileObject pathFileObject) {
        return this.path.equals(pathFileObject.path);
    }

    @Override
    public InputStream openInputStream() throws IOException {
        this.fileManager.updateLastUsedTime();
        return Files.newInputStream(this.path, new OpenOption[0]);
    }

    @Override
    public OutputStream openOutputStream() throws IOException {
        this.fileManager.updateLastUsedTime();
        this.fileManager.flushCache(this);
        ensureParentDirectoriesExist();
        return Files.newOutputStream(this.path, new OpenOption[0]);
    }

    @Override
    public Reader openReader(boolean z10) throws IOException {
        BaseFileManager baseFileManager = this.fileManager;
        return new InputStreamReader(openInputStream(), baseFileManager.getDecoder(baseFileManager.getEncodingName(), z10));
    }

    @Override
    public Writer openWriter() throws IOException {
        this.fileManager.updateLastUsedTime();
        this.fileManager.flushCache(this);
        ensureParentDirectoriesExist();
        return new OutputStreamWriter(Files.newOutputStream(this.path, new OpenOption[0]), this.fileManager.getEncodingName());
    }

    public String toString() {
        return getClass().getSimpleName() + "[" + ((Object) this.path) + "]";
    }

    @Override
    public URI toUri() {
        return this.path.toUri();
    }

    public static String toBinaryName(Path path) {
        return toBinaryName(path.toString(), path.getFileSystem().getSeparator());
    }

    private static String toBinaryName(String str, String str2) {
        return removeExtension(str).replace(str2, ".");
    }
}
