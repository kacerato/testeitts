package com.github.javaparser.metamodel;

import com.github.javaparser.ast.expr.Name;
import java.util.Optional;

public class NameMetaModel extends NodeMetaModel {
    public PropertyMetaModel identifierPropertyMetaModel;
    public PropertyMetaModel qualifierPropertyMetaModel;

    public NameMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, Name.class, "Name", "com.github.javaparser.ast.expr", false, false);
    }
}
