package com.github.javaparser.metamodel;

import com.github.javaparser.ast.modules.ModuleUsesDirective;
import java.util.Optional;

public class ModuleUsesDirectiveMetaModel extends ModuleDirectiveMetaModel {
    public PropertyMetaModel namePropertyMetaModel;

    public ModuleUsesDirectiveMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ModuleUsesDirective.class, "ModuleUsesDirective", "com.github.javaparser.ast.modules", false, false);
    }
}
