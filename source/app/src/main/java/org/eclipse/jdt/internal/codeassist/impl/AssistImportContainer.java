package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.ImportContainer;

public class AssistImportContainer extends ImportContainer {
    private Map infoCache;

    public AssistImportContainer(CompilationUnit compilationUnit, Map map) {
        super(compilationUnit);
        this.infoCache = map;
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    @Override
    public IImportDeclaration getImport(String str, boolean z10) {
        return new AssistImportDeclaration(this, str, z10, this.infoCache);
    }
}
