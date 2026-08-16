package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.type.Type;
import com.tonyodev.fetch2core.server.FileRequest;
import java.util.Optional;

public class TypeMetaModel extends NodeMetaModel {
    public PropertyMetaModel annotationsPropertyMetaModel;

    public TypeMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, Type.class, FileRequest.FIELD_TYPE, "com.github.javaparser.ast.type", true, false);
    }

    public TypeMetaModel(Optional<BaseNodeMetaModel> superNodeMetaModel, Class<? extends Node> type, String name, String packageName, boolean isAbstract, boolean hasWildcard) {
        super(superNodeMetaModel, type, name, packageName, isAbstract, hasWildcard);
    }
}
