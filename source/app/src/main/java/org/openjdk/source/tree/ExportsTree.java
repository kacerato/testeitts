package org.openjdk.source.tree;

import java.util.List;

public interface ExportsTree extends DirectiveTree {
    List<? extends ExpressionTree> getModuleNames();

    ExpressionTree getPackageName();
}
