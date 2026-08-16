package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.ResolvedSourceField;

public class AssistSourceField extends ResolvedSourceField {
    private Map bindingCache;
    private Map infoCache;
    private boolean isResolved;
    private String uniqueKey;

    public AssistSourceField(JavaElement javaElement, String str, Map map, Map map2) {
        super(javaElement, str, null);
        this.bindingCache = map;
        this.infoCache = map2;
    }

    @Override
    public IAnnotation getAnnotation(String str) {
        return new AssistAnnotation(this, str, this.infoCache);
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.infoCache.get(this);
    }

    @Override
    public String getKey() {
        if (this.uniqueKey == null) {
            Binding binding = (Binding) this.bindingCache.get(this);
            if (binding != null) {
                this.isResolved = true;
                this.uniqueKey = new String(binding.computeUniqueKey());
            } else {
                this.isResolved = false;
                try {
                    this.uniqueKey = getKey((IField) this, false);
                } catch (JavaModelException unused) {
                    return null;
                }
            }
        }
        return this.uniqueKey;
    }

    @Override
    public IType getType(String str, int i10) {
        AssistSourceType assistSourceType = new AssistSourceType(this, str, this.bindingCache, this.infoCache);
        assistSourceType.occurrenceCount = i10;
        return assistSourceType;
    }

    @Override
    public boolean isResolved() {
        getKey();
        return this.isResolved;
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        super.toStringInfo(i10, stringBuffer, obj, z10 && isResolved());
    }
}
