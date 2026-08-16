package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.jar.Manifest;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.util.ManifestAnalyzer;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class ClasspathJar extends ClasspathLocation {
    protected List<String> annotationPaths;
    protected ZipFile annotationZipFile;
    protected boolean closeZipFileAtEnd;
    protected File file;
    protected Set<String> packageCache;
    protected ZipFile zipFile;

    public ClasspathJar(File file, boolean z10, AccessRuleSet accessRuleSet, String str) {
        super(accessRuleSet, str);
        this.file = file;
        this.closeZipFileAtEnd = z10;
    }

    public void acceptModule(ClassFileReader classFileReader) {
        if (classFileReader != null) {
            acceptModule(classFileReader.getModuleDeclaration());
        }
    }

    public void addToPackageCache(String str, boolean z10) {
        int length = z10 ? str.length() : str.lastIndexOf(47);
        while (length > 0) {
            String substring = str.substring(0, length);
            if (this.packageCache.contains(substring)) {
                return;
            }
            this.packageCache.add(substring);
            length = substring.lastIndexOf(47);
        }
    }

    @Override
    public List<FileSystem.Classpath> fetchLinkedJars(FileSystem.ClasspathSectionProblemReporter classpathSectionProblemReporter) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            initialize();
            ArrayList arrayList = new ArrayList();
            ZipEntry entry = this.zipFile.getEntry("META-INF/MANIFEST.MF");
            if (entry != null) {
                inputStream = this.zipFile.getInputStream(entry);
                try {
                    ManifestAnalyzer manifestAnalyzer = new ManifestAnalyzer();
                    boolean analyzeManifestContents = manifestAnalyzer.analyzeManifestContents(inputStream);
                    List calledFileNames = manifestAnalyzer.getCalledFileNames();
                    if (classpathSectionProblemReporter != null) {
                        if (analyzeManifestContents && (manifestAnalyzer.getClasspathSectionsCount() != 1 || calledFileNames != null)) {
                            if (manifestAnalyzer.getClasspathSectionsCount() > 1) {
                                classpathSectionProblemReporter.multipleClasspathSections(getPath());
                            }
                        }
                        classpathSectionProblemReporter.invalidClasspathSection(getPath());
                    }
                    if (calledFileNames != null) {
                        Iterator it = calledFileNames.iterator();
                        String path = getPath();
                        String substring = path.substring(0, path.lastIndexOf(File.separatorChar) + 1);
                        while (it.hasNext()) {
                            arrayList.add(new ClasspathJar(new File(String.valueOf(substring) + ((String) it.next())), this.closeZipFileAtEnd, this.accessRuleSet, this.destinationPath));
                        }
                    }
                    inputStream2 = inputStream;
                } catch (IOException | IllegalArgumentException unused) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            }
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException unused4) {
                }
            }
            return arrayList;
        } catch (IOException | IllegalArgumentException unused5) {
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3) {
        return findClass(cArr, str, str2, str3, false);
    }

    @Override
    public char[][][] findTypeNames(String str, String str2) {
        int lastIndexOf;
        if (!isPackage(str, str2)) {
            return null;
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            String name = entries.nextElement().getName();
            int lastIndexOf2 = name.lastIndexOf(47);
            if (lastIndexOf2 > 0 && str.equals(name.substring(0, lastIndexOf2)) && (lastIndexOf = name.lastIndexOf(46)) != -1) {
                arrayList.add(CharOperation.arrayConcat(CharOperation.splitOn('/', charArray), name.substring(lastIndexOf2 + 1, lastIndexOf).toCharArray()));
            }
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
    public IModule getModule() {
        Manifest manifest;
        ZipEntry entry;
        if (!this.isAutoModule || this.module != null) {
            return this.module;
        }
        try {
            initialize();
            entry = this.zipFile.getEntry("META-INF/MANIFEST.MF");
        } catch (IOException unused) {
        }
        if (entry != null) {
            manifest = new Manifest(this.zipFile.getInputStream(entry));
            IModule createAutomatic = IModule.createAutomatic(this.file.getName(), true, manifest);
            this.module = createAutomatic;
            return createAutomatic;
        }
        manifest = null;
        IModule createAutomatic2 = IModule.createAutomatic(this.file.getName(), true, manifest);
        this.module = createAutomatic2;
        return createAutomatic2;
    }

    @Override
    public synchronized char[][] getModulesDeclaringPackage(String str, String str2) {
        Set<String> set = this.packageCache;
        if (set != null) {
            return singletonModuleNameIf(set.contains(str));
        }
        HashSet hashSet = new HashSet(41);
        this.packageCache = hashSet;
        hashSet.add(Util.EMPTY_STRING);
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            addToPackageCache(entries.nextElement().getName(), false);
        }
        return singletonModuleNameIf(this.packageCache.contains(str));
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
        ZipFile zipFile = this.zipFile;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str));
        sb2.append(ExternalAnnotationProvider.ANNOTATION_FILE_SUFFIX);
        return zipFile.getEntry(sb2.toString()) != null;
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        String str3 = String.valueOf(str) + '/';
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            String name = entries.nextElement().getName();
            if (name.startsWith(str3) && name.length() > str3.length()) {
                String substring = name.substring(str3.length());
                if (substring.indexOf(47) == -1 && substring.toLowerCase().endsWith(".class")) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public void initialize() throws IOException {
        if (this.zipFile == null) {
            this.zipFile = new ZipFile(this.file);
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
        super.reset();
        if (this.closeZipFileAtEnd) {
            ZipFile zipFile = this.zipFile;
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException unused) {
                }
                this.zipFile = null;
            }
            ZipFile zipFile2 = this.annotationZipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException unused2) {
                }
                this.annotationZipFile = null;
            }
        }
        this.packageCache = null;
        this.annotationPaths = null;
    }

    public String toString() {
        return "Classpath for jar file " + this.file.getPath();
    }

    public void acceptModule(byte[] bArr) {
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
        if (classFileReader == null || classFileReader.getModuleDeclaration() == null) {
            return;
        }
        acceptModule(classFileReader);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader] */
    /* JADX WARN: Type inference failed for: r4v4, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r4v5, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        if (!isPackage(str, str2)) {
            return null;
        }
        try {
            ?? read = ClassFileReader.read(this.zipFile, str3);
            if (read != 0) {
                IModule iModule = this.module;
                char[] name = iModule == null ? null : iModule.name();
                char[] cArr2 = read.moduleName;
                if (cArr2 == null) {
                    read.moduleName = name;
                } else {
                    name = cArr2;
                }
                if (this.annotationPaths != null) {
                    String substring = str3.substring(0, str3.length() - 6);
                    Iterator<String> it = this.annotationPaths.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            read = new ExternalAnnotationDecorator((IBinaryType) read, (ExternalAnnotationProvider) null);
                            break;
                        }
                        String next = it.next();
                        try {
                            if (this.annotationZipFile == null) {
                                this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(next, null);
                            }
                            read = ExternalAnnotationDecorator.create(read, next, substring, this.annotationZipFile);
                        } catch (IOException unused) {
                        }
                        if (read.getExternalAnnotationStatus() == BinaryTypeBinding.ExternalAnnotationStatus.TYPE_IS_ANNOTATED) {
                            break;
                        }
                    }
                }
                return new NameEnvironmentAnswer((IBinaryType) read, fetchAccessRestriction(str3), name);
            }
        } catch (IOException | ClassFormatException unused2) {
        }
        return null;
    }
}
