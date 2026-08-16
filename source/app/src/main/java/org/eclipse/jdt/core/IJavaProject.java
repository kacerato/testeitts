package org.eclipse.jdt.core;

import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.eval.IEvaluationContext;

public interface IJavaProject extends IParent, IJavaElement, IOpenable {
    public static final String CLASSPATH_FILE_NAME = ".classpath";

    IClasspathEntry decodeClasspathEntry(String str);

    Set<String> determineModulesOfProjectsWithNonEmptyClasspath() throws JavaModelException;

    String encodeClasspathEntry(IClasspathEntry iClasspathEntry);

    IJavaElement findElement(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IJavaElement findElement(IPath iPath) throws JavaModelException;

    IJavaElement findElement(IPath iPath, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IModuleDescription findModule(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IPackageFragment findPackageFragment(IPath iPath) throws JavaModelException;

    IPackageFragmentRoot findPackageFragmentRoot(IPath iPath) throws JavaModelException;

    IPackageFragmentRoot[] findPackageFragmentRoots(IClasspathEntry iClasspathEntry);

    IType findType(String str) throws JavaModelException;

    IType findType(String str, String str2) throws JavaModelException;

    IType findType(String str, String str2, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IType findType(String str, String str2, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IType findType(String str, String str2, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IType findType(String str, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IType findType(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IType findType(String str, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IPackageFragmentRoot[] findUnfilteredPackageFragmentRoots(IClasspathEntry iClasspathEntry);

    IPackageFragmentRoot[] getAllPackageFragmentRoots() throws JavaModelException;

    IClasspathEntry getClasspathEntryFor(IPath iPath) throws JavaModelException;

    IModuleDescription getModuleDescription() throws JavaModelException;

    Object[] getNonJavaResources() throws JavaModelException;

    String getOption(String str, boolean z10);

    Map<String, String> getOptions(boolean z10);

    IPath getOutputLocation() throws JavaModelException;

    IPackageFragmentRoot getPackageFragmentRoot(String str);

    IPackageFragmentRoot getPackageFragmentRoot(IResource iResource);

    IPackageFragmentRoot[] getPackageFragmentRoots() throws JavaModelException;

    IPackageFragmentRoot[] getPackageFragmentRoots(IClasspathEntry iClasspathEntry);

    IPackageFragment[] getPackageFragments() throws JavaModelException;

    IProject getProject();

    IClasspathEntry[] getRawClasspath() throws JavaModelException;

    IClasspathEntry[] getReferencedClasspathEntries() throws JavaModelException;

    String[] getRequiredProjectNames() throws JavaModelException;

    IClasspathEntry[] getResolvedClasspath(boolean z10) throws JavaModelException;

    boolean hasBuildState();

    boolean hasClasspathCycle(IClasspathEntry[] iClasspathEntryArr);

    boolean isOnClasspath(IResource iResource);

    boolean isOnClasspath(IJavaElement iJavaElement);

    IEvaluationContext newEvaluationContext();

    ITypeHierarchy newTypeHierarchy(IRegion iRegion, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(IRegion iRegion, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(IType iType, IRegion iRegion, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(IType iType, IRegion iRegion, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IPath readOutputLocation();

    IClasspathEntry[] readRawClasspath();

    void setOption(String str, String str2);

    void setOptions(Map<String, String> map);

    void setOutputLocation(IPath iPath, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IPath iPath, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IPath iPath, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, IProgressMonitor iProgressMonitor) throws JavaModelException;
}
