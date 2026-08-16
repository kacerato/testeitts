package org.eclipse.jdt.internal.core.builder;

import java.io.IOException;
import java.util.function.Predicate;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathDirectory extends ClasspathLocation {
    AccessRuleSet accessRuleSet;
    ZipFile annotationZipFile;
    IContainer binaryFolder;
    SimpleLookupTable directoryCache;
    String externalAnnotationPath;
    boolean isOutputFolder;
    String[] missingPackageHolder = new String[1];

    public ClasspathDirectory(IContainer iContainer, boolean z10, AccessRuleSet accessRuleSet, IPath iPath, boolean z11) {
        boolean z12 = true;
        this.binaryFolder = iContainer;
        if (!z10 && !iContainer.getProjectRelativePath().isEmpty()) {
            z12 = false;
        }
        this.isOutputFolder = z12;
        this.directoryCache = new SimpleLookupTable(5);
        this.accessRuleSet = accessRuleSet;
        if (iPath != null) {
            this.externalAnnotationPath = iPath.toOSString();
        }
        this.isOnModulePath = z11;
    }

    @Override
    public void cleanup() {
        ZipFile zipFile = this.annotationZipFile;
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
            this.annotationZipFile = null;
        }
        this.directoryCache = null;
    }

    @Override
    public String debugPathString() {
        return this.binaryFolder.getFullPath().toString();
    }

    public String[] directoryList(String str) {
        String[] strArr = (String[]) this.directoryCache.get(str);
        if (strArr == this.missingPackageHolder) {
            return null;
        }
        if (strArr != null) {
            return strArr;
        }
        try {
            IContainer findMember = this.binaryFolder.findMember(str);
            if (findMember instanceof IContainer) {
                IResource[] members = findMember.members();
                int length = members.length;
                String[] strArr2 = new String[length];
                int i10 = 0;
                for (IResource iResource : members) {
                    String name = iResource.getName();
                    if (iResource.getType() == 1 && Util.isClassFileName(name)) {
                        int i11 = i10 + 1;
                        strArr2[i10] = name;
                        i10 = i11;
                    }
                }
                if (i10 < length) {
                    String[] strArr3 = new String[i10];
                    System.arraycopy(strArr2, 0, strArr3, 0, i10);
                    strArr2 = strArr3;
                }
                this.directoryCache.put(str, strArr2);
                return strArr2;
            }
        } catch (CoreException unused) {
        }
        this.directoryCache.put(str, this.missingPackageHolder);
        return null;
    }

    public boolean doesFileExist(String str, String str2, String str3) {
        String[] directoryList = directoryList(str2);
        if (directoryList == null) {
            return false;
        }
        int length = directoryList.length;
        do {
            length--;
            if (length < 0) {
                return false;
            }
        } while (!str.equals(directoryList[length]));
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClasspathDirectory)) {
            return false;
        }
        ClasspathDirectory classpathDirectory = (ClasspathDirectory) obj;
        AccessRuleSet accessRuleSet = this.accessRuleSet;
        AccessRuleSet accessRuleSet2 = classpathDirectory.accessRuleSet;
        return (accessRuleSet == accessRuleSet2 || (accessRuleSet != null && accessRuleSet.equals(accessRuleSet2))) && this.isOnModulePath == classpathDirectory.isOnModulePath && this.binaryFolder.equals(classpathDirectory.binaryFolder) && areAllModuleOptionsEqual(classpathDirectory);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType, org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader] */
    /* JADX WARN: Type inference failed for: r1v6, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate) {
        if (!doesFileExist(str, str2, str4)) {
            return null;
        }
        try {
            ?? newClassFileReader = org.eclipse.jdt.internal.core.util.Util.newClassFileReader(this.binaryFolder.getFile(new Path(str4)));
            if (newClassFileReader == 0) {
                return null;
            }
            IModule iModule = this.module;
            char[] name = iModule == null ? null : iModule.name();
            char[] cArr = newClassFileReader.moduleName;
            if (cArr == null) {
                newClassFileReader.moduleName = name;
            } else {
                name = cArr;
            }
            String substring = str4.substring(0, str4.length() - SuffixConstants.SUFFIX_CLASS.length);
            String str5 = this.externalAnnotationPath;
            if (str5 != null) {
                try {
                    if (this.annotationZipFile == null) {
                        this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(str5, null);
                    }
                    newClassFileReader = ExternalAnnotationDecorator.create(newClassFileReader, this.externalAnnotationPath, substring, this.annotationZipFile);
                } catch (IOException unused) {
                }
            }
            AccessRuleSet accessRuleSet = this.accessRuleSet;
            if (accessRuleSet == null) {
                return this.module == null ? new NameEnvironmentAnswer((IBinaryType) newClassFileReader, (AccessRestriction) null) : new NameEnvironmentAnswer((IBinaryType) newClassFileReader, (AccessRestriction) null, name);
            }
            return new NameEnvironmentAnswer((IBinaryType) newClassFileReader, accessRuleSet.getViolatedRestriction(substring.toCharArray()), name);
        } catch (CoreException | IOException | ClassFormatException unused2) {
            return null;
        }
    }

    @Override
    public IPath getProjectRelativePath() {
        return this.binaryFolder.getProjectRelativePath();
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        String[] directoryList = directoryList(str);
        if (directoryList != null) {
            for (String str3 : directoryList) {
                String lowerCase = str3.toLowerCase();
                if (lowerCase.endsWith(".class") || lowerCase.endsWith(".java")) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        IContainer iContainer = this.binaryFolder;
        return iContainer == null ? super.hashCode() : iContainer.hashCode();
    }

    public IModule initializeModule() {
        try {
            IResource[] members = this.binaryFolder.members();
            if (members == null) {
                return null;
            }
            int length = members.length;
            for (int i10 = 0; i10 < length; i10++) {
                IResource iResource = members[i10];
                String name = iResource.getName();
                if (iResource.getType() == 1 && Util.isClassFileName(name) && name.equalsIgnoreCase("module-info.class")) {
                    try {
                        return org.eclipse.jdt.internal.core.util.Util.newClassFileReader(iResource).getModuleDeclaration();
                    } catch (IOException | ClassFormatException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            return null;
        } catch (CoreException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean isExcluded(IResource iResource) {
        return false;
    }

    @Override
    public boolean isOutputFolder() {
        return this.isOutputFolder;
    }

    @Override
    public boolean isPackage(String str, String str2) {
        IModule iModule;
        return (str2 == null || ((iModule = this.module) != null && str2.equals(String.valueOf(iModule.name())))) && directoryList(str) != null;
    }

    @Override
    public void reset() {
        this.directoryCache = new SimpleLookupTable(5);
    }

    public String toString() {
        String str = "Binary classpath directory " + this.binaryFolder.getFullPath().toString();
        if (this.accessRuleSet == null) {
            return str;
        }
        return String.valueOf(str) + " with " + ((Object) this.accessRuleSet);
    }

    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4) {
        return findClass(str, str2, str3, str4, false, (Predicate<String>) null);
    }
}
