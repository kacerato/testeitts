package org.openjdk.source.tree;

import java.util.List;

public interface AnnotationTree extends ExpressionTree {
    Tree getAnnotationType();

    List<? extends ExpressionTree> getArguments();
}
