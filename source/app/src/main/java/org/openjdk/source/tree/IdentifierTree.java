package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.element.Name;

public interface IdentifierTree extends ExpressionTree {
    Name getName();
}
