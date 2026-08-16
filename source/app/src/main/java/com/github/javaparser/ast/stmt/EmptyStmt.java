package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.EmptyStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class EmptyStmt extends Statement {
    @AllFieldsConstructor
    public EmptyStmt() {
        this(null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (EmptyStmt) arg);
    }

    @Override
    public EmptyStmt asEmptyStmt() {
        return this;
    }

    @Override
    public void ifEmptyStmt(Consumer<EmptyStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isEmptyStmt() {
        return true;
    }

    @Override
    public Optional<EmptyStmt> toEmptyStmt() {
        return Optional.of(this);
    }

    public EmptyStmt(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (EmptyStmt) arg);
    }

    @Override
    public EmptyStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.emptyStmtMetaModel;
    }

    @Override
    public EmptyStmt mo1220clone() {
        return (EmptyStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
