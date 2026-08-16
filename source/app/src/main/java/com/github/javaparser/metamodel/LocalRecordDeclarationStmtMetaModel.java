package com.github.javaparser.metamodel;

import com.github.javaparser.ast.stmt.LocalRecordDeclarationStmt;
import java.util.Optional;

public class LocalRecordDeclarationStmtMetaModel extends StatementMetaModel {
    public PropertyMetaModel recordDeclarationPropertyMetaModel;

    public LocalRecordDeclarationStmtMetaModel(Optional<BaseNodeMetaModel> superBaseNodeMetaModel) {
        super(superBaseNodeMetaModel, LocalRecordDeclarationStmt.class, "LocalRecordDeclarationStmt", "com.github.javaparser.ast.stmt", false, false);
    }
}
