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
import com.github.javaparser.metamodel.SuperExprMetaModel;
import java.util.Optional;
import java.util.function.Consumer;

public class SuperExpr extends Expression {

    @OptionalProperty
    private Name typeName;

    public SuperExpr() {
        this(null, null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (SuperExpr) arg);
    }

    @Override
    public SuperExpr asSuperExpr() {
        return this;
    }

    public Optional<Name> getTypeName() {
        return Optional.ofNullable(this.typeName);
    }

    @Override
    public void ifSuperExpr(Consumer<SuperExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isSuperExpr() {
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

    public SuperExpr removeClassName() {
        return setTypeName(null);
    }

    public SuperExpr removeTypeName() {
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

    public SuperExpr setTypeName(final Name typeName) {
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
    public Optional<SuperExpr> toSuperExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public SuperExpr(final Name typeName) {
        this(null, typeName);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (SuperExpr) arg);
    }

    public SuperExpr(TokenRange tokenRange, Name typeName) {
        super(tokenRange);
        setTypeName(typeName);
        customInitialization();
    }

    @Override
    public SuperExprMetaModel getMetaModel() {
        return JavaParserMetaModel.superExprMetaModel;
    }

    @Override
    public SuperExpr mo1220clone() {
        return (SuperExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
