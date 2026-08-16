package org.openjdk.javax.tools;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;

public class ForwardingJavaFileManager<M extends JavaFileManager> implements JavaFileManager {
    protected final M fileManager;

    public ForwardingJavaFileManager(M m10) {
        Objects.requireNonNull(m10);
        this.fileManager = m10;
    }

    @Override
    public void close() throws IOException {
        this.fileManager.close();
    }

    @Override
    public boolean contains(JavaFileManager.Location location, FileObject fileObject) throws IOException {
        return this.fileManager.contains(location, fileObject);
    }

    @Override
    public void flush() throws IOException {
        this.fileManager.flush();
    }

    @Override
    public ClassLoader getClassLoader(JavaFileManager.Location location) {
        return this.fileManager.getClassLoader(location);
    }

    @Override
    public FileObject getFileForInput(JavaFileManager.Location location, String str, String str2) throws IOException {
        return this.fileManager.getFileForInput(location, str, str2);
    }

    @Override
    public FileObject getFileForOutput(JavaFileManager.Location location, String str, String str2, FileObject fileObject) throws IOException {
        return this.fileManager.getFileForOutput(location, str, str2, fileObject);
    }

    @Override
    public JavaFileObject getJavaFileForInput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind) throws IOException {
        return this.fileManager.getJavaFileForInput(location, str, kind);
    }

    @Override
    public JavaFileObject getJavaFileForOutput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind, FileObject fileObject) throws IOException {
        return this.fileManager.getJavaFileForOutput(location, str, kind, fileObject);
    }

    @Override
    public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, String str) throws IOException {
        return this.fileManager.getLocationForModule(location, str);
    }

    @Override
    public <S> ServiceLoader<S> getServiceLoader(JavaFileManager.Location location, Class<S> cls) throws IOException {
        return this.fileManager.getServiceLoader(location, cls);
    }

    @Override
    public boolean handleOption(String str, Iterator<String> it) {
        return this.fileManager.handleOption(str, it);
    }

    @Override
    public boolean hasLocation(JavaFileManager.Location location) {
        return this.fileManager.hasLocation(location);
    }

    @Override
    public String inferBinaryName(JavaFileManager.Location location, JavaFileObject javaFileObject) {
        return this.fileManager.inferBinaryName(location, javaFileObject);
    }

    @Override
    public String inferModuleName(JavaFileManager.Location location) throws IOException {
        return this.fileManager.inferModuleName(location);
    }

    @Override
    public boolean isSameFile(FileObject fileObject, FileObject fileObject2) {
        return this.fileManager.isSameFile(fileObject, fileObject2);
    }

    @Override
    public int isSupportedOption(String str) {
        return this.fileManager.isSupportedOption(str);
    }

    @Override
    public Iterable<JavaFileObject> list(JavaFileManager.Location location, String str, Set<JavaFileObject.Kind> set, boolean z10) throws IOException {
        return this.fileManager.list(location, str, set, z10);
    }

    @Override
    public Iterable<Set<JavaFileManager.Location>> listLocationsForModules(JavaFileManager.Location location) throws IOException {
        return this.fileManager.listLocationsForModules(location);
    }

    @Override
    public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, JavaFileObject javaFileObject) throws IOException {
        return this.fileManager.getLocationForModule(location, javaFileObject);
    }
}
