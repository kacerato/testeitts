package org.eclipse.jdt.internal.core.builder;

import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.util.Util;

public abstract class ClasspathLocation {
    protected boolean isOnModulePath;
    protected IModule module;
    protected IUpdatableModule.UpdatesByKind updates;
    protected Set<String> limitModuleNames = null;
    protected String patchModuleName = null;

    public static ClasspathLocation forBinaryFolder(IContainer iContainer, boolean z10, AccessRuleSet accessRuleSet, IPath iPath, boolean z11) {
        return new ClasspathDirectory(iContainer, z10, accessRuleSet, iPath, z11);
    }

    public static ClasspathJrt forJrtSystem(String str, AccessRuleSet accessRuleSet, IPath iPath, String str2) throws CoreException {
        return (str2 == null || str2.equals("")) ? new ClasspathJrt(str, accessRuleSet, iPath) : new ClasspathJrtWithReleaseOption(str, accessRuleSet, iPath, str2);
    }

    public static ClasspathLocation forLibrary(String str, long j10, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str2) {
        if (Util.archiveFormat(str) == 1) {
            return new ClasspathJMod(str, j10, accessRuleSet, iPath);
        }
        if (str2 != null && CompilerOptions.versionToJdkLevel(str2) >= ClassFileConstants.JDK9) {
            return new ClasspathMultiReleaseJar(str, j10, accessRuleSet, iPath, z10, str2);
        }
        return new ClasspathJar(str, j10, accessRuleSet, iPath, z10);
    }

    public static ClasspathLocation forSourceFolder(IContainer iContainer, IContainer iContainer2, char[][] cArr, char[][] cArr2, boolean z10) {
        return new ClasspathMultiDirectory(iContainer, iContainer2, cArr, cArr2, z10);
    }

    public boolean areAllModuleOptionsEqual(ClasspathLocation classpathLocation) {
        String str = this.patchModuleName;
        if (str != null) {
            String str2 = classpathLocation.patchModuleName;
            if (str2 == null || !str.equals(str2)) {
                return false;
            }
        } else if (classpathLocation.patchModuleName != null) {
            return false;
        }
        if (this.limitModuleNames != null) {
            Set<String> set = classpathLocation.limitModuleNames;
            if (set == null || set.size() != this.limitModuleNames.size() || !this.limitModuleNames.containsAll(classpathLocation.limitModuleNames)) {
                return false;
            }
        } else if (classpathLocation.limitModuleNames != null) {
            return false;
        }
        IUpdatableModule.UpdatesByKind updatesByKind = this.updates;
        if (updatesByKind == null) {
            return classpathLocation.updates == null;
        }
        if (classpathLocation.updates == null) {
            return false;
        }
        IUpdatableModule.UpdateKind updateKind = IUpdatableModule.UpdateKind.PACKAGE;
        List<Consumer<IUpdatableModule>> list = updatesByKind.getList(updateKind, false);
        List<Consumer<IUpdatableModule>> list2 = classpathLocation.updates.getList(updateKind, false);
        if (list != null) {
            if (list2 == null || list.size() != list2.size() || !list.containsAll(list2)) {
                return false;
            }
        } else if (list2 != null) {
            return false;
        }
        IUpdatableModule.UpdatesByKind updatesByKind2 = this.updates;
        IUpdatableModule.UpdateKind updateKind2 = IUpdatableModule.UpdateKind.MODULE;
        List<Consumer<IUpdatableModule>> list3 = updatesByKind2.getList(updateKind2, false);
        List<Consumer<IUpdatableModule>> list4 = classpathLocation.updates.getList(updateKind2, false);
        return list3 != null ? list4 != null && list3.size() == list4.size() && list3.containsAll(list4) : list4 == null;
    }

    public void cleanup() {
    }

    public abstract String debugPathString();

    public abstract NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4);

    public abstract NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate);

    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10, Predicate<String> predicate) {
        return findClass(new String(cArr), str, str2, str3, z10, predicate);
    }

    public IModule getModule() {
        return this.module;
    }

    public char[][] getModulesDeclaringPackage(String str, String str2) {
        return singletonModuleNameIf(isPackage(str, str2));
    }

    public abstract IPath getProjectRelativePath();

    public abstract boolean hasCompilationUnit(String str, String str2);

    public boolean hasModule() {
        return getModule() != null;
    }

    public boolean isOutputFolder() {
        return false;
    }

    public abstract boolean isPackage(String str, String str2);

    public void reset() {
    }

    public void setModule(IModule iModule) {
        this.module = iModule;
    }

    public char[][] singletonModuleNameIf(boolean z10) {
        if (!z10) {
            return null;
        }
        IModule iModule = this.module;
        return iModule != null ? new char[][]{iModule.name()} : new char[][]{ModuleBinding.UNNAMED};
    }

    public static ClasspathLocation forLibrary(String str, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str2) {
        return forLibrary(str, 0L, accessRuleSet, iPath, z10, str2);
    }

    public static ClasspathLocation forLibrary(IFile iFile, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str) {
        if (CompilerOptions.versionToJdkLevel(str) < ClassFileConstants.JDK9) {
            return new ClasspathJar(iFile, accessRuleSet, iPath, z10);
        }
        return new ClasspathMultiReleaseJar(iFile, accessRuleSet, iPath, z10, str);
    }

    public static ClasspathLocation forLibrary(ZipFile zipFile, AccessRuleSet accessRuleSet, IPath iPath, boolean z10, String str) {
        if (CompilerOptions.versionToJdkLevel(str) < ClassFileConstants.JDK9) {
            return new ClasspathJar(zipFile, accessRuleSet, iPath, z10);
        }
        return new ClasspathMultiReleaseJar(zipFile, accessRuleSet, iPath, z10, str);
    }
}
