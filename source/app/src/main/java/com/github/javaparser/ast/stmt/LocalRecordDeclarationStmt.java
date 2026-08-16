package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LocalRecordDeclarationStmtMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class LocalRecordDeclarationStmt extends Statement {
    private RecordDeclaration recordDeclaration;

    public LocalRecordDeclarationStmt() {
        this(null, new RecordDeclaration());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (LocalRecordDeclarationStmt) arg);
    }

    @Override
    public LocalRecordDeclarationStmt asLocalRecordDeclarationStmt() {
        return this;
    }

    public RecordDeclaration getRecordDeclaration() {
        return this.recordDeclaration;
    }

    @Override
    public void ifLocalRecordDeclarationStmt(Consumer<LocalRecordDeclarationStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isLocalRecordDeclarationStmt() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.recordDeclaration) {
            return super.replace(node, replacementNode);
        }
        setRecordDeclaration((RecordDeclaration) replacementNode);
        return true;
    }

    public LocalRecordDeclarationStmt setRecordDeclaration(final RecordDeclaration recordDeclaration) {
        Utils.assertNotNull(recordDeclaration);
        RecordDeclaration recordDeclaration2 = this.recordDeclaration;
        if (recordDeclaration == recordDeclaration2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.RECORD_DECLARATION, recordDeclaration2, recordDeclaration);
        RecordDeclaration recordDeclaration3 = this.recordDeclaration;
        if (recordDeclaration3 != null) {
            recordDeclaration3.setParentNode((Node) null);
        }
        this.recordDeclaration = recordDeclaration;
        setAsParentNodeOf(recordDeclaration);
        return this;
    }

    @Override
    public Optional<LocalRecordDeclarationStmt> toLocalRecordDeclarationStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public LocalRecordDeclarationStmt(final RecordDeclaration recordDeclaration) {
        this(null, recordDeclaration);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (LocalRecordDeclarationStmt) arg);
    }

    public LocalRecordDeclarationStmt(TokenRange tokenRange, RecordDeclaration recordDeclaration) {
        super(tokenRange);
        setRecordDeclaration(recordDeclaration);
        customInitialization();
    }

    @Override
    public LocalRecordDeclarationStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.localRecordDeclarationStmtMetaModel;
    }

    @Override
    public LocalRecordDeclarationStmt mo1220clone() {
        return (LocalRecordDeclarationStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
