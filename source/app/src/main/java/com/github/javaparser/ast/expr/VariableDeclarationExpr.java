package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithVariables;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.metamodel.VariableDeclarationExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Arrays;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class VariableDeclarationExpr extends Expression implements NodeWithFinalModifier<VariableDeclarationExpr>, NodeWithAnnotations<VariableDeclarationExpr>, NodeWithVariables<VariableDeclarationExpr> {
    private NodeList<AnnotationExpr> annotations;
    private NodeList<Modifier> modifiers;

    @NonEmptyProperty
    private NodeList<VariableDeclarator> variables;

    public VariableDeclarationExpr() {
        this(null, new NodeList(), new NodeList(), new NodeList());
    }

    public static NodeList lambda$new$0() {
        return new NodeList();
    }

    public static NodeList lambda$new$1() {
        return new NodeList();
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (VariableDeclarationExpr) arg);
    }

    @Override
    public VariableDeclarationExpr asVariableDeclarationExpr() {
        return this;
    }

    @Override
    public NodeList<AnnotationExpr> getAnnotations() {
        return this.annotations;
    }

    @Override
    public NodeList<Modifier> getModifiers() {
        return this.modifiers;
    }

    @Override
    public NodeList<VariableDeclarator> getVariables() {
        return this.variables;
    }

    @Override
    public void ifVariableDeclarationExpr(Consumer<VariableDeclarationExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isVariableDeclarationExpr() {
        return true;
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
        for (int i11 = 0; i11 < this.modifiers.size(); i11++) {
            if (this.modifiers.get(i11) == node) {
                this.modifiers.remove(i11);
                return true;
            }
        }
        for (int i12 = 0; i12 < this.variables.size(); i12++) {
            if (this.variables.get(i12) == node) {
                this.variables.remove(i12);
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
        for (int i10 = 0; i10 < this.annotations.size(); i10++) {
            if (this.annotations.get(i10) == node) {
                this.annotations.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.modifiers.size(); i11++) {
            if (this.modifiers.get(i11) == node) {
                this.modifiers.set(i11, (int) replacementNode);
                return true;
            }
        }
        for (int i12 = 0; i12 < this.variables.size(); i12++) {
            if (this.variables.get(i12) == node) {
                this.variables.set(i12, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public VariableDeclarationExpr setAnnotations(final NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public VariableDeclarationExpr setVariables(final NodeList variables) {
        return setVariables2((NodeList<VariableDeclarator>) variables);
    }

    @Override
    public Optional<VariableDeclarationExpr> toVariableDeclarationExpr() {
        return Optional.of(this);
    }

    public VariableDeclarationExpr(final Type type, String variableName) {
        this(null, new NodeList(), new NodeList(), NodeList.nodeList(new VariableDeclarator(type, variableName)));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (VariableDeclarationExpr) arg);
    }

    @Override
    public VariableDeclarationExpr setAnnotations2(final NodeList<AnnotationExpr> annotations) {
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

    @Override
    public VariableDeclarationExpr setModifiers(final NodeList<Modifier> modifiers) {
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
    public VariableDeclarationExpr setVariables2(final NodeList<VariableDeclarator> variables) {
        Utils.assertNotNull(variables);
        NodeList<VariableDeclarator> nodeList = this.variables;
        if (variables == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VARIABLES, nodeList, variables);
        NodeList<VariableDeclarator> nodeList2 = this.variables;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.variables = variables;
        setAsParentNodeOf(variables);
        return this;
    }

    public VariableDeclarationExpr(VariableDeclarator var) {
        this(null, new NodeList(), new NodeList(), NodeList.nodeList(var));
    }

    @Override
    public VariableDeclarationExprMetaModel getMetaModel() {
        return JavaParserMetaModel.variableDeclarationExprMetaModel;
    }

    public VariableDeclarationExpr(final Type type, String variableName, Modifier... modifiers) {
        this(null, (NodeList) Arrays.stream(modifiers).collect(Collectors.toCollection(new Supplier() {
            @Override
            public final Object get() {
                NodeList lambda$new$0;
                lambda$new$0 = VariableDeclarationExpr.lambda$new$0();
                return lambda$new$0;
            }
        })), new NodeList(), NodeList.nodeList(new VariableDeclarator(type, variableName)));
    }

    @Override
    public VariableDeclarationExpr mo1220clone() {
        return (VariableDeclarationExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public VariableDeclarationExpr(VariableDeclarator var, Modifier... modifiers) {
        this(null, (NodeList) Arrays.stream(modifiers).collect(Collectors.toCollection(new Supplier() {
            @Override
            public final Object get() {
                NodeList lambda$new$1;
                lambda$new$1 = VariableDeclarationExpr.lambda$new$1();
                return lambda$new$1;
            }
        })), new NodeList(), NodeList.nodeList(var));
    }

    public VariableDeclarationExpr(final NodeList<VariableDeclarator> variables) {
        this(null, new NodeList(), new NodeList(), variables);
    }

    public VariableDeclarationExpr(final NodeList<Modifier> modifiers, final NodeList<VariableDeclarator> variables) {
        this(null, modifiers, new NodeList(), variables);
    }

    @AllFieldsConstructor
    public VariableDeclarationExpr(final NodeList<Modifier> modifiers, final NodeList<AnnotationExpr> annotations, final NodeList<VariableDeclarator> variables) {
        this(null, modifiers, annotations, variables);
    }

    public VariableDeclarationExpr(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<VariableDeclarator> variables) {
        super(tokenRange);
        setModifiers(modifiers);
        setAnnotations2(annotations);
        setVariables2(variables);
        customInitialization();
    }
}
