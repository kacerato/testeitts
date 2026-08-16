package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.TypeExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class TypeExpr extends Expression implements NodeWithType<TypeExpr, Type> {
    private Type type;

    public TypeExpr() {
        this(null, new ClassOrInterfaceType());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (TypeExpr) arg);
    }

    @Override
    public TypeExpr asTypeExpr() {
        return this;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public void ifTypeExpr(Consumer<TypeExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isTypeExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.type) {
            return super.replace(node, replacementNode);
        }
        setType((Type) replacementNode);
        return true;
    }

    @Override
    public Optional<TypeExpr> toTypeExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public TypeExpr(Type type) {
        this(null, type);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (TypeExpr) arg);
    }

    @Override
    public TypeExpr setType(final Type type) {
        Utils.assertNotNull(type);
        Type type2 = this.type;
        if (type == type2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, type2, type);
        Type type3 = this.type;
        if (type3 != null) {
            type3.setParentNode((Node) null);
        }
        this.type = type;
        setAsParentNodeOf(type);
        return this;
    }

    public TypeExpr(TokenRange tokenRange, Type type) {
        super(tokenRange);
        setType(type);
        customInitialization();
    }

    @Override
    public TypeExprMetaModel getMetaModel() {
        return JavaParserMetaModel.typeExprMetaModel;
    }

    @Override
    public TypeExpr mo1220clone() {
        return (TypeExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
