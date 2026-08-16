package org.openjdk.tools.javac.api;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.URI;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.source.util.TaskListener;
import org.openjdk.tools.javac.util.ClientCodeException;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;

public class ClientCodeWrapper {
    Map<Class<?>, Boolean> trustedClasses = new HashMap();

    public class DiagnosticSourceUnwrapper implements Diagnostic<JavaFileObject> {

        public final JCDiagnostic f102898d;

        public DiagnosticSourceUnwrapper(JCDiagnostic jCDiagnostic) {
            this.f102898d = jCDiagnostic;
        }

        @Override
        public String getCode() {
            return this.f102898d.getCode();
        }

        @Override
        public long getColumnNumber() {
            return this.f102898d.getColumnNumber();
        }

        @Override
        public long getEndPosition() {
            return this.f102898d.getEndPosition();
        }

        @Override
        public Diagnostic.Kind getKind() {
            return this.f102898d.getKind();
        }

        @Override
        public long getLineNumber() {
            return this.f102898d.getLineNumber();
        }

        @Override
        public String getMessage(Locale locale) {
            return this.f102898d.getMessage(locale);
        }

        @Override
        public long getPosition() {
            return this.f102898d.getPosition();
        }

        @Override
        public long getStartPosition() {
            return this.f102898d.getStartPosition();
        }

        public String toString() {
            return this.f102898d.toString();
        }

        @Override
        public JavaFileObject getSource() {
            return ClientCodeWrapper.this.unwrap(this.f102898d.getSource());
        }
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Trusted {
    }

    public class WrappedDiagnosticListener<T> implements DiagnosticListener<T> {
        protected DiagnosticListener<T> clientDiagnosticListener;

        public WrappedDiagnosticListener(DiagnosticListener<T> diagnosticListener) {
            Objects.requireNonNull(diagnosticListener);
            this.clientDiagnosticListener = diagnosticListener;
        }

