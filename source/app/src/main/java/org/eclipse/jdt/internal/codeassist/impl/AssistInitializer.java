package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.JavaElement;

public class AssistInitializer extends Initializer {
    private Map bindingCache;
    private Map infoCache;

    public AssistInitializer(JavaElement javaElement, int i10, Map map, Map map2) {
        super(javaElement, i10);
        this.bindingCache = map;
        this.infoCache = map2;
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    @Override
    public IType getType(String str, int i10) {
        AssistSourceType assistSourceType = new AssistSourceType(this, str, this.bindingCache, this.infoCache);
        assistSourceType.occurrenceCount = i10;
        return assistSourceType;
    }
}
