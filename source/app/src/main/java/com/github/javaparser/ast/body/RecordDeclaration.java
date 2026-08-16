package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithImplements;
import com.github.javaparser.ast.nodeTypes.NodeWithParameters;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeParameters;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.LocalRecordDeclarationStmt;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.metamodel.RecordDeclarationMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class RecordDeclaration extends TypeDeclaration<RecordDeclaration> implements NodeWithParameters<RecordDeclaration>, NodeWithImplements<RecordDeclaration>, NodeWithTypeParameters<RecordDeclaration>, NodeWithFinalModifier<RecordDeclaration>, Resolvable<ResolvedReferenceTypeDeclaration> {
    private NodeList<ClassOrInterfaceType> implementedTypes;
    private NodeList<Parameter> parameters;

    @OptionalProperty
    private ReceiverParameter receiverParameter;
    private NodeList<TypeParameter> typeParameters;

    public RecordDeclaration() {
        this(null, new NodeList(), new NodeList(), new SimpleName(), new NodeList(), new NodeList(), new NodeList(), new NodeList(), null);
    }

    public static boolean lambda$getCompactConstructors$1(BodyDeclaration m10) {
        return m10 instanceof CompactConstructorDeclaration;
    }

    public static CompactConstructorDeclaration lambda$getCompactConstructors$2(BodyDeclaration m10) {
        return (CompactConstructorDeclaration) m10;
    }

    public static Boolean lambda$isLocalRecordDeclaration$0(Node p10) {
        return Boolean.valueOf(p10 instanceof LocalRecordDeclarationStmt);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (RecordDeclaration) arg);
    }

    @Override
    public RecordDeclaration asRecordDeclaration() {
        return this;
    }

    public List<CompactConstructorDeclaration> getCompactConstructors() {
        return Collections.unmodifiableList((List) getMembers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getCompactConstructors$1;
                lambda$getCompactConstructors$1 = RecordDeclaration.lambda$getCompactConstructors$1((BodyDeclaration) obj);
                return lambda$getCompactConstructors$1;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                CompactConstructorDeclaration lambda$getCompactConstructors$2;
                lambda$getCompactConstructors$2 = RecordDeclaration.lambda$getCompactConstructors$2((BodyDeclaration) obj);
                return lambda$getCompactConstructors$2;
            }
        }).collect(Collectors.toList()));
    }

    @Override
    public Optional<String> getFullyQualifiedName() {
        return isLocalRecordDeclaration() ? Optional.empty() : super.getFullyQualifiedName();
    }

    @Override
    public NodeList<ClassOrInterfaceType> getImplementedTypes() {
        return this.implementedTypes;
    }

    @Override
    public NodeList<Parameter> getParameters() {
        return this.parameters;
    }

    public Optional<ReceiverParameter> getReceiverParameter() {
        return Optional.ofNullable(this.receiverParameter);
    }

    @Override
    public NodeList<TypeParameter> getTypeParameters() {
        return this.typeParameters;
    }

    @Override
    public void ifRecordDeclaration(Consumer<RecordDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isFinal() {
        return true;
    }

    public boolean isLocalRecordDeclaration() {
        return ((Boolean) getParentNode().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean lambda$isLocalRecordDeclaration$0;
                lambda$isLocalRecordDeclaration$0 = RecordDeclaration.lambda$isLocalRecordDeclaration$0((Node) obj);
                return lambda$isLocalRecordDeclaration$0;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    @Override
    public boolean isRecordDeclaration() {
        return true;
    }

    @Override
    public boolean isStatic() {
        if (!getParentNode().isPresent() || (getParentNode().get() instanceof CompilationUnit)) {
            return super.isStatic();
        }
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.implementedTypes.size(); i10++) {
            if (this.implementedTypes.get(i10) == node) {
                this.implementedTypes.remove(i10);
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
        for (int i12 = 0; i12 < this.typeParameters.size(); i12++) {
            if (this.typeParameters.get(i12) == node) {
                this.typeParameters.remove(i12);
                return true;
            }
        }
        return super.remove(node);
    }

    public RecordDeclaration removeReceiverParameter() {
        return setReceiverParameter(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.implementedTypes.size(); i10++) {
            if (this.implementedTypes.get(i10) == node) {
                this.implementedTypes.set(i10, (int) replacementNode);
                return true;
            }
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
        for (int i12 = 0; i12 < this.typeParameters.size(); i12++) {
            if (this.typeParameters.get(i12) == node) {
                this.typeParameters.set(i12, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public RecordDeclaration setImplementedTypes(final NodeList implementedTypes) {
        return setImplementedTypes2((NodeList<ClassOrInterfaceType>) implementedTypes);
    }

    @Override
    public RecordDeclaration setParameters(final NodeList parameters) {
        return setParameters2((NodeList<Parameter>) parameters);
    }

    public RecordDeclaration setReceiverParameter(final ReceiverParameter receiverParameter) {
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
    public RecordDeclaration setTypeParameters(final NodeList typeParameters) {
        return setTypeParameters2((NodeList<TypeParameter>) typeParameters);
    }

    @Override
    public Optional<RecordDeclaration> toRecordDeclaration() {
        return Optional.of(this);
    }

    public RecordDeclaration(final NodeList<Modifier> modifiers, final String name) {
        this(null, modifiers, new NodeList(), new SimpleName(name), new NodeList(), new NodeList(), new NodeList(), new NodeList(), null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (RecordDeclaration) arg);
    }

    @Override
    public ResolvedReferenceTypeDeclaration resolve() {
        return (ResolvedReferenceTypeDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedReferenceTypeDeclaration.class);
    }

    @Override
    public RecordDeclaration setImplementedTypes2(final NodeList<ClassOrInterfaceType> implementedTypes) {
        Utils.assertNotNull(implementedTypes);
        NodeList<ClassOrInterfaceType> nodeList = this.implementedTypes;
        if (implementedTypes == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.IMPLEMENTED_TYPES, nodeList, implementedTypes);
        NodeList<ClassOrInterfaceType> nodeList2 = this.implementedTypes;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.implementedTypes = implementedTypes;
        setAsParentNodeOf(implementedTypes);
        return this;
    }

    @Override
    public RecordDeclaration setParameters2(final NodeList<Parameter> parameters) {
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

    @Override
    public RecordDeclaration setTypeParameters2(final NodeList<TypeParameter> typeParameters) {
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

    @AllFieldsConstructor
    public RecordDeclaration(final NodeList<Modifier> modifiers, final NodeList<AnnotationExpr> annotations, final SimpleName name, final NodeList<Parameter> parameters, final NodeList<TypeParameter> typeParameters, final NodeList<ClassOrInterfaceType> implementedTypes, final NodeList<BodyDeclaration<?>> members, final ReceiverParameter receiverParameter) {
        this(null, modifiers, annotations, name, parameters, typeParameters, implementedTypes, members, receiverParameter);
    }

    public RecordDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<Parameter> parameters, NodeList<TypeParameter> typeParameters, NodeList<ClassOrInterfaceType> implementedTypes, NodeList<BodyDeclaration<?>> members, ReceiverParameter receiverParameter) {
        super(tokenRange, modifiers, annotations, name, members);
        setParameters2(parameters);
        setTypeParameters2(typeParameters);
        setImplementedTypes2(implementedTypes);
        setReceiverParameter(receiverParameter);
        customInitialization();
    }

    @Override
    public RecordDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.recordDeclarationMetaModel;
    }

    @Override
    public RecordDeclaration mo1220clone() {
        return (RecordDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
