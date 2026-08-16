package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.modules.ModuleDirective;
import java.util.Optional;

public class ModuleDirectiveMetaModel extends NodeMetaModel {
    public ModuleDirectiveMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ModuleDirective.class, "ModuleDirective", "com.github.javaparser.ast.modules", true, false);
    }

    public ModuleDirectiveMetaModel(Optional<BaseNodeMetaModel> superNodeMetaModel, Class<? extends Node> type, String name, String packageName, boolean isAbstract, boolean hasWildcard) {
        super(superNodeMetaModel, type, name, packageName, isAbstract, hasWildcard);
    }
}
