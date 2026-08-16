package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithIdentifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.metamodel.SimpleNameMetaModel;
import com.github.javaparser.utils.Utils;

public class SimpleName extends Node implements NodeWithIdentifier<SimpleName> {

    @NonEmptyProperty
    private String identifier;

    public SimpleName() {
        this(null, "empty");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (SimpleName) arg);
    }

    public String asString() {
        return this.identifier;
    }

    @Override
    public String getIdentifier() {
        return this.identifier;
    }

    @AllFieldsConstructor
    public SimpleName(final String identifier) {
        this(null, identifier);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (SimpleName) arg);
    }

    @Override
    public SimpleNameMetaModel getMetaModel() {
        return JavaParserMetaModel.simpleNameMetaModel;
    }

    @Override
    public SimpleName setIdentifier(final String identifier) {
        Utils.assertNonEmpty(identifier);
        String str = this.identifier;
        if (identifier == str) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.IDENTIFIER, str, identifier);
        this.identifier = identifier;
        return this;
    }

    public SimpleName(TokenRange tokenRange, String identifier) {
        super(tokenRange);
        setIdentifier(identifier);
        customInitialization();
    }

    @Override
    public SimpleName mo1220clone() {
        return (SimpleName) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
