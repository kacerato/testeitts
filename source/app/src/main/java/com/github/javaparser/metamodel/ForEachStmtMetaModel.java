package com.github.javaparser.metamodel;

import com.github.javaparser.ast.stmt.ForEachStmt;
import java.util.Optional;

public class ForEachStmtMetaModel extends StatementMetaModel {
    public PropertyMetaModel bodyPropertyMetaModel;
    public PropertyMetaModel iterablePropertyMetaModel;
    public PropertyMetaModel variablePropertyMetaModel;

    public ForEachStmtMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, ForEachStmt.class, "ForEachStmt", "com.github.javaparser.ast.stmt", false, false);
    }
}
