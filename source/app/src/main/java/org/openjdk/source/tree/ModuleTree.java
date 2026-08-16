package org.openjdk.source.tree;

import java.util.List;

public interface ModuleTree extends Tree {

    public enum ModuleKind {
        OPEN,
        STRONG
    }

    List<? extends AnnotationTree> getAnnotations();

    List<? extends DirectiveTree> getDirectives();

    ModuleKind getModuleType();

    ExpressionTree getName();
}
