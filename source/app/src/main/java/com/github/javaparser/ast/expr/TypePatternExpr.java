package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.TypePatternExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class TypePatternExpr extends PatternExpr implements NodeWithSimpleName<TypePatternExpr>, NodeWithFinalModifier<TypePatternExpr> {
    private NodeList<Modifier> modifiers;
    private SimpleName name;

    public TypePatternExpr() {
        this(null, new NodeList(), new ClassOrInterfaceType(), new SimpleName());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (TypePatternExpr) arg);
    }

    @Override
    public TypePatternExpr asTypePatternExpr() {
        return this;
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
    public void ifTypePatternExpr(Consumer<TypePatternExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isTypePatternExpr() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.modifiers.size(); i10++) {
            if (this.modifiers.get(i10) == node) {
                this.modifiers.remove(i10);
                return true;
            }
        }
        return super.remove(node);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.modifiers.size(); i10++) {
            if (this.modifiers.get(i10) == node) {
                this.modifiers.set(i10, (int) replacementNode);
                return true;
            }
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((SimpleName) replacementNode);
        return true;
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public Optional<TypePatternExpr> toTypePatternExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public TypePatternExpr(final NodeList<Modifier> modifiers, final Type type, SimpleName name) {
        this(null, modifiers, type, name);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (TypePatternExpr) arg);
    }

    @Override
    public TypePatternExpr setModifiers(final NodeList<Modifier> modifiers) {
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
    public TypePatternExpr setName(final SimpleName name) {
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

    public TypePatternExpr(TokenRange tokenRange, NodeList<Modifier> modifiers, Type type, SimpleName name) {
        super(tokenRange, type);
        setModifiers(modifiers);
        setName(name);
        customInitialization();
    }

    @Override
    public TypePatternExprMetaModel getMetaModel() {
        return JavaParserMetaModel.typePatternExprMetaModel;
    }

    @Override
    public TypePatternExpr mo1220clone() {
        return (TypePatternExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
