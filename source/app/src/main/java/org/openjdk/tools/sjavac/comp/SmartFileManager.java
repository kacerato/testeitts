package org.openjdk.tools.sjavac.comp;

import b3.s;
import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.ForwardingJavaFileManager;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.api.ClientCodeWrapper;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.util.ListBuffer;

@ClientCodeWrapper.Trusted
public class SmartFileManager extends ForwardingJavaFileManager<JavaFileManager> {
    Map<String, Set<URI>> packageArtifacts;
    Set<URI> visibleSources;

    public SmartFileManager(JavaFileManager javaFileManager) {
        super(javaFileManager);
        this.visibleSources = new HashSet();
        this.packageArtifacts = new HashMap();
    }

    private boolean isModuleInfo(FileObject fileObject) {
        if (!(fileObject instanceof JavaFileObject)) {
            return false;
        }
        JavaFileObject javaFileObject = (JavaFileObject) fileObject;
        return javaFileObject.isNameCompatible("module-info", JavaFileObject.Kind.SOURCE) || javaFileObject.isNameCompatible("module-info", JavaFileObject.Kind.CLASS);
    }

    private static FileObject locUnwrap(FileObject fileObject) {
        if (fileObject instanceof FileObjectWithLocation) {
            return ((FileObjectWithLocation) fileObject).getDelegate();
        }
        return fileObject instanceof JavaFileObjectWithLocation ? ((JavaFileObjectWithLocation) fileObject).getDelegate() : fileObject;
    }

    public static JavaFileObject locWrap(JavaFileObject javaFileObject, JavaFileManager.Location location) {
        if (location == StandardLocation.PLATFORM_CLASS_PATH) {
            return javaFileObject;
        }
        if (javaFileObject == null) {
            return null;
        }
        return new JavaFileObjectWithLocation(javaFileObject, location);
    }

    private static ListBuffer<JavaFileObject> locWrapMany(Iterable<JavaFileObject> iterable, JavaFileManager.Location location) {
        ListBuffer<JavaFileObject> listBuffer = new ListBuffer<>();
        Iterator<JavaFileObject> it = iterable.iterator();
        while (it.hasNext()) {
            listBuffer.add(locWrap(it.next(), location));
        }
        return listBuffer;
    }

    private static String packageNameFromFileName(String str) {
        StringBuilder sb2 = new StringBuilder();
        int indexOf = str.indexOf(95);
        int i10 = 0;
        while (indexOf != -1) {
            if (sb2.length() > 0) {
                sb2.append('.');
            }
            sb2.append(str.substring(i10, indexOf));
            if (indexOf == str.length() - 1) {
                break;
            }
            i10 = indexOf + 1;
            indexOf = str.indexOf(95, i10);
        }
        return sb2.toString();
    }

    public void addArtifact(String str, URI uri) {
        Set<URI> set = this.packageArtifacts.get(str);
        if (set == null) {
            set = new HashSet<>();
            this.packageArtifacts.put(str, set);
        }
        set.add(uri);
    }

    public void cleanArtifacts() {
        this.packageArtifacts = new HashMap();
    }

    @Override
    public FileObject getFileForInput(JavaFileManager.Location location, String str, String str2) throws IOException {
        FileObject locWrap = locWrap(super.getFileForInput(location, str, str2), location);
        if (locWrap == null || this.visibleSources.isEmpty() || this.visibleSources.contains(locWrap.toUri()) || isModuleInfo(locWrap)) {
            return locWrap;
        }
        return null;
    }

    @Override
    public FileObject getFileForOutput(JavaFileManager.Location location, String str, String str2, FileObject fileObject) throws IOException {
        FileObject fileForOutput = super.getFileForOutput(location, str, str2, fileObject);
        FileObject locWrap = locWrap(fileForOutput, location);
        if (locWrap == null) {
            return locWrap;
        }
        boolean equals = location.equals(StandardLocation.NATIVE_HEADER_OUTPUT);
        String str3 = s.f32937c;
        if (equals && (fileForOutput instanceof JavaFileObject)) {
            SmartFileObject smartFileObject = new SmartFileObject((JavaFileObject) locWrap);
            str = s.f32937c + packageNameFromFileName(str2);
            locWrap = smartFileObject;
        }
        if (!str.equals("")) {
            str3 = str;
        }
        addArtifact(str3, locWrap.toUri());
        return locWrap;
    }

    @Override
    public JavaFileObject getJavaFileForInput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind) throws IOException {
        JavaFileObject locWrap = locWrap(super.getJavaFileForInput(location, str, kind), location);
        if (locWrap == null || this.visibleSources.isEmpty() || this.visibleSources.contains(locWrap.toUri()) || isModuleInfo(locWrap)) {
            return locWrap;
        }
        return null;
    }

    @Override
    public JavaFileObject getJavaFileForOutput(JavaFileManager.Location location, String str, JavaFileObject.Kind kind, FileObject fileObject) throws IOException {
        JavaFileObject locWrap = locWrap(super.getJavaFileForOutput(location, str, kind, fileObject), location);
        if (locWrap == null) {
            return locWrap;
        }
        int lastIndexOf = str.lastIndexOf(46);
        addArtifact("" + s.f32937c + (lastIndexOf != -1 ? str.substring(0, lastIndexOf) : ""), locWrap.toUri());
        return locWrap;
    }

    @Override
    public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, JavaFileObject javaFileObject) throws IOException {
        return super.getLocationForModule(location, locUnwrap(javaFileObject));
    }

    public Map<String, Set<URI>> getPackageArtifacts() {
        return this.packageArtifacts;
    }

    @Override
    public String inferBinaryName(JavaFileManager.Location location, JavaFileObject javaFileObject) {
        return super.inferBinaryName(location, locUnwrap(javaFileObject));
    }

    @Override
    public boolean isSameFile(FileObject fileObject, FileObject fileObject2) {
        return super.isSameFile(locUnwrap(fileObject), locUnwrap(fileObject2));
    }

    @Override
    public Iterable<JavaFileObject> list(JavaFileManager.Location location, String str, Set<JavaFileObject.Kind> set, boolean z10) throws IOException {
        Iterable<JavaFileObject> list = super.list(location, str, set, z10);
        if (this.visibleSources.isEmpty()) {
            return locWrapMany(list, location);
        }
        ListBuffer listBuffer = new ListBuffer();
        for (JavaFileObject javaFileObject : list) {
            URI uri = javaFileObject.toUri();
            String uri2 = uri.toString();
            if (uri2.startsWith("jar:") || uri2.endsWith(".class") || this.visibleSources.contains(uri)) {
                listBuffer.add(javaFileObject);
            }
        }
        return locWrapMany(listBuffer, location);
    }

    public void setSymbolFileEnabled(boolean z10) {
        M m10 = this.fileManager;
        if (!(m10 instanceof JavacFileManager)) {
            throw new IllegalStateException();
        }
        ((JavacFileManager) m10).setSymbolFileEnabled(z10);
    }

    public void setVisibleSources(Set<URI> set) {
        this.visibleSources = set;
    }

    private static FileObject locWrap(FileObject fileObject, JavaFileManager.Location location) {
        if (fileObject instanceof JavaFileObject) {
            return locWrap((JavaFileObject) fileObject, location);
        }
        if (fileObject == null) {
            return null;
        }
        return new FileObjectWithLocation(fileObject, location);
    }

    private static JavaFileObject locUnwrap(JavaFileObject javaFileObject) {
        return javaFileObject instanceof JavaFileObjectWithLocation ? ((JavaFileObjectWithLocation) javaFileObject).getDelegate() : javaFileObject;
    }
}
