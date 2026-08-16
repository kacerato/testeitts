package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;

public interface IJavaElementRequestor {
    void acceptField(IField iField);

    void acceptInitializer(IInitializer iInitializer);

    void acceptMemberType(IType iType);

    void acceptMethod(IMethod iMethod);

    void acceptModule(IModuleDescription iModuleDescription);

    void acceptPackageFragment(IPackageFragment iPackageFragment);

    void acceptType(IType iType);

    boolean isCanceled();
}
