package org.eclipse.jdt.internal.compiler.batch;

import com.android.tools.r8.internal.Yi1;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.zip.ZipFile;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IMultiModuleEntry;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.core.JavaElement;

public class ClasspathJrt extends ClasspathLocation implements IMultiModuleEntry {
    protected static HashMap<String, Map<String, IModule>> ModulesCache = new HashMap<>();
    protected List<String> annotationPaths;
    protected ZipFile annotationZipFile;
    protected boolean closeZipFileAtEnd;
    public File file;
    public final Set<String> moduleNamesCache;

    public ClasspathJrt(File file, boolean z10, AccessRuleSet accessRuleSet, String str) {
        super(accessRuleSet, str);
        this.file = file;
        this.closeZipFileAtEnd = z10;
        this.moduleNamesCache = new HashSet();
    }

    public void acceptModule(ClassFileReader classFileReader, Map<String, IModule> map) {
        IBinaryModule moduleDeclaration;
        if (classFileReader == null || (moduleDeclaration = classFileReader.getModuleDeclaration()) == null) {
            return;
        }
        map.put(String.valueOf(moduleDeclaration.name()), moduleDeclaration);
    }

    public void addTypeName(ArrayList arrayList, String str, int i10, char[] cArr) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            arrayList.add(CharOperation.arrayConcat(CharOperation.splitOn('/', cArr), str.substring(i10 + 1, lastIndexOf).toCharArray()));
        }
    }

    @Override
    public <T> List<String> allModules(Iterable<T> iterable, Function<T, String> function, Function<T, IModule> function2) {
        boolean z10;
        IModule apply;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            String apply2 = function.apply(it.next());
            if ("java.se".equals(apply2)) {
                arrayList.add(apply2);
                z10 = true;
                break;
            }
        }
        for (T t10 : iterable) {
            String apply3 = function.apply(t10);
            boolean startsWith = apply3.startsWith("java.");
            boolean z11 = !startsWith;
            if (!z10) {
                z11 |= startsWith;
            }
            if (z11 && (apply = function2.apply(t10)) != null) {
                IModule.IPackageExport[] exports = apply.exports();
                int length = exports.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        if (!exports[i10].isQualified()) {
                            arrayList.add(apply3);
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        return arrayList;
    }

    @Override
    public List fetchLinkedJars(FileSystem.ClasspathSectionProblemReporter classpathSectionProblemReporter) {
        return null;
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3) {
        return findClass(cArr, str, str2, str3, false);
    }

    @Override
    public char[][][] findTypeNames(final String str, final String str2) {
        if (!isPackage(str, str2)) {
            return null;
        }
        final char[] charArray = str.toCharArray();
        final ArrayList arrayList = new ArrayList();
        try {
            JRTUtil.walkModuleImage(this.file, new JRTUtil.JrtFileVisitor<Path>() {
                @Override
                public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    Path parent = path.getParent();
                    if (parent == null) {
                        return FileVisitResult.CONTINUE;
                    }
                    if (!parent.toString().equals(str)) {
                        return FileVisitResult.CONTINUE;
                    }
                    ClasspathJrt.this.addTypeName(arrayList, path.getName(path.getNameCount() - 1).toString(), -1, charArray);
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitModule(Path path, String str3) throws IOException {
                    String str4 = str2;
                    if (str4 == null) {
                        return FileVisitResult.CONTINUE;
                    }
                    if (!str4.equals(str3)) {
                        return FileVisitResult.SKIP_SUBTREE;
                    }
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    if (str.startsWith(path.toString())) {
                        return FileVisitResult.CONTINUE;
                    }
                    return FileVisitResult.SKIP_SUBTREE;
                }
            }, JRTUtil.NOTIFY_ALL);
        } catch (IOException unused) {
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        char[][][] cArr = new char[size][];
        arrayList.toArray(cArr);
        return cArr;
    }

    @Override
    public int getMode() {
        return 2;
    }

    @Override
    public IModule getModule(char[] cArr) {
        Map<String, IModule> map = ModulesCache.get(this.file.getPath());
        if (map != null) {
            return map.get(String.valueOf(cArr));
        }
        return null;
    }

    @Override
    public Collection<String> getModuleNames(Collection<String> collection, Function<String, IModule> function) {
        return selectModules(ModulesCache.get(this.file.getPath()).o(), collection, function);
    }

    @Override
    public char[][] getModulesDeclaringPackage(String str, String str2) {
        return CharOperation.toCharArrays(JRTUtil.getModulesDeclaringPackage(this.file, str, str2));
    }

    @Override
    public String getPath() {
        if (this.path == null) {
            try {
                this.path = this.file.getCanonicalPath();
            } catch (IOException unused) {
                this.path = this.file.getAbsolutePath();
            }
        }
        return this.path;
    }

    @Override
    public boolean hasAnnotationFileFor(String str) {
        return false;
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        return JRTUtil.hasCompilationUnit(this.file, str, str2);
    }

    @Override
    public boolean hasModule() {
        return true;
    }

    @Override
    public void initialize() throws IOException {
        loadModules();
    }

    public void loadModules() {
        Map<String, IModule> map = ModulesCache.get(this.file.getPath());
        if (map != null) {
            this.moduleNamesCache.addAll(map.o());
            return;
        }
        try {
            final HashMap hashMap = new HashMap();
            JRTUtil.walkModuleImage(this.file, new JRTUtil.JrtFileVisitor<Path>() {
                @Override
                public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitModule(Path path, String str) throws IOException {
                    try {
                        ClasspathJrt classpathJrt = ClasspathJrt.this;
                        classpathJrt.acceptModule(JRTUtil.getClassfileContent(classpathJrt.file, "module-info.class", str), hashMap);
                        ClasspathJrt.this.moduleNamesCache.add(str);
                    } catch (ClassFormatException e10) {
                        e10.printStackTrace();
                    }
                    return FileVisitResult.SKIP_SUBTREE;
                }

                @Override
                public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    return FileVisitResult.CONTINUE;
                }
            }, JRTUtil.NOTIFY_MODULES);
            synchronized (ModulesCache) {
                try {
                    if (ModulesCache.get(this.file.getPath()) == null) {
                        ModulesCache.put(this.file.getPath(), Collections.unmodifiableMap(hashMap));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (IOException unused) {
        }
    }

    @Override
    public char[] normalizedPath() {
        if (this.normalizedPath == null) {
            char[] charArray = getPath().toCharArray();
            if (File.separatorChar == '\\') {
                CharOperation.replace(charArray, JavaElement.JEM_ESCAPE, '/');
            }
            this.normalizedPath = CharOperation.subarray(charArray, 0, CharOperation.lastIndexOf('.', charArray));
        }
        return this.normalizedPath;
    }

    @Override
    public void reset() {
        ZipFile zipFile;
        if (this.closeZipFileAtEnd && (zipFile = this.annotationZipFile) != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
            this.annotationZipFile = null;
        }
        if (this.annotationPaths != null) {
            this.annotationPaths = null;
        }
    }

    @Override
    public boolean servesModule(char[] cArr) {
        return getModule(cArr) != null;
    }

    public String toString() {
        return "Classpath for JRT System " + this.file.getPath();
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        if (!isPackage(str, str2)) {
            return null;
        }
        try {
            File file = this.file;
            Set<String> set = this.moduleNamesCache;
            set.getClass();
            IBinaryType readFromModule = ClassFileReader.readFromModule(file, str2, str3, new Yi1(set));
            if (readFromModule != null) {
                if (this.annotationPaths != null) {
                    String substring = str3.substring(0, str3.length() - 6);
                    Iterator<String> it = this.annotationPaths.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            readFromModule = new ExternalAnnotationDecorator(readFromModule, (ExternalAnnotationProvider) null);
                            break;
                        }
                        String next = it.next();
                        try {
                            if (this.annotationZipFile == null) {
                                this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(next, null);
                            }
                            readFromModule = ExternalAnnotationDecorator.create(readFromModule, next, substring, this.annotationZipFile);
                        } catch (IOException unused) {
                        }
                        if (readFromModule.getExternalAnnotationStatus() == BinaryTypeBinding.ExternalAnnotationStatus.TYPE_IS_ANNOTATED) {
                            break;
                        }
                    }
                }
                char[] module = readFromModule.getModule();
                if (module == null && str2 != null) {
                    module = str2.toCharArray();
                }
                return new NameEnvironmentAnswer(readFromModule, fetchAccessRestriction(str3), module);
            }
        } catch (IOException | ClassFormatException unused2) {
        }
        return null;
    }

    public void acceptModule(byte[] bArr, Map<String, IModule> map) {
        ClassFileReader classFileReader;
        if (bArr == null) {
            return;
        }
        try {
            classFileReader = new ClassFileReader(bArr, "module-info.class".toCharArray());
        } catch (ClassFormatException e10) {
            e10.printStackTrace();
            classFileReader = null;
        }
        if (classFileReader != null) {
            acceptModule(classFileReader, map);
        }
    }
}
