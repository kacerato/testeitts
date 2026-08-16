package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.nodeTypes.NodeWithStatements;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.BlockStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class BlockStmt extends Statement implements NodeWithStatements<BlockStmt> {
    private NodeList<Statement> statements;

    public BlockStmt() {
        this(null, new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (BlockStmt) arg);
    }

    @Override
    public BlockStmt asBlockStmt() {
        return this;
    }

    @Override
    public NodeList<Statement> getStatements() {
        return this.statements;
    }

    @Override
    public void ifBlockStmt(Consumer<BlockStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isBlockStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.statements.size(); i10++) {
            if (this.statements.get(i10) == node) {
                this.statements.remove(i10);
                return true;
            }
        }
        return super.remove(node);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.statements.size(); i10++) {
            if (this.statements.get(i10) == node) {
                this.statements.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public BlockStmt setStatements(final NodeList statements) {
        return setStatements2((NodeList<Statement>) statements);
    }

    @Override
    public Optional<BlockStmt> toBlockStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public BlockStmt(final NodeList<Statement> statements) {
        this(null, statements);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (BlockStmt) arg);
    }

    @Override
    public BlockStmt setStatements2(final NodeList<Statement> statements) {
        Utils.assertNotNull(statements);
        NodeList<Statement> nodeList = this.statements;
        if (statements == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.STATEMENTS, nodeList, statements);
        NodeList<Statement> nodeList2 = this.statements;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.statements = statements;
        setAsParentNodeOf(statements);
        return this;
    }

    public BlockStmt(TokenRange tokenRange, NodeList<Statement> statements) {
        super(tokenRange);
        setStatements2(statements);
        customInitialization();
    }

    @Override
    public BlockStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.blockStmtMetaModel;
    }

    @Override
    public BlockStmt mo1220clone() {
        return (BlockStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
