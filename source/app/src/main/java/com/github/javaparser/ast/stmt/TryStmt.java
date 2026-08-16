package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.TryStmtMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class TryStmt extends Statement {
    private NodeList<CatchClause> catchClauses;

    @OptionalProperty
    private BlockStmt finallyBlock;
    private NodeList<Expression> resources;
    private BlockStmt tryBlock;

    public TryStmt() {
        this(null, new NodeList(), new BlockStmt(), new NodeList(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (TryStmt) arg);
    }

    @Override
    public TryStmt asTryStmt() {
        return this;
    }

    public NodeList<CatchClause> getCatchClauses() {
        return this.catchClauses;
    }

    public Optional<BlockStmt> getFinallyBlock() {
        return Optional.ofNullable(this.finallyBlock);
    }

    public NodeList<Expression> getResources() {
        return this.resources;
    }

    public BlockStmt getTryBlock() {
        return this.tryBlock;
    }

    @Override
    public void ifTryStmt(Consumer<TryStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isTryStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.catchClauses.size(); i10++) {
            if (this.catchClauses.get(i10) == node) {
                this.catchClauses.remove(i10);
                return true;
            }
        }
        BlockStmt blockStmt = this.finallyBlock;
        if (blockStmt != null && node == blockStmt) {
            removeFinallyBlock();
            return true;
        }
        for (int i11 = 0; i11 < this.resources.size(); i11++) {
            if (this.resources.get(i11) == node) {
                this.resources.remove(i11);
                return true;
            }
        }
        return super.remove(node);
    }

    public TryStmt removeFinallyBlock() {
        return setFinallyBlock(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.catchClauses.size(); i10++) {
            if (this.catchClauses.get(i10) == node) {
                this.catchClauses.set(i10, (int) replacementNode);
                return true;
            }
        }
        BlockStmt blockStmt = this.finallyBlock;
        if (blockStmt != null && node == blockStmt) {
            setFinallyBlock((BlockStmt) replacementNode);
            return true;
        }
        for (int i11 = 0; i11 < this.resources.size(); i11++) {
            if (this.resources.get(i11) == node) {
                this.resources.set(i11, (int) replacementNode);
                return true;
            }
        }
        if (node != this.tryBlock) {
            return super.replace(node, replacementNode);
        }
        setTryBlock((BlockStmt) replacementNode);
        return true;
    }

    public TryStmt setCatchClauses(final NodeList<CatchClause> catchClauses) {
        Utils.assertNotNull(catchClauses);
        NodeList<CatchClause> nodeList = this.catchClauses;
        if (catchClauses == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.CATCH_CLAUSES, nodeList, catchClauses);
        NodeList<CatchClause> nodeList2 = this.catchClauses;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.catchClauses = catchClauses;
        setAsParentNodeOf(catchClauses);
        return this;
    }

    public TryStmt setFinallyBlock(final BlockStmt finallyBlock) {
        BlockStmt blockStmt = this.finallyBlock;
        if (finallyBlock == blockStmt) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.FINALLY_BLOCK, blockStmt, finallyBlock);
        BlockStmt blockStmt2 = this.finallyBlock;
        if (blockStmt2 != null) {
            blockStmt2.setParentNode((Node) null);
        }
        this.finallyBlock = finallyBlock;
        setAsParentNodeOf(finallyBlock);
        return this;
    }

    public TryStmt setResources(final NodeList<Expression> resources) {
        Utils.assertNotNull(resources);
        NodeList<Expression> nodeList = this.resources;
        if (resources == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.RESOURCES, nodeList, resources);
        NodeList<Expression> nodeList2 = this.resources;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.resources = resources;
        setAsParentNodeOf(resources);
        return this;
    }

    public TryStmt setTryBlock(final BlockStmt tryBlock) {
        Utils.assertNotNull(tryBlock);
        BlockStmt blockStmt = this.tryBlock;
        if (tryBlock == blockStmt) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TRY_BLOCK, blockStmt, tryBlock);
        BlockStmt blockStmt2 = this.tryBlock;
        if (blockStmt2 != null) {
            blockStmt2.setParentNode((Node) null);
        }
        this.tryBlock = tryBlock;
        setAsParentNodeOf(tryBlock);
        return this;
    }

    @Override
    public Optional<TryStmt> toTryStmt() {
        return Optional.of(this);
    }

    public TryStmt(final BlockStmt tryBlock, final NodeList<CatchClause> catchClauses, final BlockStmt finallyBlock) {
        this(null, new NodeList(), tryBlock, catchClauses, finallyBlock);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (TryStmt) arg);
    }

    @AllFieldsConstructor
    public TryStmt(NodeList<Expression> resources, final BlockStmt tryBlock, final NodeList<CatchClause> catchClauses, final BlockStmt finallyBlock) {
        this(null, resources, tryBlock, catchClauses, finallyBlock);
    }

    @Override
    public TryStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.tryStmtMetaModel;
    }

    public TryStmt(TokenRange tokenRange, NodeList<Expression> resources, BlockStmt tryBlock, NodeList<CatchClause> catchClauses, BlockStmt finallyBlock) {
        super(tokenRange);
        setResources(resources);
        setTryBlock(tryBlock);
        setCatchClauses(catchClauses);
        setFinallyBlock(finallyBlock);
        customInitialization();
    }

    @Override
    public TryStmt mo1220clone() {
        return (TryStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
