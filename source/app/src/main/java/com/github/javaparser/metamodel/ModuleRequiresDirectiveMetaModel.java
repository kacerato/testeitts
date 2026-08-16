package com.github.javaparser.metamodel;

import com.github.javaparser.ast.modules.ModuleRequiresDirective;
import java.util.Optional;

public class ModuleRequiresDirectiveMetaModel extends ModuleDirectiveMetaModel {
    public PropertyMetaModel modifiersPropertyMetaModel;
    public PropertyMetaModel namePropertyMetaModel;

    public ModuleRequiresDirectiveMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ModuleRequiresDirective.class, "ModuleRequiresDirective", "com.github.javaparser.ast.modules", false, false);
    }
}
