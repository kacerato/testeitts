package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.element.Name;

public interface LabeledStatementTree extends StatementTree {
    Name getLabel();

    StatementTree getStatement();
}
