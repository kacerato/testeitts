package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.PackageDeclaration;

public class AssistPackageDeclaration extends PackageDeclaration {
    private Map infoCache;

    public AssistPackageDeclaration(CompilationUnit compilationUnit, String str, Map map) {
        super(compilationUnit, str);
        this.infoCache = map;
    }

    @Override
    public IAnnotation getAnnotation(String str) {
        return new AssistAnnotation(this, str, this.infoCache);
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.infoCache.get(this);
    }
}
