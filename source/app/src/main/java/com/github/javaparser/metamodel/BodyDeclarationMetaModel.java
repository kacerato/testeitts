package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.BodyDeclaration;
import java.util.Optional;

public class BodyDeclarationMetaModel extends NodeMetaModel {
    public PropertyMetaModel annotationsPropertyMetaModel;

    public BodyDeclarationMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, BodyDeclaration.class, "BodyDeclaration", "com.github.javaparser.ast.body", true, true);
    }

    public BodyDeclarationMetaModel(Optional<BaseNodeMetaModel> superNodeMetaModel, Class<? extends Node> type, String name, String packageName, boolean isAbstract, boolean hasWildcard) {
        super(superNodeMetaModel, type, name, packageName, isAbstract, hasWildcard);
    }
}
