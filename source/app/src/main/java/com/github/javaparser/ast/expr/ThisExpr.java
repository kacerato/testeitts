package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.ThisExprMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedTypeDeclaration;
import java.util.Optional;
import java.util.function.Consumer;

public class ThisExpr extends Expression implements Resolvable<ResolvedTypeDeclaration> {

    @OptionalProperty
    private Name typeName;

    public ThisExpr() {
        this(null, null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ThisExpr) arg);
    }

    @Override
    public ThisExpr asThisExpr() {
        return this;
    }

    public Optional<Name> getTypeName() {
        return Optional.ofNullable(this.typeName);
    }

    @Override
    public void ifThisExpr(Consumer<ThisExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isThisExpr() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Name name = this.typeName;
        if (name == null || node != name) {
            return super.remove(node);
        }
        removeTypeName();
        return true;
    }

    public ThisExpr removeClassName() {
        return setTypeName(null);
    }

    public ThisExpr removeTypeName() {
        return setTypeName(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        Name name = this.typeName;
        if (name == null || node != name) {
            return super.replace(node, replacementNode);
        }
        setTypeName((Name) replacementNode);
        return true;
    }

    public ThisExpr setTypeName(final Name typeName) {
        Name name = this.typeName;
        if (typeName == name) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE_NAME, name, typeName);
        Name name2 = this.typeName;
        if (name2 != null) {
            name2.setParentNode((Node) null);
        }
        this.typeName = typeName;
        setAsParentNodeOf(typeName);
        return this;
    }

    @Override
    public Optional<ThisExpr> toThisExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ThisExpr(final Name typeName) {
        this(null, typeName);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ThisExpr) arg);
    }

    @Override
    public ResolvedTypeDeclaration resolve() {
        return (ResolvedTypeDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedTypeDeclaration.class);
    }

    public ThisExpr(TokenRange tokenRange, Name typeName) {
        super(tokenRange);
        setTypeName(typeName);
        customInitialization();
    }

    @Override
    public ThisExprMetaModel getMetaModel() {
        return JavaParserMetaModel.thisExprMetaModel;
    }

    @Override
    public ThisExpr mo1220clone() {
        return (ThisExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
