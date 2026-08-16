package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.element.Name;

public interface MemberSelectTree extends ExpressionTree {
    ExpressionTree getExpression();

    Name getIdentifier();
}
