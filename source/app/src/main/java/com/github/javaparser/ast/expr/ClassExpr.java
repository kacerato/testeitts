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
import com.github.javaparser.metamodel.ClassExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ClassExpr extends Expression implements NodeWithType<ClassExpr, Type> {
    private Type type;

    public ClassExpr() {
        this(null, new ClassOrInterfaceType());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ClassExpr) arg);
    }

    @Override
    public ClassExpr asClassExpr() {
        return this;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public void ifClassExpr(Consumer<ClassExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isClassExpr() {
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
    public Optional<ClassExpr> toClassExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ClassExpr(Type type) {
        this(null, type);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ClassExpr) arg);
    }

    @Override
    public ClassExpr setType(final Type type) {
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

    public ClassExpr(TokenRange tokenRange, Type type) {
        super(tokenRange);
        setType(type);
        customInitialization();
    }

    @Override
    public ClassExprMetaModel getMetaModel() {
        return JavaParserMetaModel.classExprMetaModel;
    }

    @Override
    public ClassExpr mo1220clone() {
        return (ClassExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
