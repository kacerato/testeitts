package com.github.javaparser.metamodel;

import com.github.javaparser.ast.modules.ModuleExportsDirective;
import java.util.Optional;

public class ModuleExportsDirectiveMetaModel extends ModuleDirectiveMetaModel {
    public PropertyMetaModel moduleNamesPropertyMetaModel;
    public PropertyMetaModel namePropertyMetaModel;

    public ModuleExportsDirectiveMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ModuleExportsDirective.class, "ModuleExportsDirective", "com.github.javaparser.ast.modules", false, false);
    }
}
