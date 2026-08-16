package org.openjdk.source.tree;

import java.util.List;

public interface PackageTree extends Tree {
    List<? extends AnnotationTree> getAnnotations();

    ExpressionTree getPackageName();
}
