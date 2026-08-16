package com.github.javaparser.metamodel;

import com.github.javaparser.ast.modules.ModuleProvidesDirective;
import java.util.Optional;

public class ModuleProvidesDirectiveMetaModel extends ModuleDirectiveMetaModel {
    public PropertyMetaModel namePropertyMetaModel;
    public PropertyMetaModel withPropertyMetaModel;

    public ModuleProvidesDirectiveMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ModuleProvidesDirective.class, "ModuleProvidesDirective", "com.github.javaparser.ast.modules", false, false);
    }
}
