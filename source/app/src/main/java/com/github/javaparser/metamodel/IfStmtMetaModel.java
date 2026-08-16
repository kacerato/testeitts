package com.github.javaparser.metamodel;

import com.github.javaparser.ast.stmt.IfStmt;
import java.util.Optional;

public class IfStmtMetaModel extends StatementMetaModel {
    public PropertyMetaModel cascadingIfStmtPropertyMetaModel;
    public PropertyMetaModel conditionPropertyMetaModel;
    public PropertyMetaModel elseBlockPropertyMetaModel;
    public PropertyMetaModel elseBranchPropertyMetaModel;
    public PropertyMetaModel elseStmtPropertyMetaModel;
    public PropertyMetaModel thenBlockPropertyMetaModel;
    public PropertyMetaModel thenStmtPropertyMetaModel;

    public IfStmtMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, IfStmt.class, "IfStmt", "com.github.javaparser.ast.stmt", false, false);
    }
}
