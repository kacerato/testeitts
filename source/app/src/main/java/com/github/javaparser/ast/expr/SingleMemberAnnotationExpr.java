package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.SingleMemberAnnotationExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class SingleMemberAnnotationExpr extends AnnotationExpr {
    private Expression memberValue;

    public SingleMemberAnnotationExpr() {
        this(null, new Name(), new StringLiteralExpr());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (SingleMemberAnnotationExpr) arg);
    }

    @Override
    public SingleMemberAnnotationExpr asSingleMemberAnnotationExpr() {
        return this;
    }

    public Expression getMemberValue() {
        return this.memberValue;
    }

    @Override
    public void ifSingleMemberAnnotationExpr(Consumer<SingleMemberAnnotationExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isSingleMemberAnnotationExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.memberValue) {
            return super.replace(node, replacementNode);
        }
        setMemberValue((Expression) replacementNode);
        return true;
    }

    public SingleMemberAnnotationExpr setMemberValue(final Expression memberValue) {
        Utils.assertNotNull(memberValue);
        Expression expression = this.memberValue;
        if (memberValue == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.MEMBER_VALUE, expression, memberValue);
        Expression expression2 = this.memberValue;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.memberValue = memberValue;
        setAsParentNodeOf(memberValue);
        return this;
    }

    @Override
    public Optional<SingleMemberAnnotationExpr> toSingleMemberAnnotationExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public SingleMemberAnnotationExpr(final Name name, final Expression memberValue) {
        this(null, name, memberValue);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (SingleMemberAnnotationExpr) arg);
    }

    public SingleMemberAnnotationExpr(TokenRange tokenRange, Name name, Expression memberValue) {
        super(tokenRange, name);
        setMemberValue(memberValue);
        customInitialization();
    }

    @Override
    public SingleMemberAnnotationExprMetaModel getMetaModel() {
        return JavaParserMetaModel.singleMemberAnnotationExprMetaModel;
    }

    @Override
    public SingleMemberAnnotationExpr mo1220clone() {
        return (SingleMemberAnnotationExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
