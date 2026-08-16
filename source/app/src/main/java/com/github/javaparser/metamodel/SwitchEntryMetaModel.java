package com.github.javaparser.metamodel;

import com.github.javaparser.ast.stmt.SwitchEntry;
import java.util.Optional;

public class SwitchEntryMetaModel extends NodeMetaModel {
    public PropertyMetaModel guardPropertyMetaModel;
    public PropertyMetaModel isDefaultPropertyMetaModel;
    public PropertyMetaModel labelsPropertyMetaModel;
    public PropertyMetaModel statementsPropertyMetaModel;
    public PropertyMetaModel switchStatementEntryPropertyMetaModel;
    public PropertyMetaModel typePropertyMetaModel;

    public SwitchEntryMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, SwitchEntry.class, "SwitchEntry", "com.github.javaparser.ast.stmt", false, false);
    }
}
