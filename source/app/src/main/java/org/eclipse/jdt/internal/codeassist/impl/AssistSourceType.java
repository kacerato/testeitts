package org.eclipse.jdt.internal.codeassist.impl;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.ResolvedSourceType;

public class AssistSourceType extends ResolvedSourceType {
    private Map bindingCache;
    private Map infoCache;
    private boolean isResolved;
    private String uniqueKey;

    public AssistSourceType(JavaElement javaElement, String str, Map map, Map map2) {
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
    public IField getField(String str) {
        return new AssistSourceField(this, str, this.bindingCache, this.infoCache);
    }

    @Override
    public String getFullyQualifiedParameterizedName() throws JavaModelException {
        return isResolved() ? getFullyQualifiedParameterizedName(getFullyQualifiedName('.'), getKey()) : getFullyQualifiedName('.', true);
    }

    @Override
    public IInitializer getInitializer(int i10) {
        return new AssistInitializer(this, i10, this.bindingCache, this.infoCache);
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
                    this.uniqueKey = getKey((IType) this, false);
                } catch (JavaModelException unused) {
                    return null;
                }
            }
        }
        return this.uniqueKey;
    }

    @Override
    public IMethod getMethod(String str, String[] strArr) {
        return new AssistSourceMethod(this, str, strArr, this.bindingCache, this.infoCache);
    }

    @Override
    public IType getType(String str) {
        return new AssistSourceType(this, str, this.bindingCache, this.infoCache);
    }

    @Override
    public ITypeParameter getTypeParameter(String str) {
        return new AssistTypeParameter(this, str, this.infoCache);
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

    @Override
    public IType getType(String str, int i10) {
        AssistSourceType assistSourceType = new AssistSourceType(this, str, this.bindingCache, this.infoCache);
        assistSourceType.occurrenceCount = i10;
        return assistSourceType;
    }
}
