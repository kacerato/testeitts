package org.openjdk.source.tree;

public interface ImportTree extends Tree {
    Tree getQualifiedIdentifier();

    boolean isStatic();
}
