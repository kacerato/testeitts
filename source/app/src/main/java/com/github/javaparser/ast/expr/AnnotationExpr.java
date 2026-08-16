package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithName;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.AnnotationExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedAnnotationDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class AnnotationExpr extends Expression implements NodeWithName<AnnotationExpr>, Resolvable<ResolvedAnnotationDeclaration> {
    protected Name name;

    public AnnotationExpr() {
        this(null, new Name());
    }

    @Override
    public AnnotationExpr asAnnotationExpr() {
        return this;
    }

    @Override
    public Name getName() {
        return this.name;
    }

    @Override
    public void ifAnnotationExpr(Consumer<AnnotationExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isAnnotationExpr() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((Name) replacementNode);
        return true;
    }

    @Override
    public Optional<AnnotationExpr> toAnnotationExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public AnnotationExpr(Name name) {
        this(null, name);
    }

    @Override
    public ResolvedAnnotationDeclaration resolve() {
        return (ResolvedAnnotationDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedAnnotationDeclaration.class);
    }

    @Override
    public AnnotationExpr setName(final Name name) {
        Utils.assertNotNull(name);
        Name name2 = this.name;
        if (name == name2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, name2, name);
        Name name3 = this.name;
        if (name3 != null) {
            name3.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    public AnnotationExpr(TokenRange tokenRange, Name name) {
        super(tokenRange);
        setName(name);
        customInitialization();
    }

    @Override
    public AnnotationExprMetaModel getMetaModel() {
        return JavaParserMetaModel.annotationExprMetaModel;
    }

    @Override
    public AnnotationExpr mo1220clone() {
        return (AnnotationExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
