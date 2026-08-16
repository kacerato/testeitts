package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.PatternExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class PatternExpr extends Expression implements NodeWithType<PatternExpr, Type> {
    private Type type;

    @AllFieldsConstructor
    public PatternExpr(final Type type) {
    }

    @Override
    public PatternExpr asPatternExpr() {
        return this;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public void ifPatternExpr(Consumer<PatternExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isPatternExpr() {
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
    public Optional<PatternExpr> toPatternExpr() {
        return Optional.of(this);
    }

    public PatternExpr(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public PatternExpr setType(final Type type) {
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

    @Override
    public PatternExprMetaModel getMetaModel() {
        return JavaParserMetaModel.patternExprMetaModel;
    }

    public PatternExpr(TokenRange tokenRange, Type type) {
        super(tokenRange);
        setType(type);
        customInitialization();
    }

    @Override
    public PatternExpr mo1220clone() {
        return (PatternExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
