package org.openjdk.javax.tools;

import java.io.File;
import java.nio.file.Path;
import java.util.Iterator;

public class FileManagerUtils {
    private FileManagerUtils() {
    }

    public static Iterable<File> asFiles(final Iterable<? extends Path> iterable) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$asFiles$1;
                lambda$asFiles$1 = FileManagerUtils.lambda$asFiles$1(Iterable.this);
                return lambda$asFiles$1;
            }
        };
    }

    public static Iterable<Path> asPaths(final Iterable<? extends File> iterable) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$asPaths$0;
                lambda$asPaths$0 = FileManagerUtils.lambda$asPaths$0(Iterable.this);
                return lambda$asPaths$0;
            }
        };
    }

    public static Iterator lambda$asFiles$1(Iterable iterable) {
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
                Path path = (Path) this.iter.next();
                try {
                    return path.toFile();
                } catch (UnsupportedOperationException e10) {
                    throw new IllegalArgumentException(path.toString(), e10);
                }
            }
        };
    }

    public static Iterator lambda$asPaths$0(Iterable iterable) {
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
}
