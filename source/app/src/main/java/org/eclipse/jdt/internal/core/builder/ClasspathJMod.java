package org.eclipse.jdt.internal.core.builder;

import java.io.IOException;
import java.util.Enumeration;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class ClasspathJMod extends ClasspathJar {
    public static char[] CLASSES = "classes".toCharArray();
    public static char[] CLASSES_FOLDER = "classes/".toCharArray();
    private static int MODULE_DESCRIPTOR_NAME_LENGTH = 17;

    public ClasspathJMod(String str, long j10, AccessRuleSet accessRuleSet, IPath iPath) {
        super(str, j10, accessRuleSet, iPath, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType, org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader] */
    /* JADX WARN: Type inference failed for: r3v6, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r3v7, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate) {
        IModule iModule;
        if (!isPackage(str2, str3)) {
            return null;
        }
        if (predicate != null && (iModule = this.module) != null && !predicate.test(String.valueOf(iModule.name()))) {
            return null;
        }
        try {
            String str5 = new String(CharOperation.append(CLASSES_FOLDER, str4.toCharArray()));
            ?? read = ClassFileReader.read(this.zipFile, str5);
            if (read != 0) {
                IModule iModule2 = this.module;
                char[] name = iModule2 == null ? null : iModule2.name();
                char[] cArr = read.moduleName;
                if (cArr == null) {
                    read.moduleName = name;
                } else {
                    name = cArr;
                }
                String substring = str5.substring(0, str5.length() - SuffixConstants.SUFFIX_CLASS.length);
                String str6 = this.externalAnnotationPath;
                if (str6 != null) {
                    try {
                        if (this.annotationZipFile == null) {
                            this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(str6, null);
                        }
                        read = ExternalAnnotationDecorator.create(read, this.externalAnnotationPath, substring, this.annotationZipFile);
                    } catch (IOException unused) {
                    }
                }
                AccessRuleSet accessRuleSet = this.accessRuleSet;
                return accessRuleSet == null ? new NameEnvironmentAnswer((IBinaryType) read, (AccessRestriction) null, name) : new NameEnvironmentAnswer((IBinaryType) read, accessRuleSet.getViolatedRestriction(substring.toCharArray()), name);
            }
        } catch (IOException | ClassFormatException unused2) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r1 == null) goto L20;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IModule initializeModule() {
        ZipFile zipFile;
        Throwable th2;
        IBinaryModule iBinaryModule = null;
        try {
            zipFile = new ZipFile(this.zipFilename);
            try {
                ClassFileReader read = ClassFileReader.read(zipFile, new String(CLASSES_FOLDER) + "module-info.class");
                if (read != null) {
                    iBinaryModule = read.getModuleDeclaration();
                }
            } catch (IOException | ClassFormatException unused) {
            } catch (Throwable th3) {
                th2 = th3;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th2;
            }
        } catch (IOException | ClassFormatException unused3) {
            zipFile = null;
        } catch (Throwable th4) {
            zipFile = null;
            th2 = th4;
        }
        try {
            zipFile.close();
        } catch (IOException unused4) {
            return iBinaryModule;
        }
    }

    @Override
    public String readJarContent(SimpleSet simpleSet) {
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        String str = null;
        while (entries.hasMoreElements()) {
            char[] charArray = entries.nextElement().getName().toCharArray();
            int indexOf = CharOperation.indexOf('/', charArray);
            if (indexOf != -1) {
                if (CharOperation.equals(CLASSES, CharOperation.subarray(charArray, 0, indexOf))) {
                    char[] subarray = CharOperation.subarray(charArray, indexOf + 1, charArray.length);
                    if (str == null && subarray.length == MODULE_DESCRIPTOR_NAME_LENGTH && CharOperation.equals(subarray, "module-info.class".toCharArray())) {
                        str = new String(charArray);
                    }
                    ClasspathJar.addToPackageSet(simpleSet, new String(subarray), false);
                }
            }
        }
        return str;
    }
}
