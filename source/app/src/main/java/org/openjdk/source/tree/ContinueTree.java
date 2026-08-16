package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.element.Name;

public interface ContinueTree extends StatementTree {
    Name getLabel();
}
