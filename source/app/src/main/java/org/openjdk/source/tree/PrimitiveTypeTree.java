package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.type.TypeKind;

public interface PrimitiveTypeTree extends Tree {
    TypeKind getPrimitiveTypeKind();
}
