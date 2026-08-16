package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.search.MethodNameMatch;

public class JavaSearchMethodNameMatch extends MethodNameMatch {
    private int accessibility = 0;
    IMethod method;
    int modifiers;

    public JavaSearchMethodNameMatch(IMethod iMethod, int i10) {
        this.method = iMethod;
        this.modifiers = i10;
    }

    @Override
    public int getAccessibility() {
        return this.accessibility;
    }

    @Override
    public IMethod getMethod() {
        return this.method;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    public void setAccessibility(int i10) {
        this.accessibility = i10;
    }

    public String toString() {
        IMethod iMethod = this.method;
        return iMethod == null ? super.toString() : iMethod.toString();
    }
}
