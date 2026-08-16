package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.UnparsableStmtMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class UnparsableStmt extends Statement {
    @AllFieldsConstructor
    public UnparsableStmt() {
        this(null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (UnparsableStmt) arg);
    }

    @Override
    public UnparsableStmt asUnparsableStmt() {
        return this;
    }

    @Override
    public Node.Parsedness getParsed() {
        return Node.Parsedness.UNPARSABLE;
    }

    @Override
    public void ifUnparsableStmt(Consumer<UnparsableStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isUnparsableStmt() {
        return true;
    }

    @Override
    public Optional<UnparsableStmt> toUnparsableStmt() {
        return Optional.of(this);
    }

    public UnparsableStmt(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (UnparsableStmt) arg);
    }

    @Override
    public UnparsableStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.unparsableStmtMetaModel;
    }

    @Override
    public UnparsableStmt mo1220clone() {
        return (UnparsableStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
