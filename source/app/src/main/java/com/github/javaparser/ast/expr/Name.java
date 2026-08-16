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
import com.github.javaparser.metamodel.NameMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Predicate;

public class Name extends Node implements NodeWithIdentifier<Name> {

    @NonEmptyProperty
    private String identifier;

    @OptionalProperty
    private Name qualifier;

    public Name() {
        this(null, null, "empty");
    }

    public static boolean lambda$isInternal$0(Node parent) {
        return parent instanceof Name;
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (Name) arg);
    }

    public String asString() {
        if (this.qualifier == null) {
            return this.identifier;
        }
        return this.qualifier.asString() + "." + this.identifier;
    }

    @Override
    public String getIdentifier() {
        return this.identifier;
    }

    public Optional<Name> getQualifier() {
        return Optional.ofNullable(this.qualifier);
    }

    public boolean hasQualifier() {
        return this.qualifier != null;
    }

    public boolean isInternal() {
        return getParentNode().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isInternal$0;
                lambda$isInternal$0 = Name.lambda$isInternal$0((Node) obj);
                return lambda$isInternal$0;
            }
        }).isPresent();
    }

    public boolean isTopLevel() {
        return !isInternal();
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Name name = this.qualifier;
        if (name == null || node != name) {
            return super.remove(node);
        }
        removeQualifier();
        return true;
    }

    public Name removeQualifier() {
        return setQualifier(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        Name name = this.qualifier;
        if (name == null || node != name) {
            return super.replace(node, replacementNode);
        }
        setQualifier((Name) replacementNode);
        return true;
    }

    public Name setQualifier(final Name qualifier) {
        Name name = this.qualifier;
        if (qualifier == name) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.QUALIFIER, name, qualifier);
        Name name2 = this.qualifier;
        if (name2 != null) {
            name2.setParentNode((Node) null);
        }
        this.qualifier = qualifier;
        setAsParentNodeOf(qualifier);
        return this;
    }

    public Name(final String identifier) {
        this(null, null, identifier);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (Name) arg);
    }

    @Override
    public NameMetaModel getMetaModel() {
        return JavaParserMetaModel.nameMetaModel;
    }

    @Override
    public Name setIdentifier(final String identifier) {
        Utils.assertNonEmpty(identifier);
        String str = this.identifier;
        if (identifier == str) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.IDENTIFIER, str, identifier);
        this.identifier = identifier;
        return this;
    }

    @AllFieldsConstructor
    public Name(Name qualifier, final String identifier) {
        this(null, qualifier, identifier);
    }

    @Override
    public Name mo1220clone() {
        return (Name) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public Name(TokenRange tokenRange, Name qualifier, String identifier) {
        super(tokenRange);
        setQualifier(qualifier);
        setIdentifier(identifier);
        customInitialization();
    }
}
