package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NameExprMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedValueDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class NameExpr extends Expression implements NodeWithSimpleName<NameExpr>, Resolvable<ResolvedValueDeclaration> {
    private SimpleName name;

    public NameExpr() {
        this(null, new SimpleName());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (NameExpr) arg);
    }

    @Override
    public NameExpr asNameExpr() {
        return this;
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    @Override
    public void ifNameExpr(Consumer<NameExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isNameExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((SimpleName) replacementNode);
        return true;
    }

    @Override
    public Optional<NameExpr> toNameExpr() {
        return Optional.of(this);
    }

    public NameExpr(final String name) {
        this(null, new SimpleName(name));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (NameExpr) arg);
    }

    @Override
    public ResolvedValueDeclaration resolve() {
        return (ResolvedValueDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedValueDeclaration.class);
    }

    @Override
    public NameExpr setName(final SimpleName name) {
        Utils.assertNotNull(name);
        SimpleName simpleName = this.name;
        if (name == simpleName) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, simpleName, name);
        SimpleName simpleName2 = this.name;
        if (simpleName2 != null) {
            simpleName2.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    @AllFieldsConstructor
    public NameExpr(final SimpleName name) {
        this(name.getTokenRange().orElse(null), name);
        setRange(name.getRange().orElse(null));
    }

    @Override
    public NameExprMetaModel getMetaModel() {
        return JavaParserMetaModel.nameExprMetaModel;
    }

    @Override
    public NameExpr mo1220clone() {
        return (NameExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public NameExpr(TokenRange tokenRange, SimpleName name) {
        super(tokenRange);
        setName(name);
        customInitialization();
    }
}
