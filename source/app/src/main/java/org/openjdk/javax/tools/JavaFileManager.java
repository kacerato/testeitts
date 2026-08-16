package org.openjdk.javax.tools;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileObject;

public interface JavaFileManager extends Closeable, Flushable, OptionChecker {

    public interface Location {
        String getName();

        default boolean isModuleOrientedLocation() {
            return getName().matches("\\bMODULE\\b");
        }

        boolean isOutputLocation();
    }

    @Override
    void close() throws IOException;

    default boolean contains(Location location, FileObject fileObject) throws IOException {
        throw new UnsupportedOperationException();
    }

    void flush() throws IOException;

    ClassLoader getClassLoader(Location location);

    FileObject getFileForInput(Location location, String str, String str2) throws IOException;

    FileObject getFileForOutput(Location location, String str, String str2, FileObject fileObject) throws IOException;

    JavaFileObject getJavaFileForInput(Location location, String str, JavaFileObject.Kind kind) throws IOException;

    JavaFileObject getJavaFileForOutput(Location location, String str, JavaFileObject.Kind kind, FileObject fileObject) throws IOException;

    default Location getLocationForModule(Location location, String str) throws IOException {
        throw new UnsupportedOperationException();
    }

    default <S> ServiceLoader<S> getServiceLoader(Location location, Class<S> cls) throws IOException {
        throw new UnsupportedOperationException();
    }

    boolean handleOption(String str, Iterator<String> it);

    boolean hasLocation(Location location);

    String inferBinaryName(Location location, JavaFileObject javaFileObject);

    default String inferModuleName(Location location) throws IOException {
        throw new UnsupportedOperationException();
    }

    boolean isSameFile(FileObject fileObject, FileObject fileObject2);

    Iterable<JavaFileObject> list(Location location, String str, Set<JavaFileObject.Kind> set, boolean z10) throws IOException;

    default Iterable<Set<Location>> listLocationsForModules(Location location) throws IOException {
        throw new UnsupportedOperationException();
    }

    default Location getLocationForModule(Location location, JavaFileObject javaFileObject) throws IOException {
        throw new UnsupportedOperationException();
    }
}
