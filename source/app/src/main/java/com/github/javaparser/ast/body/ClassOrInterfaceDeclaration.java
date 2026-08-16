package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithExtends;
import com.github.javaparser.ast.nodeTypes.NodeWithImplements;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeParameters;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAbstractModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.LocalClassDeclarationStmt;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ClassOrInterfaceDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

public class ClassOrInterfaceDeclaration extends TypeDeclaration<ClassOrInterfaceDeclaration> implements NodeWithImplements<ClassOrInterfaceDeclaration>, NodeWithExtends<ClassOrInterfaceDeclaration>, NodeWithTypeParameters<ClassOrInterfaceDeclaration>, NodeWithAbstractModifier<ClassOrInterfaceDeclaration>, NodeWithFinalModifier<ClassOrInterfaceDeclaration>, Resolvable<ResolvedReferenceTypeDeclaration> {
    private NodeList<ClassOrInterfaceType> extendedTypes;
    private NodeList<ClassOrInterfaceType> implementedTypes;
    private boolean isInterface;
    private NodeList<ClassOrInterfaceType> permittedTypes;
    private NodeList<TypeParameter> typeParameters;

    public ClassOrInterfaceDeclaration() {
        this(null, new NodeList(), new NodeList(), false, new SimpleName(), new NodeList(), new NodeList(), new NodeList(), new NodeList(), new NodeList());
    }

