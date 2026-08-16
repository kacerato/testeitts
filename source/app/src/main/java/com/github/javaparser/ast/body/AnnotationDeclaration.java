package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAbstractModifier;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.AnnotationDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedAnnotationDeclaration;
import java.util.Optional;
import java.util.function.Consumer;

public class AnnotationDeclaration extends TypeDeclaration<AnnotationDeclaration> implements NodeWithAbstractModifier<AnnotationDeclaration>, Resolvable<ResolvedAnnotationDeclaration> {
    public AnnotationDeclaration() {
        this(null, new NodeList(), new NodeList(), new SimpleName(), new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (AnnotationDeclaration) arg);
    }

    @Override
    public FieldDeclaration addField(Type type, String name, Modifier.Keyword... modifiers) {
        throw new IllegalStateException("Cannot add a field to an annotation declaration.");
    }

    @Override
    public AnnotationDeclaration asAnnotationDeclaration() {
        return this;
    }

    @Override
    public void ifAnnotationDeclaration(Consumer<AnnotationDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isAnnotationDeclaration() {
        return true;
    }

    @Override
    public Optional<AnnotationDeclaration> toAnnotationDeclaration() {
        return Optional.of(this);
    }

    public AnnotationDeclaration(NodeList<Modifier> modifiers, String name) {
        this(null, modifiers, new NodeList(), new SimpleName(name), new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (AnnotationDeclaration) arg);
    }

    @AllFieldsConstructor
    public AnnotationDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<BodyDeclaration<?>> members) {
        this(null, modifiers, annotations, name, members);
    }

    @Override
    public ResolvedAnnotationDeclaration resolve() {
        return (ResolvedAnnotationDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedAnnotationDeclaration.class);
    }

    public AnnotationDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<BodyDeclaration<?>> members) {
        super(tokenRange, modifiers, annotations, name, members);
        customInitialization();
    }

    @Override
    public AnnotationDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.annotationDeclarationMetaModel;
    }

    @Override
    public AnnotationDeclaration mo1220clone() {
        return (AnnotationDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
