package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;

public class ProjectEntry implements IModulePathEntry {
    JavaProject project;

    public ProjectEntry(JavaProject javaProject) {
        this.project = javaProject;
    }

    public static boolean representsProject(IModulePathEntry iModulePathEntry, IJavaProject iJavaProject) {
        if (iModulePathEntry instanceof ProjectEntry) {
            return ((ProjectEntry) iModulePathEntry).project.equals(iJavaProject);
        }
        return false;
    }

    @Override
    public IModule getModule() {
        try {
            IAdaptable moduleDescription = this.project.getModuleDescription();
            if (moduleDescription != null) {
                return (IModule) ((JavaElement) moduleDescription).getElementInfo();
            }
            return null;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public char[][] getModulesDeclaringPackage(String str, String str2) {
        IModule module = getModule();
        if (module == null) {
            if (str2 != null) {
                return null;
            }
        } else if (!String.valueOf(module.name()).equals(str2)) {
            return null;
        }
        try {
            if (this.project.findElement(new Path(str.replace('.', '/'))) instanceof IPackageFragment) {
                return module != null ? new char[][]{module.name()} : CharOperation.NO_CHAR_CHAR;
            }
        } catch (JavaModelException unused) {
        }
        return null;
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        try {
            for (IPackageFragmentRoot iPackageFragmentRoot : this.project.getPackageFragmentRoots()) {
                if ((iPackageFragmentRoot instanceof PackageFragmentRoot) && ((PackageFragmentRoot) iPackageFragmentRoot).hasCompilationUnit(str, str2)) {
                    return true;
                }
            }
        } catch (JavaModelException unused) {
        }
        return false;
    }

    @Override
    public boolean isAutomaticModule() {
        return false;
    }
}
