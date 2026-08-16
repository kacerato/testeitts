package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.TypeParameter;

public class AssistTypeParameter extends TypeParameter {
    private Map infoCache;

    public AssistTypeParameter(JavaElement javaElement, String str, Map map) {
        super(javaElement, str);
        this.infoCache = map;
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.infoCache.get(this);
    }
}
