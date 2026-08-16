package org.eclipse.jdt.internal.core.builder;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
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
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathMultiReleaseJar extends ClasspathJar {
    private static final int META_INF_LENGTH = 18;
    private static final String META_INF_VERSIONS = "META-INF/versions/";
    String[] supportedVersions;

    public ClasspathMultiReleaseJar(IFile iFile, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str) {
        super(iFile, accessRuleSet, iPath, z10);
        this.compliance = str;
        initializeVersions(this);
    }

    private static synchronized void initializeVersions(ClasspathMultiReleaseJar classpathMultiReleaseJar) {
        synchronized (ClasspathMultiReleaseJar.class) {
            if (classpathMultiReleaseJar.zipFile == null) {
                if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                    System.out.println("(" + ((Object) Thread.currentThread()) + ") [ClasspathMultiReleaseJar.initializeVersions(String)] Creating ZipFile on " + classpathMultiReleaseJar.zipFilename);
                }
                try {
                    classpathMultiReleaseJar.zipFile = new ZipFile(classpathMultiReleaseJar.zipFilename);
                    classpathMultiReleaseJar.closeZipFileAtEnd = true;
                } catch (IOException unused) {
                    return;
                }
            }
            ArrayList arrayList = new ArrayList();
            for (int versionToJdkLevel = (int) (CompilerOptions.versionToJdkLevel(classpathMultiReleaseJar.compliance) >> 16); versionToJdkLevel >= 53; versionToJdkLevel--) {
                StringBuilder sb2 = new StringBuilder(META_INF_VERSIONS);
                sb2.append(versionToJdkLevel - 44);
                String sb3 = sb2.toString();
                if (classpathMultiReleaseJar.zipFile.getEntry(sb3) != null) {
                    arrayList.add(sb3);
                }
            }
            classpathMultiReleaseJar.supportedVersions = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        r0 = org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader.read(r16.zipFile, r9);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType, org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader] */
    /* JADX WARN: Type inference failed for: r0v19, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r0v21, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate) {
        String str5;
        StringBuilder sb2;
        ?? read;
        if (!isPackage(str2, str3)) {
            return null;
        }
        for (String str6 : this.supportedVersions) {
            try {
                sb2 = new StringBuilder(META_INF_VERSIONS);
                sb2.append(str6);
                sb2.append("/");
            } catch (IOException | ClassFormatException e10) {
                e = e10;
            }
            try {
                sb2.append(str);
                str5 = sb2.toString();
                try {
                } catch (IOException e11) {
                    e = e11;
                    Util.log(e, "Failed to find class for: " + str5 + " in: " + ((Object) this));
                } catch (ClassFormatException e12) {
                    e = e12;
                    Util.log(e, "Failed to find class for: " + str5 + " in: " + ((Object) this));
                }
            } catch (IOException e13) {
                e = e13;
                str5 = null;
                Util.log(e, "Failed to find class for: " + str5 + " in: " + ((Object) this));
            } catch (ClassFormatException e14) {
                e = e14;
                str5 = null;
                Util.log(e, "Failed to find class for: " + str5 + " in: " + ((Object) this));
            }
            if (this.zipFile.getEntry(str5) != null && read != 0) {
                IModule iModule = this.module;
                char[] name = iModule == null ? null : iModule.name();
                char[] cArr = read.moduleName;
                if (cArr == null) {
                    read.moduleName = name;
                } else {
                    name = cArr;
                }
                try {
                    try {
                        String substring = str4.substring(0, str4.length() - SuffixConstants.SUFFIX_CLASS.length);
                        String str7 = this.externalAnnotationPath;
                        ExternalAnnotationDecorator externalAnnotationDecorator = read;
                        if (str7 != null) {
                            try {
                                if (this.annotationZipFile == null) {
                                    this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(str7, null);
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
                        return accessRuleSet == null ? new NameEnvironmentAnswer(externalAnnotationDecorator, (AccessRestriction) null, name) : new NameEnvironmentAnswer(externalAnnotationDecorator, accessRuleSet.getViolatedRestriction(substring.toCharArray()), name);
                    } catch (IOException e15) {
                        e = e15;
                        Util.log(e, "Failed to find class for: " + str5 + " in: " + ((Object) this));
                    }
                } catch (ClassFormatException e16) {
                    e = e16;
                    Util.log(e, "Failed to find class for: " + str5 + " in: " + ((Object) this));
                }
            }
        }
        return super.findClass(str, str2, str3, str4, z10, predicate);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0050 A[Catch: all -> 0x0039, TryCatch #6 {all -> 0x0039, blocks: (B:5:0x000c, B:9:0x0014, B:41:0x003f, B:14:0x0050, B:16:0x0056), top: B:4:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0056 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #6 {all -> 0x0039, blocks: (B:5:0x000c, B:9:0x0014, B:41:0x003f, B:14:0x0050, B:16:0x0056), top: B:4:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IModule initializeModule() {
        IBinaryModule iBinaryModule;
        ClassFileReader classFileReader;
        Throwable th2 = null;
        try {
            ZipFile zipFile = new ZipFile(this.zipFilename);
            try {
                try {
                    classFileReader = null;
                    for (String str : this.supportedVersions) {
                        try {
                            classFileReader = ClassFileReader.read(zipFile, String.valueOf(str.toString()) + "/module-info.class");
                            if (classFileReader != null) {
                                break;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            Util.log(e, "Failed to initialize module for: " + ((Object) this));
                            if (classFileReader == null) {
                            }
                            if (classFileReader == null) {
                            }
                            zipFile.close();
                            return iBinaryModule;
                        }
                    }
                } catch (Exception e11) {
                    e = e11;
                    classFileReader = null;
                }
                if (classFileReader == null) {
                    classFileReader = ClassFileReader.read(zipFile, "module-info.class");
                }
                iBinaryModule = classFileReader == null ? classFileReader.getModuleDeclaration() : null;
                try {
                    zipFile.close();
                    return iBinaryModule;
                } catch (Throwable th3) {
                    th = th3;
                    if (th2 != null) {
                        throw th;
                    }
                    if (th2 == th) {
                        throw th2;
                    }
                    try {
                        th2.addSuppressed(th);
                        throw th2;
                    } catch (IOException e12) {
                        e = e12;
                        Util.log(e, "Failed to initialize module for: " + ((Object) this));
                        return iBinaryModule;
                    } catch (ClassFormatException e13) {
                        e = e13;
                        Util.log(e, "Failed to initialize module for: " + ((Object) this));
                        return iBinaryModule;
                    }
                }
            } catch (Throwable th4) {
                try {
                    zipFile.close();
                    throw th4;
                } catch (Throwable th5) {
                    th = th5;
                    th2 = th4;
                    iBinaryModule = null;
                    if (th2 != null) {
                    }
                }
            }
        } catch (Throwable th6) {
            th = th6;
            iBinaryModule = null;
        }
    }

    @Override
    public String readJarContent(SimpleSet simpleSet) {
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        String str = null;
        while (entries.hasMoreElements()) {
            String name = entries.nextElement().getName();
            if (name.startsWith(META_INF_VERSIONS)) {
                int length = name.length();
                int i10 = META_INF_LENGTH;
                if (length > i10) {
                    name = name.substring(name.indexOf(47, i10) + 1);
                    if (str == null && name.substring(name.lastIndexOf(47) + 1, name.length()).equalsIgnoreCase("module-info.class")) {
                        str = name;
                    }
                    ClasspathJar.addToPackageSet(simpleSet, name, false);
                }
            }
            if (!name.startsWith("META-INF/")) {
                if (str == null) {
                    str = name;
                }
                ClasspathJar.addToPackageSet(simpleSet, name, false);
            }
        }
        return str;
    }

    public ClasspathMultiReleaseJar(String str, long j10, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str2) {
        super(str, j10, accessRuleSet, iPath, z10);
        this.compliance = str2;
        initializeVersions(this);
    }

    public ClasspathMultiReleaseJar(ZipFile zipFile, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str) {
        this(zipFile.getName(), accessRuleSet, iPath, z10, str);
        this.zipFile = zipFile;
        this.closeZipFileAtEnd = true;
    }

    public ClasspathMultiReleaseJar(String str, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str2) {
        this(str, 0L, accessRuleSet, iPath, z10, str2);
        if (iPath != null) {
            this.externalAnnotationPath = iPath.toString();
        }
    }
}
