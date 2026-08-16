package com.github.javaparser.metamodel;

import com.github.javaparser.ast.body.RecordDeclaration;
import java.util.Optional;

public class RecordDeclarationMetaModel extends TypeDeclarationMetaModel {
    public PropertyMetaModel implementedTypesPropertyMetaModel;
    public PropertyMetaModel parametersPropertyMetaModel;
    public PropertyMetaModel receiverParameterPropertyMetaModel;
    public PropertyMetaModel typeParametersPropertyMetaModel;

    public RecordDeclarationMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, RecordDeclaration.class, "RecordDeclaration", "com.github.javaparser.ast.body", false, false);
    }
}
