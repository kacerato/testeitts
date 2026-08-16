package com.github.javaparser.metamodel;

import com.github.javaparser.ast.body.FieldDeclaration;
import java.util.Optional;

public class FieldDeclarationMetaModel extends BodyDeclarationMetaModel {
    public PropertyMetaModel maximumCommonTypePropertyMetaModel;
    public PropertyMetaModel modifiersPropertyMetaModel;
    public PropertyMetaModel variablesPropertyMetaModel;

    public FieldDeclarationMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, FieldDeclaration.class, "FieldDeclaration", "com.github.javaparser.ast.body", false, false);
    }
}
