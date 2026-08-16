package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.element.Name;

public interface BreakTree extends StatementTree {
    Name getLabel();
}
