package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAbstractModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithPublicModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.AnnotationMemberDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedAnnotationMemberDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class AnnotationMemberDeclaration extends BodyDeclaration<AnnotationMemberDeclaration> implements NodeWithJavadoc<AnnotationMemberDeclaration>, NodeWithSimpleName<AnnotationMemberDeclaration>, NodeWithType<AnnotationMemberDeclaration, Type>, NodeWithPublicModifier<AnnotationMemberDeclaration>, NodeWithAbstractModifier<AnnotationMemberDeclaration>, Resolvable<ResolvedAnnotationMemberDeclaration> {

    @OptionalProperty
    private Expression defaultValue;
    private NodeList<Modifier> modifiers;
    private SimpleName name;
    private Type type;

    public AnnotationMemberDeclaration() {
        this(null, new NodeList(), new NodeList(), new ClassOrInterfaceType(), new SimpleName(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (AnnotationMemberDeclaration) arg);
    }

    @Override
    public AnnotationMemberDeclaration asAnnotationMemberDeclaration() {
        return this;
    }

    public Optional<Expression> getDefaultValue() {
        return Optional.ofNullable(this.defaultValue);
    }

    @Override
    public NodeList<Modifier> getModifiers() {
        return this.modifiers;
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public void ifAnnotationMemberDeclaration(Consumer<AnnotationMemberDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isAnnotationMemberDeclaration() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Expression expression = this.defaultValue;
        if (expression != null && node == expression) {
            removeDefaultValue();
            return true;
        }
        for (int i10 = 0; i10 < this.modifiers.size(); i10++) {
            if (this.modifiers.get(i10) == node) {
                this.modifiers.remove(i10);
                return true;
            }
        }
        return super.remove(node);
    }

    public AnnotationMemberDeclaration removeDefaultValue() {
        return setDefaultValue(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        Expression expression = this.defaultValue;
        if (expression != null && node == expression) {
            setDefaultValue((Expression) replacementNode);
            return true;
        }
        for (int i10 = 0; i10 < this.modifiers.size(); i10++) {
            if (this.modifiers.get(i10) == node) {
                this.modifiers.set(i10, (int) replacementNode);
                return true;
            }
        }
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        if (node != this.type) {
            return super.replace(node, replacementNode);
        }
        setType((Type) replacementNode);
        return true;
    }

    public AnnotationMemberDeclaration setDefaultValue(final Expression defaultValue) {
        Expression expression = this.defaultValue;
        if (defaultValue == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.DEFAULT_VALUE, expression, defaultValue);
        Expression expression2 = this.defaultValue;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.defaultValue = defaultValue;
        setAsParentNodeOf(defaultValue);
        return this;
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public Optional<AnnotationMemberDeclaration> toAnnotationMemberDeclaration() {
        return Optional.of(this);
    }

    public AnnotationMemberDeclaration(NodeList<Modifier> modifiers, Type type, String name, Expression defaultValue) {
        this(null, modifiers, new NodeList(), type, new SimpleName(name), defaultValue);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (AnnotationMemberDeclaration) arg);
    }

    @Override
    public ResolvedAnnotationMemberDeclaration resolve() {
        return (ResolvedAnnotationMemberDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedAnnotationMemberDeclaration.class);
    }

    @Override
    public AnnotationMemberDeclaration setModifiers(final NodeList<Modifier> modifiers) {
        Utils.assertNotNull(modifiers);
        NodeList<Modifier> nodeList = this.modifiers;
        if (modifiers == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.MODIFIERS, nodeList, modifiers);
        NodeList<Modifier> nodeList2 = this.modifiers;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.modifiers = modifiers;
        setAsParentNodeOf(modifiers);
        return this;
    }

    @Override
    public AnnotationMemberDeclaration setName(final SimpleName name) {
        Utils.assertNotNull(name);
        SimpleName simpleName = this.name;
        if (name == simpleName) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.NAME, simpleName, name);
        SimpleName simpleName2 = this.name;
        if (simpleName2 != null) {
            simpleName2.setParentNode((Node) null);
        }
        this.name = name;
        setAsParentNodeOf(name);
        return this;
    }

    @Override
    public AnnotationMemberDeclaration setType(final Type type) {
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

    @AllFieldsConstructor
    public AnnotationMemberDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, Type type, SimpleName name, Expression defaultValue) {
        this(null, modifiers, annotations, type, name, defaultValue);
    }

    @Override
    public AnnotationMemberDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.annotationMemberDeclarationMetaModel;
    }

    public AnnotationMemberDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, Type type, SimpleName name, Expression defaultValue) {
        super(tokenRange, annotations);
        setModifiers(modifiers);
        setType(type);
        setName(name);
        setDefaultValue(defaultValue);
        customInitialization();
    }

    @Override
    public AnnotationMemberDeclaration mo1220clone() {
        return (AnnotationMemberDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
