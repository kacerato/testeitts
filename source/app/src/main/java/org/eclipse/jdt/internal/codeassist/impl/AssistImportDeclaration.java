package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ImportContainer;
import org.eclipse.jdt.internal.core.ImportDeclaration;

public class AssistImportDeclaration extends ImportDeclaration {
    private Map infoCache;

    public AssistImportDeclaration(ImportContainer importContainer, String str, boolean z10, Map map) {
        super(importContainer, str, z10);
        this.infoCache = map;
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.infoCache.get(this);
    }
}
