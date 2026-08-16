package org.eclipse.jdt.core;

import java.io.OutputStream;
import org.eclipse.core.runtime.IProgressMonitor;

public interface ITypeHierarchy {
    void addTypeHierarchyChangedListener(ITypeHierarchyChangedListener iTypeHierarchyChangedListener);

    boolean contains(IType iType);

    boolean exists();

    IType[] getAllClasses();

    IType[] getAllInterfaces();

    IType[] getAllSubtypes(IType iType);

    IType[] getAllSuperInterfaces(IType iType);

    IType[] getAllSuperclasses(IType iType);

    IType[] getAllSupertypes(IType iType);

    IType[] getAllTypes();

    int getCachedFlags(IType iType);

    IType[] getExtendingInterfaces(IType iType);

    IType[] getImplementingClasses(IType iType);

    IType[] getRootClasses();

    IType[] getRootInterfaces();

    IType[] getSubclasses(IType iType);

    IType[] getSubtypes(IType iType);

    IType[] getSuperInterfaces(IType iType);

    IType getSuperclass(IType iType);

    IType[] getSupertypes(IType iType);

    IType getType();

    void refresh(IProgressMonitor iProgressMonitor) throws JavaModelException;

    void removeTypeHierarchyChangedListener(ITypeHierarchyChangedListener iTypeHierarchyChangedListener);

    void store(OutputStream outputStream, IProgressMonitor iProgressMonitor) throws JavaModelException;
}
