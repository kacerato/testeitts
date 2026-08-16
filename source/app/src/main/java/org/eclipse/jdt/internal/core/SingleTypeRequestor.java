package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;

public class SingleTypeRequestor implements IJavaElementRequestor {
    protected IType element = null;

    @Override
    public void acceptField(IField iField) {
    }

    @Override
    public void acceptInitializer(IInitializer iInitializer) {
    }

    @Override
    public void acceptMemberType(IType iType) {
        this.element = iType;
    }

    @Override
    public void acceptMethod(IMethod iMethod) {
    }

    @Override
    public void acceptModule(IModuleDescription iModuleDescription) {
    }

    @Override
    public void acceptPackageFragment(IPackageFragment iPackageFragment) {
    }

    @Override
    public void acceptType(IType iType) {
        this.element = iType;
    }

    public IType getType() {
        return this.element;
    }

    @Override
    public boolean isCanceled() {
        return this.element != null;
    }

    public void reset() {
        this.element = null;
    }
}
