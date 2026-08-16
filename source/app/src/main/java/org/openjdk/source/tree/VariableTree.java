package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.element.Name;

public interface VariableTree extends StatementTree {
    ExpressionTree getInitializer();

    ModifiersTree getModifiers();

    Name getName();

    ExpressionTree getNameExpression();

    Tree getType();
}
