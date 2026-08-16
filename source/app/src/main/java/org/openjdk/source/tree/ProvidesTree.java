package org.openjdk.source.tree;

import java.util.List;

public interface ProvidesTree extends DirectiveTree {
    List<? extends ExpressionTree> getImplementationNames();

    ExpressionTree getServiceName();
}
