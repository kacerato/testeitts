package org.eclipse.jdt.internal.core.nd;

import org.eclipse.jdt.internal.core.nd.field.StructDef;

public interface ITypeFactory<T> {
    T create(Nd nd2, long j10);

    void destruct(Nd nd2, long j10);

    void destructFields(Nd nd2, long j10);

    StructDef.DeletionSemantics getDeletionSemantics();

    Class<?> getElementClass();

    int getRecordSize();

    boolean hasDestructor();

    boolean isReadyForDeletion(Nd nd2, long j10);
}
