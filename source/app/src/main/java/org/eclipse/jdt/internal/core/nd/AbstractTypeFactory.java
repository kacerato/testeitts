package org.eclipse.jdt.internal.core.nd;

import org.eclipse.jdt.internal.core.nd.field.StructDef;

public abstract class AbstractTypeFactory<T> implements ITypeFactory<T> {
    @Override
    public void destruct(Nd nd2, long j10) {
    }

    @Override
    public void destructFields(Nd nd2, long j10) {
    }

    @Override
    public StructDef.DeletionSemantics getDeletionSemantics() {
        return StructDef.DeletionSemantics.EXPLICIT;
    }

    @Override
    public boolean hasDestructor() {
        return false;
    }

    @Override
    public boolean isReadyForDeletion(Nd nd2, long j10) {
        return false;
    }
}
