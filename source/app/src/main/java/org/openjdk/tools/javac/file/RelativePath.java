package org.openjdk.tools.javac.file;

import java.nio.file.FileSystem;
import java.nio.file.InvalidPathException;
import java.nio.file.Path;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.openjdk.javax.tools.JavaFileObject;

public abstract class RelativePath implements Comparable<RelativePath> {
    protected final String path;

    public static class RelativeDirectory extends RelativePath {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public RelativeDirectory(String str) {
            super(str);
            if (str.length() != 0 && !str.endsWith("/")) {
                str = str + "/";
            }
        }

        public static RelativeDirectory forPackage(CharSequence charSequence) {
            return new RelativeDirectory(charSequence.toString().replace('.', '/'));
        }

        @Override
        public String basename() {
            int length = this.path.length();
            if (length == 0) {
                return this.path;
            }
            return this.path.substring(this.path.lastIndexOf(47, length - 2) + 1, length - 1);
        }

        @Override
        public int compareTo(RelativePath relativePath) {
            return super.compareTo(relativePath);
        }

        public boolean contains(RelativePath relativePath) {
            return relativePath.path.length() > this.path.length() && relativePath.path.startsWith(this.path);
        }

        @Override
        public RelativeDirectory dirname() {
            int length = this.path.length();
            if (length == 0) {
                return this;
            }
            return new RelativeDirectory(this.path.substring(0, this.path.lastIndexOf(47, length - 2) + 1));
        }

        @Override
        public String toString() {
            return "RelativeDirectory[" + this.path + "]";
        }

        public RelativeDirectory(RelativeDirectory relativeDirectory, String str) {
            this(relativeDirectory.path + str);
        }
    }

    public RelativePath(String str) {
        this.path = str;
    }

    public abstract String basename();

    public abstract RelativeDirectory dirname();

    public boolean equals(Object obj) {
        if (obj instanceof RelativePath) {
            return this.path.equals(((RelativePath) obj).path);
        }
        return false;
    }

    public String getPath() {
        return this.path;
    }

    public int hashCode() {
        return this.path.hashCode();
    }

    public Path resolveAgainst(Path path) throws InvalidPathException {
        return path.resolve(this.path.replace("/", path.getFileSystem().getSeparator()));
    }

    public String toString() {
        return "RelPath[" + this.path + "]";
    }

    @Override
    public int compareTo(RelativePath relativePath) {
        return this.path.compareTo(relativePath.path);
    }

    public static class RelativeFile extends RelativePath {
        public RelativeFile(String str) {
            super(str);
            if (str.endsWith("/")) {
                throw new IllegalArgumentException(str);
            }
        }

        public static RelativeFile forClass(CharSequence charSequence, JavaFileObject.Kind kind) {
            return new RelativeFile(charSequence.toString().replace('.', '/') + kind.extension);
        }

        @Override
        public String basename() {
            return this.path.substring(this.path.lastIndexOf(47) + 1);
        }

        @Override
        public int compareTo(RelativePath relativePath) {
            return super.compareTo(relativePath);
        }

        @Override
        public RelativeDirectory dirname() {
            return new RelativeDirectory(this.path.substring(0, this.path.lastIndexOf(47) + 1));
        }

        public ZipEntry getZipEntry(ZipFile zipFile) {
            return zipFile.getEntry(this.path);
        }

        @Override
        public String toString() {
            return "RelativeFile[" + this.path + "]";
        }

        public RelativeFile(RelativeDirectory relativeDirectory, String str) {
            this(relativeDirectory.path + str);
        }

        public RelativeFile(RelativeDirectory relativeDirectory, RelativePath relativePath) {
            this(relativeDirectory, relativePath.path);
        }
    }

    public Path resolveAgainst(FileSystem fileSystem) throws InvalidPathException {
        return fileSystem.getRootDirectories().iterator().next().resolve(this.path.replace("/", fileSystem.getSeparator()));
    }
}
