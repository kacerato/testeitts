package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.CallableDeclaration;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithDeclaration;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.nodeTypes.NodeWithParameters;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithThrownExceptions;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeParameters;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAbstractModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAccessModifiers;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStaticModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStrictfpModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.CallableDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public abstract class CallableDeclaration<T extends CallableDeclaration<?>> extends BodyDeclaration<T> implements NodeWithAccessModifiers<T>, NodeWithDeclaration, NodeWithSimpleName<T>, NodeWithParameters<T>, NodeWithThrownExceptions<T>, NodeWithTypeParameters<T>, NodeWithJavadoc<T>, NodeWithAbstractModifier<T>, NodeWithStaticModifier<T>, NodeWithFinalModifier<T>, NodeWithStrictfpModifier<T> {
    private NodeList<Modifier> modifiers;
    private SimpleName name;
    private NodeList<Parameter> parameters;

    @OptionalProperty
    private ReceiverParameter receiverParameter;
    private NodeList<ReferenceType> thrownExceptions;
    private NodeList<TypeParameter> typeParameters;

    public static class Signature {
        private final String name;
        private final List<Type> parameterTypes;

        public String asString() {
            return (String) this.parameterTypes.stream().map(new d()).collect(Collectors.joining(", ", this.name + "(", ")"));
        }

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (o10 == null || getClass() != o10.getClass()) {
                return false;
            }
            Signature signature = (Signature) o10;
            return this.name.equals(signature.name) && this.parameterTypes.equals(signature.parameterTypes);
        }

        public String getName() {
            return this.name;
        }

        public List<Type> getParameterTypes() {
            return this.parameterTypes;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.parameterTypes.hashCode();
        }

        public String toString() {
            return asString();
        }

        private Signature(String name, List<Type> parameterTypes) {
            this.name = name;
            this.parameterTypes = parameterTypes;
        }
    }

    @AllFieldsConstructor
    public CallableDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, SimpleName name, NodeList<Parameter> parameters, NodeList<ReferenceType> thrownExceptions, ReceiverParameter receiverParameter) {
        this(null, modifiers, annotations, typeParameters, name, parameters, thrownExceptions, receiverParameter);
    }

    public Type getTypeWithVarargsAsArray(Parameter p10) {
        Type mo1220clone = p10.getType2().mo1220clone();
        return p10.isVarArgs() ? new ArrayType(mo1220clone, new AnnotationExpr[0]) : mo1220clone;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type stripAnnotations(Type type) {
        if (type instanceof NodeWithAnnotations) {
            ((NodeWithAnnotations) type).setAnnotations(new NodeList<>());
        }
        return type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type stripGenerics(Type type) {
        if (type instanceof NodeWithTypeArguments) {
            ((NodeWithTypeArguments) type).setTypeArguments((NodeList<Type>) null);
        }
        return type;
    }

    public String appendThrowsIfRequested(boolean includingThrows) {
        StringBuilder sb2 = new StringBuilder();
        if (includingThrows) {
            Iterator<ReferenceType> it = getThrownExceptions().iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                ReferenceType next = it.next();
                if (z10) {
                    sb2.append(" throws ");
                    z10 = false;
                } else {
                    sb2.append(", ");
                }
                sb2.append(next.toString(Node.prettyPrinterNoCommentsConfiguration));
            }
        }
        return sb2.toString();
    }

    @Override
    public CallableDeclaration asCallableDeclaration() {
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
    public NodeList<Parameter> getParameters() {
        return this.parameters;
    }

    public Optional<ReceiverParameter> getReceiverParameter() {
        return Optional.ofNullable(this.receiverParameter);
    }

    public Signature getSignature() {
        return new Signature(getName().getIdentifier(), (List) getParameters().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type typeWithVarargsAsArray;
                typeWithVarargsAsArray = CallableDeclaration.this.getTypeWithVarargsAsArray((Parameter) obj);
                return typeWithVarargsAsArray;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type stripGenerics;
                stripGenerics = CallableDeclaration.this.stripGenerics((Type) obj);
                return stripGenerics;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type stripAnnotations;
                stripAnnotations = CallableDeclaration.this.stripAnnotations((Type) obj);
                return stripAnnotations;
            }
        }).collect(Collectors.toList()));
    }

    @Override
    public NodeList<ReferenceType> getThrownExceptions() {
        return this.thrownExceptions;
    }

    @Override
    public NodeList<TypeParameter> getTypeParameters() {
        return this.typeParameters;
    }

    @Override
    public void ifCallableDeclaration(Consumer<CallableDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isCallableDeclaration() {
        return true;
    }

    public boolean isFixedArityMethod() {
        return !isVariableArityMethod();
    }

    public boolean isVariableArityMethod() {
        return getParameters().size() > 0 && getParameters().getLast().get().isVarArgs();
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
        for (int i11 = 0; i11 < this.parameters.size(); i11++) {
            if (this.parameters.get(i11) == node) {
                this.parameters.remove(i11);
                return true;
            }
        }
        ReceiverParameter receiverParameter = this.receiverParameter;
        if (receiverParameter != null && node == receiverParameter) {
            removeReceiverParameter();
            return true;
        }
        for (int i12 = 0; i12 < this.thrownExceptions.size(); i12++) {
            if (this.thrownExceptions.get(i12) == node) {
                this.thrownExceptions.remove(i12);
                return true;
            }
        }
        for (int i13 = 0; i13 < this.typeParameters.size(); i13++) {
            if (this.typeParameters.get(i13) == node) {
                this.typeParameters.remove(i13);
                return true;
            }
        }
        return super.remove(node);
    }

    public CallableDeclaration removeReceiverParameter() {
        return setReceiverParameter(null);
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
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        for (int i11 = 0; i11 < this.parameters.size(); i11++) {
            if (this.parameters.get(i11) == node) {
                this.parameters.set(i11, (int) replacementNode);
                return true;
            }
        }
        ReceiverParameter receiverParameter = this.receiverParameter;
        if (receiverParameter != null && node == receiverParameter) {
            setReceiverParameter((ReceiverParameter) replacementNode);
            return true;
        }
        for (int i12 = 0; i12 < this.thrownExceptions.size(); i12++) {
            if (this.thrownExceptions.get(i12) == node) {
                this.thrownExceptions.set(i12, (int) replacementNode);
                return true;
            }
        }
        for (int i13 = 0; i13 < this.typeParameters.size(); i13++) {
            if (this.typeParameters.get(i13) == node) {
                this.typeParameters.set(i13, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public Node setParameters(final NodeList parameters) {
        return setParameters((NodeList<Parameter>) parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T setReceiverParameter(final ReceiverParameter receiverParameter) {
        ReceiverParameter receiverParameter2 = this.receiverParameter;
        if (receiverParameter == receiverParameter2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.RECEIVER_PARAMETER, receiverParameter2, receiverParameter);
        ReceiverParameter receiverParameter3 = this.receiverParameter;
        if (receiverParameter3 != null) {
            receiverParameter3.setParentNode((Node) null);
        }
        this.receiverParameter = receiverParameter;
        setAsParentNodeOf(receiverParameter);
        return this;
    }

    @Override
    public Node setThrownExceptions(final NodeList thrownExceptions) {
        return setThrownExceptions((NodeList<ReferenceType>) thrownExceptions);
    }

    @Override
    public Node setTypeParameters(final NodeList typeParameters) {
        return setTypeParameters((NodeList<TypeParameter>) typeParameters);
    }

    @Override
    public Optional<CallableDeclaration> toCallableDeclaration() {
        return Optional.of(this);
    }

    public CallableDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, SimpleName name, NodeList<Parameter> parameters, NodeList<ReferenceType> thrownExceptions, ReceiverParameter receiverParameter) {
        super(tokenRange, annotations);
        setModifiers(modifiers);
        setTypeParameters(typeParameters);
        setName(name);
        setParameters(parameters);
        setThrownExceptions(thrownExceptions);
        setReceiverParameter(receiverParameter);
        customInitialization();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T setModifiers(final NodeList<Modifier> modifiers) {
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T setName(final SimpleName name) {
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T setParameters(final NodeList<Parameter> parameters) {
        Utils.assertNotNull(parameters);
        NodeList<Parameter> nodeList = this.parameters;
        if (parameters == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PARAMETERS, nodeList, parameters);
        NodeList<Parameter> nodeList2 = this.parameters;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.parameters = parameters;
        setAsParentNodeOf(parameters);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T setThrownExceptions(final NodeList<ReferenceType> thrownExceptions) {
        Utils.assertNotNull(thrownExceptions);
        NodeList<ReferenceType> nodeList = this.thrownExceptions;
        if (thrownExceptions == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.THROWN_EXCEPTIONS, nodeList, thrownExceptions);
        NodeList<ReferenceType> nodeList2 = this.thrownExceptions;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.thrownExceptions = thrownExceptions;
        setAsParentNodeOf(thrownExceptions);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T setTypeParameters(final NodeList<TypeParameter> typeParameters) {
        Utils.assertNotNull(typeParameters);
        NodeList<TypeParameter> nodeList = this.typeParameters;
        if (typeParameters == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE_PARAMETERS, nodeList, typeParameters);
        NodeList<TypeParameter> nodeList2 = this.typeParameters;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.typeParameters = typeParameters;
        setAsParentNodeOf(typeParameters);
        return this;
    }

    @Override
    public CallableDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.callableDeclarationMetaModel;
    }

    @Override
    public CallableDeclaration<?> mo1220clone() {
        return (CallableDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
