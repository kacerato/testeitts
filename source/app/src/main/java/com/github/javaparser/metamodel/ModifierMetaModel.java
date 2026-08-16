package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Modifier;
import java.util.Optional;

public class ModifierMetaModel extends NodeMetaModel {
    public PropertyMetaModel keywordPropertyMetaModel;

    public ModifierMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, Modifier.class, "Modifier", "com.github.javaparser.ast", false, false);
    }
}