    public static Boolean lambda$isLocalClassDeclaration$0(Node p10) {
        return Boolean.valueOf(p10 instanceof LocalClassDeclarationStmt);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ClassOrInterfaceDeclaration) arg);
    }

    @Override
    public ClassOrInterfaceDeclaration asClassOrInterfaceDeclaration() {
        return this;
    }

    @Override
    public NodeList<ClassOrInterfaceType> getExtendedTypes() {
        return this.extendedTypes;
    }

    @Override
    public Optional<String> getFullyQualifiedName() {
        return isLocalClassDeclaration() ? Optional.empty() : super.getFullyQualifiedName();
    }

    @Override
    public NodeList<ClassOrInterfaceType> getImplementedTypes() {
        return this.implementedTypes;
    }

    public NodeList<ClassOrInterfaceType> getPermittedTypes() {
        return this.permittedTypes;
    }

    @Override
    public NodeList<TypeParameter> getTypeParameters() {
        return this.typeParameters;
    }

    @Override
    public void ifClassOrInterfaceDeclaration(Consumer<ClassOrInterfaceDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isClassOrInterfaceDeclaration() {
        return true;
    }

    public boolean isInnerClass() {
        return (!isNestedType() || this.isInterface || isStatic()) ? false : true;
    }

    public boolean isInterface() {
        return this.isInterface;
    }

    public boolean isLocalClassDeclaration() {
        return ((Boolean) getParentNode().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean lambda$isLocalClassDeclaration$0;
                lambda$isLocalClassDeclaration$0 = ClassOrInterfaceDeclaration.lambda$isLocalClassDeclaration$0((Node) obj);
                return lambda$isLocalClassDeclaration$0;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.extendedTypes.size(); i10++) {
            if (this.extendedTypes.get(i10) == node) {
                this.extendedTypes.remove(i10);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.implementedTypes.size(); i11++) {
            if (this.implementedTypes.get(i11) == node) {
                this.implementedTypes.remove(i11);
                return true;
            }
        }
        for (int i12 = 0; i12 < this.permittedTypes.size(); i12++) {
            if (this.permittedTypes.get(i12) == node) {
                this.permittedTypes.remove(i12);
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

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.extendedTypes.size(); i10++) {
            if (this.extendedTypes.get(i10) == node) {
                this.extendedTypes.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.implementedTypes.size(); i11++) {
            if (this.implementedTypes.get(i11) == node) {
                this.implementedTypes.set(i11, (int) replacementNode);
                return true;
            }
        }
        for (int i12 = 0; i12 < this.permittedTypes.size(); i12++) {
            if (this.permittedTypes.get(i12) == node) {
                this.permittedTypes.set(i12, (int) replacementNode);
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
    public ClassOrInterfaceDeclaration setExtendedTypes(final NodeList extendedTypes) {
        return setExtendedTypes2((NodeList<ClassOrInterfaceType>) extendedTypes);
    }

    @Override
    public ClassOrInterfaceDeclaration setImplementedTypes(final NodeList implementedTypes) {
        return setImplementedTypes2((NodeList<ClassOrInterfaceType>) implementedTypes);
    }

    public ClassOrInterfaceDeclaration setInterface(final boolean isInterface) {
        boolean z10 = this.isInterface;
        if (isInterface == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.INTERFACE, Boolean.valueOf(z10), Boolean.valueOf(isInterface));
        this.isInterface = isInterface;
        return this;
    }

    public ClassOrInterfaceDeclaration setPermittedTypes(final NodeList<ClassOrInterfaceType> permittedTypes) {
        Utils.assertNotNull(permittedTypes);
        NodeList<ClassOrInterfaceType> nodeList = this.permittedTypes;
        if (permittedTypes == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PERMITTED_TYPES, nodeList, permittedTypes);
        NodeList<ClassOrInterfaceType> nodeList2 = this.permittedTypes;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.permittedTypes = permittedTypes;
        setAsParentNodeOf(permittedTypes);
        return this;
    }

    @Override
    public ClassOrInterfaceDeclaration setTypeParameters(final NodeList typeParameters) {
        return setTypeParameters2((NodeList<TypeParameter>) typeParameters);
    }

    @Override
    public Optional<ClassOrInterfaceDeclaration> toClassOrInterfaceDeclaration() {
        return Optional.of(this);
    }

    public ClassOrInterfaceDeclaration(final NodeList<Modifier> modifiers, final boolean isInterface, final String name) {
        this(null, modifiers, new NodeList(), isInterface, new SimpleName(name), new NodeList(), new NodeList(), new NodeList(), new NodeList(), new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ClassOrInterfaceDeclaration) arg);
    }

    @Override
    public ResolvedReferenceTypeDeclaration resolve() {
        return (ResolvedReferenceTypeDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedReferenceTypeDeclaration.class);
    }

    @Override
    public ClassOrInterfaceDeclaration setExtendedTypes2(final NodeList<ClassOrInterfaceType> extendedTypes) {
        Utils.assertNotNull(extendedTypes);
        NodeList<ClassOrInterfaceType> nodeList = this.extendedTypes;
        if (extendedTypes == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.EXTENDED_TYPES, nodeList, extendedTypes);
        NodeList<ClassOrInterfaceType> nodeList2 = this.extendedTypes;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.extendedTypes = extendedTypes;
        setAsParentNodeOf(extendedTypes);
        return this;
    }

    @Override
    public ClassOrInterfaceDeclaration setImplementedTypes2(final NodeList<ClassOrInterfaceType> implementedTypes) {
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
    public ClassOrInterfaceDeclaration setTypeParameters2(final NodeList<TypeParameter> typeParameters) {
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
    public ClassOrInterfaceDeclaration(final NodeList<Modifier> modifiers, final NodeList<AnnotationExpr> annotations, final boolean isInterface, final SimpleName name, final NodeList<TypeParameter> typeParameters, final NodeList<ClassOrInterfaceType> extendedTypes, final NodeList<ClassOrInterfaceType> implementedTypes, final NodeList<ClassOrInterfaceType> permittedTypes, final NodeList<BodyDeclaration<?>> members) {
        this(null, modifiers, annotations, isInterface, name, typeParameters, extendedTypes, implementedTypes, permittedTypes, members);
    }

    public ClassOrInterfaceDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, boolean isInterface, SimpleName name, NodeList<TypeParameter> typeParameters, NodeList<ClassOrInterfaceType> extendedTypes, NodeList<ClassOrInterfaceType> implementedTypes, NodeList<ClassOrInterfaceType> permittedTypes, NodeList<BodyDeclaration<?>> members) {
        super(tokenRange, modifiers, annotations, name, members);
        setInterface(isInterface);
        setTypeParameters2(typeParameters);
        setExtendedTypes2(extendedTypes);
        setImplementedTypes2(implementedTypes);
        setPermittedTypes(permittedTypes);
        customInitialization();
    }

    @Override
    public ClassOrInterfaceDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.classOrInterfaceDeclarationMetaModel;
    }

    @Override
    public ClassOrInterfaceDeclaration mo1220clone() {
        return (ClassOrInterfaceDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
