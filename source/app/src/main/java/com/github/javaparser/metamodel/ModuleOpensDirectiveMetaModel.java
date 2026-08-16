package com.github.javaparser.metamodel;

import com.github.javaparser.ast.modules.ModuleOpensDirective;
import java.util.Optional;

public class ModuleOpensDirectiveMetaModel extends ModuleDirectiveMetaModel {
    public PropertyMetaModel moduleNamesPropertyMetaModel;
    public PropertyMetaModel namePropertyMetaModel;

    public ModuleOpensDirectiveMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ModuleOpensDirective.class, "ModuleOpensDirective", "com.github.javaparser.ast.modules", false, false);
    }
}
