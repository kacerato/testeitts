package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.WorkingCopyOwner;

public class BufferFactoryWrapper extends WorkingCopyOwner {
    public IBufferFactory factory;

    private BufferFactoryWrapper(IBufferFactory iBufferFactory) {
        this.factory = iBufferFactory;
    }

    public static WorkingCopyOwner create(IBufferFactory iBufferFactory) {
        return new BufferFactoryWrapper(iBufferFactory);
    }

    @Override
    public IBuffer createBuffer(ICompilationUnit iCompilationUnit) {
        IBufferFactory iBufferFactory = this.factory;
        return iBufferFactory == null ? super.createBuffer(iCompilationUnit) : iBufferFactory.createBuffer(iCompilationUnit);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BufferFactoryWrapper)) {
            return false;
        }
        BufferFactoryWrapper bufferFactoryWrapper = (BufferFactoryWrapper) obj;
        IBufferFactory iBufferFactory = this.factory;
        return iBufferFactory == null ? bufferFactoryWrapper.factory == null : iBufferFactory.equals(bufferFactoryWrapper.factory);
    }

    public int hashCode() {
        IBufferFactory iBufferFactory = this.factory;
        if (iBufferFactory == null) {
            return 0;
        }
        return iBufferFactory.hashCode();
    }

    public String toString() {
        return "FactoryWrapper for " + ((Object) this.factory);
    }
}
