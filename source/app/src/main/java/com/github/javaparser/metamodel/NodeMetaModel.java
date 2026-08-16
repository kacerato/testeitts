package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Node;
import java.util.Optional;

public class NodeMetaModel extends BaseNodeMetaModel {
    public PropertyMetaModel commentPropertyMetaModel;

    public NodeMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, Node.class, "Node", "com.github.javaparser.ast", true, false);
    }

    public NodeMetaModel(Optional<BaseNodeMetaModel> superNodeMetaModel, Class<? extends Node> type, String name, String packageName, boolean isAbstract, boolean hasWildcard) {
        super(superNodeMetaModel, type, name, packageName, isAbstract, hasWildcard);
    }
}
