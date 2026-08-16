package org.eclipse.jdt.internal.core.builder;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Date;
import java.util.Enumeration;
import java.util.function.Predicate;
import java.util.jar.Manifest;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathJar extends ClasspathLocation {
    AccessRuleSet accessRuleSet;
    ZipFile annotationZipFile;
    boolean closeZipFileAtEnd;
    String compliance;
    String externalAnnotationPath;
    private SimpleSet knownPackageNames;
    long lastModified;
    IFile resource;
    ZipFile zipFile;
    String zipFilename;
    protected static SimpleLookupTable PackageCache = new SimpleLookupTable();
    protected static SimpleLookupTable ModuleCache = new SimpleLookupTable();

    public static class PackageCacheEntry {
        long fileSize;
        long lastModified;
        SimpleSet packageSet;

        public PackageCacheEntry(long j10, long j11, SimpleSet simpleSet) {
            this.lastModified = j10;
            this.fileSize = j11;
            this.packageSet = simpleSet;
        }
    }

    public ClasspathJar(IFile iFile, AccessRuleSet accessRuleSet, IPath iPath, boolean z10) {
        this.resource = iFile;
        try {
            URI locationURI = iFile.getLocationURI();
            if (locationURI == null) {
                this.zipFilename = "";
            } else {
                this.zipFilename = Util.toLocalFile(locationURI, null).getPath();
            }
        } catch (CoreException unused) {
            this.zipFilename = "";
        }
        this.zipFile = null;
        this.knownPackageNames = null;
        this.accessRuleSet = accessRuleSet;
        if (iPath != null) {
            this.externalAnnotationPath = iPath.toString();
        }
        this.isOnModulePath = z10;
    }

    public static void addToPackageSet(SimpleSet simpleSet, String str, boolean z10) {
        int length = z10 ? str.length() : str.lastIndexOf(47);
        while (length > 0) {
            String substring = str.substring(0, length);
            if (simpleSet.addIfNotIncluded(substring) == null) {
                return;
            } else {
                length = substring.lastIndexOf(47);
            }
        }
    }

    private boolean scanContent() {
        try {
            if (this.zipFile == null) {
                if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                    System.out.println("(" + ((Object) Thread.currentThread()) + ") [ClasspathJar.isPackage(String)] Creating ZipFile on " + this.zipFilename);
                }
                this.zipFile = new ZipFile(this.zipFilename);
                this.closeZipFileAtEnd = true;
                this.knownPackageNames = findPackageSet();
            } else {
                this.knownPackageNames = findPackageSet();
            }
            return true;
        } catch (Exception unused) {
            this.knownPackageNames = new SimpleSet();
            return false;
        }
    }

    @Override
    public void cleanup() {
        if (this.closeZipFileAtEnd) {
            ZipFile zipFile = this.zipFile;
            if (zipFile != null) {
                try {
                    zipFile.close();
                    if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                        System.out.println("(" + ((Object) Thread.currentThread()) + ") [ClasspathJar.cleanup()] Closed ZipFile on " + this.zipFilename);
                    }
                } catch (IOException e10) {
                    JavaCore.getPlugin().getLog().log(new Status(4, JavaCore.PLUGIN_ID, "Error closing " + this.zipFile.getName(), e10));
                }
                this.zipFile = null;
            }
            ZipFile zipFile2 = this.annotationZipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                    if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                        System.out.println("(" + ((Object) Thread.currentThread()) + ") [ClasspathJar.cleanup()] Closed Annotation ZipFile on " + this.zipFilename);
                    }
                } catch (IOException e11) {
                    JavaCore.getPlugin().getLog().log(new Status(4, JavaCore.PLUGIN_ID, "Error closing " + this.annotationZipFile.getName(), e11));
                }
                this.annotationZipFile = null;
            }
        } else {
            ZipFile zipFile3 = this.zipFile;
            if (zipFile3 != null && JavaModelManager.ZIP_ACCESS_VERBOSE) {
                try {
                    zipFile3.size();
                    System.out.println("(" + ((Object) Thread.currentThread()) + ") [ClasspathJar.cleanup()] ZipFile NOT closed on " + this.zipFilename);
                } catch (IllegalStateException unused) {
                }
            }
        }
        this.module = null;
        this.knownPackageNames = null;
    }

    @Override
    public String debugPathString() {
        long lastModified = lastModified();
        if (lastModified == 0) {
            return this.zipFilename;
        }
        return String.valueOf(this.zipFilename) + '(' + ((Object) new Date(lastModified)) + " : " + lastModified + ')';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClasspathJar)) {
            return false;
        }
        ClasspathJar classpathJar = (ClasspathJar) obj;
        AccessRuleSet accessRuleSet = this.accessRuleSet;
        AccessRuleSet accessRuleSet2 = classpathJar.accessRuleSet;
        return (accessRuleSet == accessRuleSet2 || (accessRuleSet != null && accessRuleSet.equals(accessRuleSet2))) && Util.equalOrNull(this.compliance, classpathJar.compliance) && this.zipFilename.equals(classpathJar.zipFilename) && lastModified() == classpathJar.lastModified() && this.isOnModulePath == classpathJar.isOnModulePath && areAllModuleOptionsEqual(classpathJar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType, org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader] */
    /* JADX WARN: Type inference failed for: r1v5, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate) {
        if (!isPackage(str2, str3)) {
            return null;
        }
        try {
            ?? read = ClassFileReader.read(this.zipFile, str4);
            if (read != 0) {
                IModule iModule = this.module;
                char[] name = iModule == null ? null : iModule.name();
                char[] cArr = read.moduleName;
                if (cArr == null) {
                    read.moduleName = name;
                } else {
                    name = cArr;
                }
                String substring = str4.substring(0, str4.length() - SuffixConstants.SUFFIX_CLASS.length);
                String str5 = this.externalAnnotationPath;
                ExternalAnnotationDecorator externalAnnotationDecorator = read;
                if (str5 != null) {
                    try {
                        if (this.annotationZipFile == null) {
                            this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(str5, null);
                        }
                        read = ExternalAnnotationDecorator.create(read, this.externalAnnotationPath, substring, this.annotationZipFile);
                    } catch (IOException unused) {
                    }
                    BinaryTypeBinding.ExternalAnnotationStatus externalAnnotationStatus = read.getExternalAnnotationStatus();
                    externalAnnotationDecorator = read;
                    if (externalAnnotationStatus == BinaryTypeBinding.ExternalAnnotationStatus.NOT_EEA_CONFIGURED) {
                        externalAnnotationDecorator = new ExternalAnnotationDecorator((IBinaryType) read, (ExternalAnnotationProvider) null);
                    }
                }
                AccessRuleSet accessRuleSet = this.accessRuleSet;
                if (accessRuleSet == null) {
                    return new NameEnvironmentAnswer(externalAnnotationDecorator, (AccessRestriction) null, name);
                }
                return new NameEnvironmentAnswer(externalAnnotationDecorator, accessRuleSet.getViolatedRestriction(substring.toCharArray()), name);
            }
        } catch (IOException | ClassFormatException unused2) {
        }
        return null;
    }

    public SimpleSet findPackageSet() {
        String str = this.zipFilename;
        PackageCacheEntry packageCacheEntry = (PackageCacheEntry) PackageCache.get(str);
        long lastModified = lastModified();
        long length = new File(str).length();
        if (packageCacheEntry != null && packageCacheEntry.lastModified == lastModified && packageCacheEntry.fileSize == length) {
            return packageCacheEntry.packageSet;
        }
        SimpleSet simpleSet = new SimpleSet(41);
        simpleSet.add("");
        readJarContent(simpleSet);
        PackageCache.put(str, new PackageCacheEntry(lastModified, length, simpleSet));
        return simpleSet;
    }

    public Manifest getManifest() {
        ZipEntry entry;
        if (scanContent() && (entry = this.zipFile.getEntry("META-INF/MANIFEST.MF")) != null) {
            try {
                return new Manifest(this.zipFile.getInputStream(entry));
            } catch (IOException unused) {
            }
        }
        return null;
    }

    @Override
    public IModule getModule() {
        if (this.knownPackageNames == null) {
            scanContent();
        }
        return this.module;
    }

    @Override
    public IPath getProjectRelativePath() {
        IFile iFile = this.resource;
        if (iFile == null) {
            return null;
        }
        return iFile.getProjectRelativePath();
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            String name = entries.nextElement().getName();
            if (name.startsWith(str) && name.toLowerCase().endsWith(".class") && name.indexOf(47, str.length() + 1) == -1) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.zipFilename;
        return str == null ? super.hashCode() : str.hashCode();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0047, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IModule initializeModule() {
        ZipFile zipFile;
        ClassFileReader classFileReader;
        ZipFile zipFile2 = null;
        r1 = null;
        r1 = null;
        IBinaryModule iBinaryModule = null;
        try {
            zipFile = new ZipFile(this.zipFilename);
            try {
                try {
                    try {
                        classFileReader = ClassFileReader.read(zipFile, "META-INF/versions/" + this.compliance + "/module-info.class");
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        classFileReader = null;
                    }
                    if (classFileReader == null) {
                        classFileReader = ClassFileReader.read(zipFile, "module-info.class");
                    }
                    if (classFileReader != null) {
                        iBinaryModule = classFileReader.getModuleDeclaration();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    zipFile2 = zipFile;
                    if (zipFile2 != null) {
                        try {
                            zipFile2.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th;
                }
            } catch (IOException | ClassFormatException unused2) {
            }
        } catch (IOException | ClassFormatException unused3) {
            zipFile = null;
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            zipFile.close();
        } catch (IOException unused4) {
            return iBinaryModule;
        }
    }

    @Override
    public boolean isPackage(String str, String str2) {
        IModule iModule;
        if (str2 != null && ((iModule = this.module) == null || !str2.equals(String.valueOf(iModule.name())))) {
            return false;
        }
        if (this.knownPackageNames == null) {
            scanContent();
        }
        return this.knownPackageNames.includes(str);
    }

    public long lastModified() {
        if (this.lastModified == 0) {
            this.lastModified = new File(this.zipFilename).lastModified();
        }
        return this.lastModified;
    }

    public String readJarContent(SimpleSet simpleSet) {
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        String str = null;
        while (entries.hasMoreElements()) {
            String name = entries.nextElement().getName();
            if (!name.startsWith("META-INF/")) {
                if (str == null && name.substring(name.lastIndexOf(47) + 1, name.length()).equalsIgnoreCase("module-info.class")) {
                    str = name;
                }
                addToPackageSet(simpleSet, name, false);
            }
        }
        return str;
    }

    public String toString() {
        String str = "Classpath jar file " + this.zipFilename;
        if (this.accessRuleSet == null) {
            return str;
        }
        return String.valueOf(str) + " with " + ((Object) this.accessRuleSet);
    }

    public ClasspathJar(String str, long j10, AccessRuleSet accessRuleSet, IPath iPath, boolean z10) {
        this.zipFilename = str;
        this.lastModified = j10;
        this.zipFile = null;
        this.knownPackageNames = null;
        this.accessRuleSet = accessRuleSet;
        if (iPath != null) {
            this.externalAnnotationPath = iPath.toString();
        }
        this.isOnModulePath = z10;
    }

    public ClasspathJar(ZipFile zipFile, AccessRuleSet accessRuleSet, IPath iPath, boolean z10) {
        this(zipFile.getName(), accessRuleSet, iPath, z10);
        this.zipFile = zipFile;
        this.closeZipFileAtEnd = true;
    }

    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4) {
        return findClass(str, str2, str3, str4, false, (Predicate<String>) null);
    }

    public ClasspathJar(String str, AccessRuleSet accessRuleSet, IPath iPath, boolean z10) {
        this(str, 0L, accessRuleSet, iPath, z10);
        if (iPath != null) {
            this.externalAnnotationPath = iPath.toString();
        }
    }
}
