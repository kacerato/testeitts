package com.github.javaparser.metamodel;

import com.github.javaparser.ast.stmt.YieldStmt;
import java.util.Optional;

public class YieldStmtMetaModel extends StatementMetaModel {
    public PropertyMetaModel expressionPropertyMetaModel;

    public YieldStmtMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, YieldStmt.class, "YieldStmt", "com.github.javaparser.ast.stmt", false, false);
    }
}
