package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithExpression;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.InstanceOfExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class InstanceOfExpr extends Expression implements NodeWithType<InstanceOfExpr, ReferenceType>, NodeWithExpression<InstanceOfExpr> {
    private Expression expression;

    @OptionalProperty
    private PatternExpr pattern;
    private ReferenceType type;

    public InstanceOfExpr() {
        this(null, new NameExpr(), new ClassOrInterfaceType(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (InstanceOfExpr) arg);
    }

    @Override
    public InstanceOfExpr asInstanceOfExpr() {
        return this;
    }

    @Override
    public Expression getExpression() {
        return this.expression;
    }

    public Optional<SimpleName> getName() {
        PatternExpr patternExpr = this.pattern;
        if (patternExpr != null && patternExpr.isTypePatternExpr()) {
            return Optional.of(this.pattern.asTypePatternExpr().getName());
        }
        return Optional.empty();
    }

    public Optional<PatternExpr> getPattern() {
        return Optional.ofNullable(this.pattern);
    }

    @Override
    public void ifInstanceOfExpr(Consumer<InstanceOfExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isInstanceOfExpr() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        PatternExpr patternExpr = this.pattern;
        if (patternExpr == null || node != patternExpr) {
            return super.remove(node);
        }
        removePattern();
        return true;
    }

    public InstanceOfExpr removePattern() {
        return setPattern(null);
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
        PatternExpr patternExpr = this.pattern;
        if (patternExpr != null && node == patternExpr) {
            setPattern((PatternExpr) replacementNode);
            return true;
        }
        if (node != this.type) {
            return super.replace(node, replacementNode);
        }
        setType((ReferenceType) replacementNode);
        return true;
    }

    public InstanceOfExpr setPattern(final PatternExpr pattern) {
        PatternExpr patternExpr = this.pattern;
        if (pattern == patternExpr) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PATTERN, patternExpr, pattern);
        PatternExpr patternExpr2 = this.pattern;
        if (patternExpr2 != null) {
            patternExpr2.setParentNode((Node) null);
        }
        this.pattern = pattern;
        setAsParentNodeOf(pattern);
        return this;
    }

    @Override
    public Optional<InstanceOfExpr> toInstanceOfExpr() {
        return Optional.of(this);
    }

    public InstanceOfExpr(final Expression expression, final ReferenceType type) {
        this(null, expression, type, null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (InstanceOfExpr) arg);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ReferenceType getType2() {
        return this.type;
    }

    @Override
    public InstanceOfExpr setExpression(final Expression expression) {
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
    public InstanceOfExpr setType(final ReferenceType type) {
        Utils.assertNotNull(type);
        ReferenceType referenceType = this.type;
        if (type == referenceType) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, referenceType, type);
        ReferenceType referenceType2 = this.type;
        if (referenceType2 != null) {
            referenceType2.setParentNode((Node) null);
        }
        this.type = type;
        setAsParentNodeOf(type);
        return this;
    }

    @AllFieldsConstructor
    public InstanceOfExpr(final Expression expression, final ReferenceType type, final PatternExpr pattern) {
        this(null, expression, type, pattern);
    }

    @Override
    public InstanceOfExprMetaModel getMetaModel() {
        return JavaParserMetaModel.instanceOfExprMetaModel;
    }

    public InstanceOfExpr(TokenRange tokenRange, Expression expression, ReferenceType type, PatternExpr pattern) {
        super(tokenRange);
        setExpression(expression);
        setType(type);
        setPattern(pattern);
        customInitialization();
    }

    @Override
    public InstanceOfExpr mo1220clone() {
        return (InstanceOfExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
