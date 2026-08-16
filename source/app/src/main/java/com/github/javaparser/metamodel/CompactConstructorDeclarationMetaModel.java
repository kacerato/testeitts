package com.github.javaparser.metamodel;

import com.github.javaparser.ast.body.CompactConstructorDeclaration;
import java.util.Optional;

public class CompactConstructorDeclarationMetaModel extends BodyDeclarationMetaModel {
    public PropertyMetaModel bodyPropertyMetaModel;
    public PropertyMetaModel modifiersPropertyMetaModel;
    public PropertyMetaModel namePropertyMetaModel;
    public PropertyMetaModel thrownExceptionsPropertyMetaModel;
    public PropertyMetaModel typeParametersPropertyMetaModel;

    public CompactConstructorDeclarationMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, CompactConstructorDeclaration.class, "CompactConstructorDeclaration", "com.github.javaparser.ast.body", false, false);
    }
}
