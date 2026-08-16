package org.openjdk.source.tree;

import java.util.List;

public interface OpensTree extends DirectiveTree {
    List<? extends ExpressionTree> getModuleNames();

    ExpressionTree getPackageName();
}
