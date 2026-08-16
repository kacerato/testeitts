package org.eclipse.jdt.core.provisional;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.JrtPackageFragmentRoot;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;

public class JavaModelAccess {
    public static IModuleDescription getAutomaticModuleDescription(IJavaElement iJavaElement) throws JavaModelException, IllegalArgumentException {
        int elementType = iJavaElement.getElementType();
        if (elementType == 2) {
            return ((JavaProject) iJavaElement).getAutomaticModuleDescription();
        }
        if (elementType == 3) {
            return ((PackageFragmentRoot) iJavaElement).getAutomaticModuleDescription();
        }
        throw new IllegalArgumentException("Illegal kind of java element: " + iJavaElement.getElementType());
    }

    @Deprecated
    public static String[] getRequiredModules(IModuleDescription iModuleDescription) throws JavaModelException {
        return iModuleDescription.getRequiredModuleNames();
    }

    public static boolean isSystemModule(IModuleDescription iModuleDescription) {
        return ((IPackageFragmentRoot) iModuleDescription.getAncestor(3)) instanceof JrtPackageFragmentRoot;
    }
}
