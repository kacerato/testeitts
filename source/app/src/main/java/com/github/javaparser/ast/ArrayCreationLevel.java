package com.github.javaparser.ast;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ArrayCreationLevelMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Optional;

public class ArrayCreationLevel extends Node implements NodeWithAnnotations<ArrayCreationLevel> {
    private NodeList<AnnotationExpr> annotations;

    @OptionalProperty
    private Expression dimension;

    public ArrayCreationLevel() {
        this(null, null, new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ArrayCreationLevel) arg);
    }

    @Override
    public NodeList<AnnotationExpr> getAnnotations() {
        return this.annotations;
    }

    public Optional<Expression> getDimension() {
        return Optional.ofNullable(this.dimension);
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.annotations.size(); i10++) {
            if (this.annotations.get(i10) == node) {
                this.annotations.remove(i10);
                return true;
            }
        }
        Expression expression = this.dimension;
        if (expression == null || node != expression) {
            return super.remove(node);
        }
        removeDimension();
        return true;
    }

    public ArrayCreationLevel removeDimension() {
        return setDimension(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.annotations.size(); i10++) {
            if (this.annotations.get(i10) == node) {
                this.annotations.set(i10, (int) replacementNode);
                return true;
            }
        }
        Expression expression = this.dimension;
        if (expression == null || node != expression) {
            return super.replace(node, replacementNode);
        }
        setDimension((Expression) replacementNode);
        return true;
    }

    @Override
    public ArrayCreationLevel setAnnotations(final NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    public ArrayCreationLevel setDimension(final Expression dimension) {
        Expression expression = this.dimension;
        if (dimension == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.DIMENSION, expression, dimension);
        Expression expression2 = this.dimension;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.dimension = dimension;
        setAsParentNodeOf(dimension);
        return this;
    }

    public ArrayCreationLevel(int dimension) {
        this(null, new IntegerLiteralExpr("" + dimension), new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ArrayCreationLevel) arg);
    }

    @Override
    public ArrayCreationLevelMetaModel getMetaModel() {
        return JavaParserMetaModel.arrayCreationLevelMetaModel;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ArrayCreationLevel setAnnotations(final NodeList<AnnotationExpr> annotations) {
        Utils.assertNotNull(annotations);
        NodeList<AnnotationExpr> nodeList = this.annotations;
        if (annotations == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ANNOTATIONS, nodeList, annotations);
        NodeList<AnnotationExpr> nodeList2 = this.annotations;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.annotations = annotations;
        setAsParentNodeOf(annotations);
        return this;
    }

    public ArrayCreationLevel(Expression dimension) {
        this(null, dimension, new NodeList());
    }

    @Override
    public ArrayCreationLevel mo1220clone() {
        return (ArrayCreationLevel) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    @AllFieldsConstructor
    public ArrayCreationLevel(Expression dimension, NodeList<AnnotationExpr> annotations) {
        this(null, dimension, annotations);
    }

    public ArrayCreationLevel(TokenRange tokenRange, Expression dimension, NodeList<AnnotationExpr> annotations) {
        super(tokenRange);
        this.annotations = new NodeList<>();
        setDimension(dimension);
        setAnnotations(annotations);
        customInitialization();
    }
}
