package com.github.javaparser.metamodel;

import com.github.javaparser.ast.type.UnknownType;
import java.util.Optional;

public class UnknownTypeMetaModel extends TypeMetaModel {
    public UnknownTypeMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, UnknownType.class, "UnknownType", "com.github.javaparser.ast.type", false, false);
    }
}
