package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithExpression;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.CastExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class CastExpr extends Expression implements NodeWithType<CastExpr, Type>, NodeWithExpression<CastExpr> {
    private Expression expression;
    private Type type;

    public CastExpr() {
        this(null, new ClassOrInterfaceType(), new NameExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (CastExpr) arg);
    }

    @Override
    public CastExpr asCastExpr() {
        return this;
    }

    @Override
    public Expression getExpression() {
        return this.expression;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public void ifCastExpr(Consumer<CastExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isCastExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.expression) {
            setExpression((Expression) replacementNode);
            return true;
        }
        if (node != this.type) {
            return super.replace(node, replacementNode);
        }
        setType((Type) replacementNode);
        return true;
    }

    @Override
    public Optional<CastExpr> toCastExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public CastExpr(Type type, Expression expression) {
        this(null, type, expression);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (CastExpr) arg);
    }

    @Override
    public CastExpr setExpression(final Expression expression) {
        Utils.assertNotNull(expression);
        Expression expression2 = this.expression;
        if (expression == expression2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.EXPRESSION, expression2, expression);
        Expression expression3 = this.expression;
        if (expression3 != null) {
            expression3.setParentNode((Node) null);
        }
        this.expression = expression;
        setAsParentNodeOf(expression);
        return this;
    }

    @Override
    public CastExpr setType(final Type type) {
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

    public CastExpr(TokenRange tokenRange, Type type, Expression expression) {
        super(tokenRange);
        setType(type);
        setExpression(expression);
        customInitialization();
    }

    @Override
    public CastExprMetaModel getMetaModel() {
        return JavaParserMetaModel.castExprMetaModel;
    }

    @Override
    public CastExpr mo1220clone() {
        return (CastExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
