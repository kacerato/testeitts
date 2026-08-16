package org.eclipse.jdt.internal.core.search.matching;

import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.util.ResourceCompilationUnit;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathSourceDirectory extends ClasspathLocation implements IModulePathEntry {
    char[][] fulInclusionPatternChars;
    char[][] fullExclusionPatternChars;
    IContainer sourceFolder;
    SimpleLookupTable missingPackageHolder = new SimpleLookupTable();
    SimpleLookupTable directoryCache = new SimpleLookupTable(5);

    public ClasspathSourceDirectory(IContainer iContainer, char[][] cArr, char[][] cArr2) {
        this.sourceFolder = iContainer;
        this.fullExclusionPatternChars = cArr;
        this.fulInclusionPatternChars = cArr2;
    }

    @Override
    public void cleanup() {
        this.directoryCache = null;
    }

    @Override
    public String debugPathString() {
        return this.sourceFolder.getFullPath().toString();
    }

    public SimpleLookupTable directoryTable(String str) {
        Map<String, IType> map;
        String name;
        int indexOfJavaLikeExtension;
        SimpleLookupTable simpleLookupTable = (SimpleLookupTable) this.directoryCache.get(str);
        if (simpleLookupTable == this.missingPackageHolder) {
            return null;
        }
        if (simpleLookupTable != null) {
            return simpleLookupTable;
        }
        try {
            IContainer findMember = this.sourceFolder.findMember(str);
            if (findMember instanceof IContainer) {
                IResource[] members = findMember.members();
                SimpleLookupTable simpleLookupTable2 = new SimpleLookupTable();
                for (IResource iResource : members) {
                    if (iResource.getType() == 1 && (indexOfJavaLikeExtension = Util.indexOfJavaLikeExtension((name = iResource.getName()))) >= 0 && !org.eclipse.jdt.internal.compiler.util.Util.isExcluded(iResource.getFullPath().toString().toCharArray(), this.fulInclusionPatternChars, this.fullExclusionPatternChars, false)) {
                        simpleLookupTable2.put(name.substring(0, indexOfJavaLikeExtension), iResource);
                    }
                }
                Map<String, Map<String, IType>> secondaryTypes = JavaModelManager.getJavaModelManager().secondaryTypes(JavaCore.create(findMember.getProject()), false, null);
                if (secondaryTypes.size() > 0 && (map = secondaryTypes.get(str.replace('/', '.'))) != null && map.size() > 0) {
                    for (String str2 : map.o()) {
                        IJavaElement parent = map.get(str2).getParent();
                        if (!org.eclipse.jdt.internal.compiler.util.Util.isExcluded(parent.getResource().getFullPath().toString().toCharArray(), this.fulInclusionPatternChars, this.fullExclusionPatternChars, false)) {
                            simpleLookupTable2.put(str2, parent.getResource());
                        }
                    }
                }
                this.directoryCache.put(str, simpleLookupTable2);
                return simpleLookupTable2;
            }
        } catch (CoreException unused) {
        }
        this.directoryCache.put(str, this.missingPackageHolder);
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClasspathSourceDirectory) {
            return this.sourceFolder.equals(((ClasspathSourceDirectory) obj).sourceFolder);
        }
        return false;
    }

    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate) {
        return findClass(str, str2, str3, str4);
    }

    @Override
    public IPath getProjectRelativePath() {
        return this.sourceFolder.getProjectRelativePath();
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        SimpleLookupTable directoryTable = directoryTable(str);
        return directoryTable != null && directoryTable.elementSize > 0;
    }

    public int hashCode() {
        IContainer iContainer = this.sourceFolder;
        return iContainer == null ? super.hashCode() : iContainer.hashCode();
    }

    @Override
    public boolean isPackage(String str, String str2) {
        IModule iModule;
        return (str2 == null || ((iModule = this.module) != null && str2.equals(String.valueOf(iModule.name())))) && directoryTable(str) != null;
    }

    @Override
    public void reset() {
        this.directoryCache = new SimpleLookupTable(5);
    }

    public String toString() {
        return "Source classpath directory " + this.sourceFolder.getFullPath().toString();
    }

    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4) {
        IFile iFile;
        SimpleLookupTable directoryTable = directoryTable(str2);
        if (directoryTable == null || directoryTable.elementSize <= 0 || (iFile = (IFile) directoryTable.get(str)) == null) {
            return null;
        }
        IModule iModule = this.module;
        return new NameEnvironmentAnswer(new ResourceCompilationUnit(iFile, iModule == null ? null : iModule.name()), (AccessRestriction) null);
    }
}
