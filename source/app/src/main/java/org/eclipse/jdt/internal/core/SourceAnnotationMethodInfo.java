package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IMemberValuePair;

public class SourceAnnotationMethodInfo extends SourceMethodInfo {
    public IMemberValuePair defaultValue;
    public int defaultValueStart = -1;
    public int defaultValueEnd = -1;

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }

    @Override
    public int getModifiers() {
        return super.getModifiers();
    }

    @Override
    public boolean isAnnotationMethod() {
        return true;
    }
}
