package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
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
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathJmod extends ClasspathJar {
    public static char[] CLASSES = "classes".toCharArray();
    public static char[] CLASSES_FOLDER = "classes/".toCharArray();

    public ClasspathJmod(File file, boolean z10, AccessRuleSet accessRuleSet, String str) {
        super(file, z10, accessRuleSet, str);
    }

    @Override
    public List<FileSystem.Classpath> fetchLinkedJars(FileSystem.ClasspathSectionProblemReporter classpathSectionProblemReporter) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader] */
    /* JADX WARN: Type inference failed for: r6v5, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r6v6, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        if (!isPackage(str, str2)) {
            return null;
        }
        try {
            String str4 = new String(CharOperation.append(CLASSES_FOLDER, str3.toCharArray()));
            ?? read = ClassFileReader.read(this.zipFile, str4);
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
                    String substring = str4.substring(0, str4.length() - 6);
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
                return new NameEnvironmentAnswer((IBinaryType) read, fetchAccessRestriction(str4), name);
            }
        } catch (IOException | ClassFormatException unused2) {
        }
        return null;
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
            int indexOf = CharOperation.indexOf(CLASSES_FOLDER, name.toCharArray(), false);
            int lastIndexOf2 = name.lastIndexOf(47);
            if (lastIndexOf2 > 0 && str.equals(name.substring(indexOf + 1, lastIndexOf2)) && (lastIndexOf = name.lastIndexOf(46)) != -1) {
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
    public IModule getModule() {
        return this.module;
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
            char[] charArray = entries.nextElement().getName().toCharArray();
            int indexOf = CharOperation.indexOf('/', charArray);
            if (indexOf != -1) {
                if (CharOperation.equals(CLASSES, CharOperation.subarray(charArray, 0, indexOf))) {
                    addToPackageCache(new String(CharOperation.subarray(charArray, indexOf + 1, charArray.length)), false);
                }
            }
        }
        return singletonModuleNameIf(this.packageCache.contains(str));
    }

    @Override
    public boolean hasAnnotationFileFor(String str) {
        String str2 = new String(CharOperation.append(CLASSES_FOLDER, str.toCharArray()));
        ZipFile zipFile = this.zipFile;
        StringBuilder sb2 = new StringBuilder(str2);
        sb2.append(ExternalAnnotationProvider.ANNOTATION_FILE_SUFFIX);
        return zipFile.getEntry(sb2.toString()) != null;
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        String str3 = String.valueOf(str) + '/';
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            char[] charArray = entries.nextElement().getName().toCharArray();
            int indexOf = CharOperation.indexOf('/', charArray);
            if (indexOf != -1) {
                if (CharOperation.equals(CLASSES, CharOperation.subarray(charArray, 0, indexOf))) {
                    String str4 = new String(CharOperation.subarray(charArray, indexOf + 1, charArray.length));
                    if (str4.startsWith(str3) && str4.length() > str3.length()) {
                        String substring = str4.substring(str3.length());
                        if (substring.indexOf(47) == -1 && substring.toLowerCase().endsWith(".class")) {
                            return true;
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    @Override
    public String toString() {
        return "Classpath for JMod file " + this.file.getPath();
    }
}
