package com.github.javaparser.metamodel;

import com.github.javaparser.ast.modules.ModuleDeclaration;
import java.util.Optional;

public class ModuleDeclarationMetaModel extends NodeMetaModel {
    public PropertyMetaModel annotationsPropertyMetaModel;
    public PropertyMetaModel directivesPropertyMetaModel;
    public PropertyMetaModel isOpenPropertyMetaModel;
    public PropertyMetaModel namePropertyMetaModel;

    public ModuleDeclarationMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ModuleDeclaration.class, "ModuleDeclaration", "com.github.javaparser.ast.modules", false, false);
    }
}
