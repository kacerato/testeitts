package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ParameterMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedParameterDeclaration;
import com.github.javaparser.utils.Utils;

public class Parameter extends Node implements NodeWithType<Parameter, Type>, NodeWithAnnotations<Parameter>, NodeWithSimpleName<Parameter>, NodeWithFinalModifier<Parameter>, Resolvable<ResolvedParameterDeclaration> {
    private NodeList<AnnotationExpr> annotations;
    private boolean isVarArgs;
    private NodeList<Modifier> modifiers;
    private SimpleName name;
    private Type type;
    private NodeList<AnnotationExpr> varArgsAnnotations;

    public Parameter() {
        this(null, new NodeList(), new NodeList(), new ClassOrInterfaceType(), false, new NodeList(), new SimpleName());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (Parameter) arg);
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
    public SimpleName getName() {
        return this.name;
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    public NodeList<AnnotationExpr> getVarArgsAnnotations() {
        return this.varArgsAnnotations;
    }

    @Override
    public boolean isFinal() {
        if (getParentNode().isPresent() && (getParentNode().get() instanceof RecordDeclaration)) {
            return true;
        }
        return super.isFinal();
    }

    public boolean isVarArgs() {
        return this.isVarArgs;
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
        for (int i12 = 0; i12 < this.varArgsAnnotations.size(); i12++) {
            if (this.varArgsAnnotations.get(i12) == node) {
                this.varArgsAnnotations.remove(i12);
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
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        if (node == this.type) {
            setType((Type) replacementNode);
            return true;
        }
        for (int i12 = 0; i12 < this.varArgsAnnotations.size(); i12++) {
            if (this.varArgsAnnotations.get(i12) == node) {
                this.varArgsAnnotations.set(i12, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public Parameter setAnnotations(final NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    public Parameter setVarArgs(final boolean isVarArgs) {
        boolean z10 = this.isVarArgs;
        if (isVarArgs == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VAR_ARGS, Boolean.valueOf(z10), Boolean.valueOf(isVarArgs));
        this.isVarArgs = isVarArgs;
        return this;
    }

    public Parameter setVarArgsAnnotations(final NodeList<AnnotationExpr> varArgsAnnotations) {
        Utils.assertNotNull(varArgsAnnotations);
        NodeList<AnnotationExpr> nodeList = this.varArgsAnnotations;
        if (varArgsAnnotations == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.VAR_ARGS_ANNOTATIONS, nodeList, varArgsAnnotations);
        NodeList<AnnotationExpr> nodeList2 = this.varArgsAnnotations;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.varArgsAnnotations = varArgsAnnotations;
        setAsParentNodeOf(varArgsAnnotations);
        return this;
    }

    public Parameter(Type type, SimpleName name) {
        this(null, new NodeList(), new NodeList(), type, false, new NodeList(), name);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (Parameter) arg);
    }

    @Override
    public ParameterMetaModel getMetaModel() {
        return JavaParserMetaModel.parameterMetaModel;
    }

    @Override
    public ResolvedParameterDeclaration resolve() {
        return (ResolvedParameterDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedParameterDeclaration.class);
    }

    @Override
    public Parameter setAnnotations2(final NodeList<AnnotationExpr> annotations) {
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
    public Parameter setModifiers(final NodeList<Modifier> modifiers) {
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
    public Parameter setName(final SimpleName name) {
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
    public Parameter setType(final Type type) {
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

    public Parameter(Type type, String name) {
        this(null, new NodeList(), new NodeList(), type, false, new NodeList(), new SimpleName(name));
    }

    @Override
    public Parameter mo1220clone() {
        return (Parameter) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public Parameter(NodeList<Modifier> modifiers, Type type, SimpleName name) {
        this(null, modifiers, new NodeList(), type, false, new NodeList(), name);
    }

    @AllFieldsConstructor
    public Parameter(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, Type type, boolean isVarArgs, NodeList<AnnotationExpr> varArgsAnnotations, SimpleName name) {
        this(null, modifiers, annotations, type, isVarArgs, varArgsAnnotations, name);
    }

    public Parameter(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, Type type, boolean isVarArgs, NodeList<AnnotationExpr> varArgsAnnotations, SimpleName name) {
        super(tokenRange);
        setModifiers(modifiers);
        setAnnotations2(annotations);
        setType(type);
        setVarArgs(isVarArgs);
        setVarArgsAnnotations(varArgsAnnotations);
        setName(name);
        customInitialization();
    }
}
