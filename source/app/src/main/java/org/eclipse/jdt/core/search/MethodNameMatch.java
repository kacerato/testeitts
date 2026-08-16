package org.eclipse.jdt.core.search;

import org.eclipse.jdt.core.IMethod;

public abstract class MethodNameMatch {
    public abstract int getAccessibility();

    public abstract IMethod getMethod();

    public abstract int getModifiers();
}
