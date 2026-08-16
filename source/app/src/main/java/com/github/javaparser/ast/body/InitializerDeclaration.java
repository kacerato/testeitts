package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithBlockStmt;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.InitializerDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class InitializerDeclaration extends BodyDeclaration<InitializerDeclaration> implements NodeWithJavadoc<InitializerDeclaration>, NodeWithBlockStmt<InitializerDeclaration> {
    private BlockStmt body;
    private boolean isStatic;

    public InitializerDeclaration() {
        this(null, false, new BlockStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (InitializerDeclaration) arg);
    }

    @Override
    public InitializerDeclaration asInitializerDeclaration() {
        return this;
    }

    @Override
    public BlockStmt getBody() {
        return this.body;
    }

    @Override
    public void ifInitializerDeclaration(Consumer<InitializerDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isInitializerDeclaration() {
        return true;
    }

    public boolean isStatic() {
        return this.isStatic;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.body) {
            return super.replace(node, replacementNode);
        }
        setBody((BlockStmt) replacementNode);
        return true;
    }

    public InitializerDeclaration setStatic(final boolean isStatic) {
        boolean z10 = this.isStatic;
        if (isStatic == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.STATIC, Boolean.valueOf(z10), Boolean.valueOf(isStatic));
        this.isStatic = isStatic;
        return this;
    }

    @Override
    public Optional<InitializerDeclaration> toInitializerDeclaration() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public InitializerDeclaration(boolean isStatic, BlockStmt body) {
        this(null, isStatic, body);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (InitializerDeclaration) arg);
    }

    @Override
    public InitializerDeclaration setBody(final BlockStmt body) {
        Utils.assertNotNull(body);
        BlockStmt blockStmt = this.body;
        if (body == blockStmt) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.BODY, blockStmt, body);
        BlockStmt blockStmt2 = this.body;
        if (blockStmt2 != null) {
            blockStmt2.setParentNode((Node) null);
        }
        this.body = body;
        setAsParentNodeOf(body);
        return this;
    }

    public InitializerDeclaration(TokenRange tokenRange, boolean isStatic, BlockStmt body) {
        super(tokenRange);
        setStatic(isStatic);
        setBody(body);
        customInitialization();
    }

    @Override
    public InitializerDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.initializerDeclarationMetaModel;
    }

    @Override
    public InitializerDeclaration mo1220clone() {
        return (InitializerDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
