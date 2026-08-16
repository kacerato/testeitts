package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;

public class AssistCompilationUnit extends CompilationUnit {
    private Map bindingCache;
    private Map infoCache;

    public AssistCompilationUnit(ICompilationUnit iCompilationUnit, WorkingCopyOwner workingCopyOwner, Map map, Map map2) {
        super((PackageFragment) iCompilationUnit.getParent(), iCompilationUnit.getElementName(), workingCopyOwner);
        this.bindingCache = map;
        this.infoCache = map2;
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    @Override
    public IImportContainer getImportContainer() {
        return new AssistImportContainer(this, this.infoCache);
    }

    @Override
    public IPackageDeclaration getPackageDeclaration(String str) {
        return new AssistPackageDeclaration(this, str, this.infoCache);
    }

    @Override
    public IType getType(String str) {
        return new AssistSourceType(this, str, this.bindingCache, this.infoCache);
    }

    @Override
    public boolean hasChildren() throws JavaModelException {
        return ((JavaElementInfo) this.infoCache.get(this)).getChildren().length > 0;
    }
}
