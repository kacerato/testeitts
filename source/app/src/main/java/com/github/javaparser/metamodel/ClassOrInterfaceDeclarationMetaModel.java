package com.github.javaparser.metamodel;

import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import java.util.Optional;

public class ClassOrInterfaceDeclarationMetaModel extends TypeDeclarationMetaModel {
    public PropertyMetaModel extendedTypesPropertyMetaModel;
    public PropertyMetaModel implementedTypesPropertyMetaModel;
    public PropertyMetaModel isInterfacePropertyMetaModel;
    public PropertyMetaModel permittedTypesPropertyMetaModel;
    public PropertyMetaModel typeParametersPropertyMetaModel;

    public ClassOrInterfaceDeclarationMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ClassOrInterfaceDeclaration.class, "ClassOrInterfaceDeclaration", "com.github.javaparser.ast.body", false, false);
    }
}
