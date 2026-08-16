package org.openjdk.source.tree;

public interface RequiresTree extends DirectiveTree {
    ExpressionTree getModuleName();

    boolean isStatic();

    boolean isTransitive();
}
