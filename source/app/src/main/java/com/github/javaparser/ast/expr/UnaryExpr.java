package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithExpression;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.DerivedProperty;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.UnaryExprMetaModel;
import com.github.javaparser.printer.Stringable;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class UnaryExpr extends Expression implements NodeWithExpression<UnaryExpr> {
    private Expression expression;
    private Operator operator;

    public enum Operator implements Stringable {
        PLUS("+", false),
        MINUS("-", false),
        PREFIX_INCREMENT("++", false),
        PREFIX_DECREMENT("--", false),
        LOGICAL_COMPLEMENT("!", false),
        BITWISE_COMPLEMENT("~", false),
        POSTFIX_INCREMENT("++", true),
        POSTFIX_DECREMENT("--", true);

        private final String codeRepresentation;
        private final boolean isPostfix;

        Operator(String codeRepresentation, boolean isPostfix) {
            this.codeRepresentation = codeRepresentation;
            this.isPostfix = isPostfix;
        }

        @Override
        public String asString() {
            return this.codeRepresentation;
        }

        public boolean isPostfix() {
            return this.isPostfix;
        }

        public boolean isPrefix() {
            return !isPostfix();
        }
    }

    public UnaryExpr() {
        this(null, new IntegerLiteralExpr(), Operator.POSTFIX_INCREMENT);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (UnaryExpr) arg);
    }

    @Override
    public UnaryExpr asUnaryExpr() {
        return this;
    }

    @Override
    public Expression getExpression() {
        return this.expression;
    }

    public Operator getOperator() {
        return this.operator;
    }

    @Override
    public void ifUnaryExpr(Consumer<UnaryExpr> action) {
        action.accept(this);
    }

    @DerivedProperty
    public boolean isPostfix() {
        return this.operator.isPostfix();
    }

    @DerivedProperty
    public boolean isPrefix() {
        return !isPostfix();
    }

    @Override
    public boolean isUnaryExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.expression) {
            return super.replace(node, replacementNode);
        }
        setExpression((Expression) replacementNode);
        return true;
    }

    public UnaryExpr setOperator(final Operator operator) {
        Utils.assertNotNull(operator);
        Operator operator2 = this.operator;
        if (operator == operator2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.OPERATOR, operator2, operator);
        this.operator = operator;
        return this;
    }

    @Override
    public Optional<UnaryExpr> toUnaryExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public UnaryExpr(final Expression expression, final Operator operator) {
        this(null, expression, operator);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (UnaryExpr) arg);
    }

    @Override
    public UnaryExpr setExpression(final Expression expression) {
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

    public UnaryExpr(TokenRange tokenRange, Expression expression, Operator operator) {
        super(tokenRange);
        setExpression(expression);
        setOperator(operator);
        customInitialization();
    }

    @Override
    public UnaryExprMetaModel getMetaModel() {
        return JavaParserMetaModel.unaryExprMetaModel;
    }

    @Override
    public UnaryExpr mo1220clone() {
        return (UnaryExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