        @Override
        public void report(Diagnostic<? extends T> diagnostic) {
            try {
                this.clientDiagnosticListener.report(ClientCodeWrapper.this.unwrap(diagnostic));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        public String toString() {
            return ClientCodeWrapper.this.wrappedToString(getClass(), this.clientDiagnosticListener);
        }
    }

    public class WrappedFileObject implements FileObject {
        protected FileObject clientFileObject;

        public WrappedFileObject(FileObject fileObject) {
            Objects.requireNonNull(fileObject);
            this.clientFileObject = fileObject;
        }

        @Override
        public boolean delete() {
            try {
                return this.clientFileObject.delete();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public CharSequence getCharContent(boolean z10) throws IOException {
            try {
                return this.clientFileObject.getCharContent(z10);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public long getLastModified() {
            try {
                return this.clientFileObject.getLastModified();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public String getName() {
            try {
                return this.clientFileObject.getName();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public InputStream openInputStream() throws IOException {
            try {
                return this.clientFileObject.openInputStream();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public OutputStream openOutputStream() throws IOException {
            try {
                return this.clientFileObject.openOutputStream();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Reader openReader(boolean z10) throws IOException {
            try {
                return this.clientFileObject.openReader(z10);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Writer openWriter() throws IOException {
            try {
                return this.clientFileObject.openWriter();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        public String toString() {
            return ClientCodeWrapper.this.wrappedToString(getClass(), this.clientFileObject);
        }

        @Override
        public URI toUri() {
            try {
                return this.clientFileObject.toUri();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }
    }

    public class WrappedJavaFileObject extends WrappedFileObject implements JavaFileObject {
        public WrappedJavaFileObject(JavaFileObject javaFileObject) {
            super(javaFileObject);
        }

        @Override
        public Modifier getAccessLevel() {
            try {
                return ((JavaFileObject) this.clientFileObject).getAccessLevel();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public JavaFileObject.Kind getKind() {
            try {
                return ((JavaFileObject) this.clientFileObject).getKind();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public NestingKind getNestingKind() {
            try {
                return ((JavaFileObject) this.clientFileObject).getNestingKind();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
            try {
                return ((JavaFileObject) this.clientFileObject).isNameCompatible(str, kind);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public String toString() {
            return ClientCodeWrapper.this.wrappedToString(getClass(), this.clientFileObject);
        }
    }

    public class WrappedTaskListener implements TaskListener {
        protected TaskListener clientTaskListener;

        public WrappedTaskListener(TaskListener taskListener) {
            Objects.requireNonNull(taskListener);
            this.clientTaskListener = taskListener;
        }

        @Override
        public void finished(TaskEvent taskEvent) {
            try {
                this.clientTaskListener.finished(taskEvent);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public void started(TaskEvent taskEvent) {
            try {
                this.clientTaskListener.started(taskEvent);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        public String toString() {
            return ClientCodeWrapper.this.wrappedToString(getClass(), this.clientTaskListener);
        }
    }

    public ClientCodeWrapper(Context context) {
    }

    public static ClientCodeWrapper instance(Context context) {
        ClientCodeWrapper clientCodeWrapper = (ClientCodeWrapper) context.get(ClientCodeWrapper.class);
        return clientCodeWrapper == null ? new ClientCodeWrapper(context) : clientCodeWrapper;
    }

    public String wrappedToString(Class<?> cls, Object obj) {
        return cls.getSimpleName() + "[" + obj + "]";
    }

    public boolean isTrusted(Object obj) {
        Class<?> cls = obj.getClass();
        Boolean bool = this.trustedClasses.get(cls);
        if (bool == null) {
            bool = Boolean.valueOf(cls.getName().startsWith("org.openjdk.tools.javac.") || cls.isAnnotationPresent(Trusted.class));
            this.trustedClasses.put(cls, bool);
        }
        return bool.booleanValue();
    }

    public FileObject unwrap(FileObject fileObject) {
        return fileObject instanceof WrappedFileObject ? ((WrappedFileObject) fileObject).clientFileObject : fileObject;
    }

    public JavaFileManager wrap(JavaFileManager javaFileManager) {
        if (isTrusted(javaFileManager)) {
            return javaFileManager;
        }
        if (javaFileManager instanceof StandardJavaFileManager) {
            return new WrappedStandardJavaFileManager((StandardJavaFileManager) javaFileManager);
        }
        return new WrappedJavaFileManager(javaFileManager);
    }

    public Iterable<JavaFileObject> wrapJavaFileObjects(Iterable<? extends JavaFileObject> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends JavaFileObject> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(wrap(it.next()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public class WrappedJavaFileManager implements JavaFileManager {
        protected JavaFileManager clientJavaFileManager;

        public WrappedJavaFileManager(JavaFileManager javaFileManager) {
            Objects.requireNonNull(javaFileManager);
            this.clientJavaFileManager = javaFileManager;
        }

        @Override
        public void close() throws IOException {
            try {
                this.clientJavaFileManager.close();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public boolean contains(JavaFileManager.Location location, FileObject fileObject) throws IOException {
            try {
                return this.clientJavaFileManager.contains(location, ClientCodeWrapper.this.unwrap(fileObject));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public void flush() throws IOException {
            try {
                this.clientJavaFileManager.flush();
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public ClassLoader getClassLoader(JavaFileManager.Location location) {
            try {
                return this.clientJavaFileManager.getClassLoader(location);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public FileObject getFileForInput(JavaFileManager.Location location, String str, String str2) throws IOException {
            try {
                return ClientCodeWrapper.this.wrap(this.clientJavaFileManager.getFileForInput(location, str, str2));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public FileObject getFileForOutput(JavaFileManager.Location location, String str, String str2, FileObject fileObject) throws IOException {
            try {
                ClientCodeWrapper clientCodeWrapper = ClientCodeWrapper.this;
                return clientCodeWrapper.wrap(this.clientJavaFileManager.getFileForOutput(location, str, str2, clientCodeWrapper.unwrap(fileObject)));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public JavaFileObject getJavaFileForInput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind) throws IOException {
            try {
                return ClientCodeWrapper.this.wrap(this.clientJavaFileManager.getJavaFileForInput(location, str, kind));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public JavaFileObject getJavaFileForOutput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind, FileObject fileObject) throws IOException {
            try {
                ClientCodeWrapper clientCodeWrapper = ClientCodeWrapper.this;
                return clientCodeWrapper.wrap(this.clientJavaFileManager.getJavaFileForOutput(location, str, kind, clientCodeWrapper.unwrap(fileObject)));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, String str) throws IOException {
            try {
                return this.clientJavaFileManager.getLocationForModule(location, str);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public boolean handleOption(String str, Iterator<String> it) {
            try {
                return this.clientJavaFileManager.handleOption(str, it);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public boolean hasLocation(JavaFileManager.Location location) {
            try {
                return this.clientJavaFileManager.hasLocation(location);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public String inferBinaryName(JavaFileManager.Location location, JavaFileObject javaFileObject) {
            try {
                return this.clientJavaFileManager.inferBinaryName(location, ClientCodeWrapper.this.unwrap(javaFileObject));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public String inferModuleName(JavaFileManager.Location location) throws IOException {
            try {
                return this.clientJavaFileManager.inferModuleName(location);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public boolean isSameFile(FileObject fileObject, FileObject fileObject2) {
            try {
                return this.clientJavaFileManager.isSameFile(ClientCodeWrapper.this.unwrap(fileObject), ClientCodeWrapper.this.unwrap(fileObject2));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public int isSupportedOption(String str) {
            try {
                return this.clientJavaFileManager.isSupportedOption(str);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<JavaFileObject> list(JavaFileManager.Location location, String str, Set<JavaFileObject.Kind> set, boolean z10) throws IOException {
            try {
                return ClientCodeWrapper.this.wrapJavaFileObjects(this.clientJavaFileManager.list(location, str, set, z10));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<Set<JavaFileManager.Location>> listLocationsForModules(JavaFileManager.Location location) throws IOException {
            try {
                return this.clientJavaFileManager.listLocationsForModules(location);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        public String toString() {
            return ClientCodeWrapper.this.wrappedToString(getClass(), this.clientJavaFileManager);
        }

        @Override
        public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, JavaFileObject javaFileObject) throws IOException {
            try {
                return this.clientJavaFileManager.getLocationForModule(location, ClientCodeWrapper.this.unwrap(javaFileObject));
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }
    }

    public class WrappedStandardJavaFileManager extends WrappedJavaFileManager implements StandardJavaFileManager {
        public WrappedStandardJavaFileManager(StandardJavaFileManager standardJavaFileManager) {
            super(standardJavaFileManager);
        }

        @Override
        public Path asPath(FileObject fileObject) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).asPath(fileObject);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends JavaFileObject> getJavaFileObjects(File... fileArr) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getJavaFileObjects(fileArr);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends JavaFileObject> getJavaFileObjectsFromFiles(Iterable<? extends File> iterable) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getJavaFileObjectsFromFiles(iterable);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends JavaFileObject> getJavaFileObjectsFromPaths(Iterable<? extends Path> iterable) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getJavaFileObjectsFromPaths(iterable);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends JavaFileObject> getJavaFileObjectsFromStrings(Iterable<String> iterable) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getJavaFileObjectsFromStrings(iterable);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends File> getLocation(JavaFileManager.Location location) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getLocation(location);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends Path> getLocationAsPaths(JavaFileManager.Location location) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getLocationAsPaths(location);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public void setLocation(JavaFileManager.Location location, Iterable<? extends File> iterable) throws IOException {
            try {
                ((StandardJavaFileManager) this.clientJavaFileManager).setLocation(location, iterable);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public void setLocationFromPaths(JavaFileManager.Location location, Collection<? extends Path> collection) throws IOException {
            try {
                ((StandardJavaFileManager) this.clientJavaFileManager).setLocationFromPaths(location, collection);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public void setPathFactory(StandardJavaFileManager.PathFactory pathFactory) {
            try {
                ((StandardJavaFileManager) this.clientJavaFileManager).setPathFactory(pathFactory);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends JavaFileObject> getJavaFileObjects(Path... pathArr) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getJavaFileObjects(pathArr);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }

        @Override
        public Iterable<? extends JavaFileObject> getJavaFileObjects(String... strArr) {
            try {
                return ((StandardJavaFileManager) this.clientJavaFileManager).getJavaFileObjects(strArr);
            } catch (Error e10) {
                e = e10;
                throw new ClientCodeException(e);
            } catch (ClientCodeException e11) {
                throw e11;
            } catch (RuntimeException e12) {
                e = e12;
                throw new ClientCodeException(e);
            }
        }
    }

    public JavaFileObject unwrap(JavaFileObject javaFileObject) {
        return javaFileObject instanceof WrappedJavaFileObject ? (JavaFileObject) ((WrappedJavaFileObject) javaFileObject).clientFileObject : javaFileObject;
    }

    public TaskListener unwrap(TaskListener taskListener) {
        return taskListener instanceof WrappedTaskListener ? ((WrappedTaskListener) taskListener).clientTaskListener : taskListener;
    }

    public FileObject wrap(FileObject fileObject) {
        return (fileObject == null || isTrusted(fileObject)) ? fileObject : new WrappedFileObject(fileObject);
    }

    public Collection<TaskListener> unwrap(Collection<? extends TaskListener> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<? extends TaskListener> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(unwrap(it.next()));
        }
        return arrayList;
    }

    public JavaFileObject wrap(JavaFileObject javaFileObject) {
        return (javaFileObject == null || isTrusted(javaFileObject)) ? javaFileObject : new WrappedJavaFileObject(javaFileObject);
    }

    public <T> DiagnosticListener<T> wrap(DiagnosticListener<T> diagnosticListener) {
        return isTrusted(diagnosticListener) ? diagnosticListener : new WrappedDiagnosticListener(diagnosticListener);
    }

    public <T> Diagnostic<T> unwrap(Diagnostic<T> diagnostic) {
        return diagnostic instanceof JCDiagnostic ? new DiagnosticSourceUnwrapper((JCDiagnostic) diagnostic) : diagnostic;
    }

    public TaskListener wrap(TaskListener taskListener) {
        return isTrusted(taskListener) ? taskListener : new WrappedTaskListener(taskListener);
    }
}
