package org.eclipse.jdt.core.util;

public interface IConstantPoolEntry2 extends IConstantPoolEntry {
    int getBootstrapMethodAttributeIndex();

    int getDescriptorIndex();

    int getReferenceIndex();

    int getReferenceKind();
}
