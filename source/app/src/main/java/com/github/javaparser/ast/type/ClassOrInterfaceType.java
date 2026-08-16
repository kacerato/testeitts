package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ClassOrInterfaceTypeMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.UnsolvedSymbolException;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeDeclaration;
import com.github.javaparser.resolution.model.SymbolReference;
import com.github.javaparser.resolution.model.typesystem.ReferenceTypeImpl;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeVariable;
import com.github.javaparser.utils.Utils;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.tools.doclint.DocLint;

public class ClassOrInterfaceType extends ReferenceType implements NodeWithSimpleName<ClassOrInterfaceType>, NodeWithAnnotations<ClassOrInterfaceType>, NodeWithTypeArguments<ClassOrInterfaceType> {
    private SimpleName name;

    @OptionalProperty
    private ClassOrInterfaceType scope;

    @OptionalProperty
    private NodeList<Type> typeArguments;

    public ClassOrInterfaceType() {
        this(null, null, new SimpleName(), null, new NodeList());
    }

    public static void lambda$asString$1(final StringBuilder str, ClassOrInterfaceType s10) {
        str.append(s10.asString());
        str.append(".");
    }

    public static void lambda$asString$2(final StringBuilder str, NodeList ta2) {
        str.append((String) ta2.stream().map(new com.github.javaparser.ast.body.d()).collect(Collectors.joining(DocLint.SEPARATOR, "<", ">")));
    }

    public static ResolvedType lambda$convertToUsage$3(final Context context, Type pt) {
        return pt.convertToUsage(context);
    }

    public static void lambda$getNameWithScope$0(final StringBuilder str, ClassOrInterfaceType s10) {
        str.append(s10.getNameWithScope());
        str.append(".");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ClassOrInterfaceType) arg);
    }

    @Override
    public ClassOrInterfaceType asClassOrInterfaceType() {
        return this;
    }

    @Override
    public String asString() {
        final StringBuilder sb2 = new StringBuilder();
        getScope().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ClassOrInterfaceType.lambda$asString$1(StringBuilder.this, (ClassOrInterfaceType) obj);
            }
        });
        sb2.append(this.name.asString());
        getTypeArguments().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ClassOrInterfaceType.lambda$asString$2(StringBuilder.this, (NodeList) obj);
            }
        });
        return sb2.toString();
    }

    @Override
    public ResolvedType convertToUsage(final Context context) {
        String nameWithScope = getNameWithScope();
        SymbolReference<ResolvedTypeDeclaration> solveType = context.solveType(nameWithScope);
        if (!solveType.isSolved()) {
            throw new UnsolvedSymbolException(nameWithScope);
        }
        ResolvedTypeDeclaration correspondingDeclaration = solveType.getCorrespondingDeclaration();
        List emptyList = Collections.emptyList();
        if (getTypeArguments().isPresent()) {
            emptyList = (List) getTypeArguments().get().stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    ResolvedType lambda$convertToUsage$3;
                    lambda$convertToUsage$3 = ClassOrInterfaceType.lambda$convertToUsage$3(Context.this, (Type) obj);
                    return lambda$convertToUsage$3;
                }
            }).collect(Collectors.toList());
        }
        return correspondingDeclaration.isTypeParameter() ? new ResolvedTypeVariable(correspondingDeclaration.asTypeParameter()) : new ReferenceTypeImpl((ResolvedReferenceTypeDeclaration) correspondingDeclaration, emptyList);
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    public String getNameWithScope() {
        final StringBuilder sb2 = new StringBuilder();
        getScope().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ClassOrInterfaceType.lambda$getNameWithScope$0(StringBuilder.this, (ClassOrInterfaceType) obj);
            }
        });
        sb2.append(this.name.asString());
        return sb2.toString();
    }

    public Optional<ClassOrInterfaceType> getScope() {
        return Optional.ofNullable(this.scope);
    }

    @Override
    public Optional<NodeList<Type>> getTypeArguments() {
        return Optional.ofNullable(this.typeArguments);
    }

    @Override
    public void ifClassOrInterfaceType(Consumer<ClassOrInterfaceType> action) {
        action.accept(this);
    }

    public boolean isBoxedType() {
        return PrimitiveType.unboxMap.containsKey(this.name.getIdentifier());
    }

    @Override
    public boolean isClassOrInterfaceType() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        ClassOrInterfaceType classOrInterfaceType = this.scope;
        if (classOrInterfaceType != null && node == classOrInterfaceType) {
            removeScope();
            return true;
        }
        if (this.typeArguments != null) {
            for (int i10 = 0; i10 < this.typeArguments.size(); i10++) {
                if (this.typeArguments.get(i10) == node) {
                    this.typeArguments.remove(i10);
                    return true;
                }
            }
        }
        return super.remove(node);
    }

    public ClassOrInterfaceType removeScope() {
        return setScope(null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        ClassOrInterfaceType classOrInterfaceType = this.scope;
        if (classOrInterfaceType != null && node == classOrInterfaceType) {
            setScope((ClassOrInterfaceType) replacementNode);
            return true;
        }
        if (this.typeArguments != null) {
            for (int i10 = 0; i10 < this.typeArguments.size(); i10++) {
                if (this.typeArguments.get(i10) == node) {
                    this.typeArguments.set(i10, (int) replacementNode);
                    return true;
                }
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public ClassOrInterfaceType setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public ClassOrInterfaceType setScope(final ClassOrInterfaceType scope) {
        ClassOrInterfaceType classOrInterfaceType = this.scope;
        if (scope == classOrInterfaceType) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.SCOPE, classOrInterfaceType, scope);
        ClassOrInterfaceType classOrInterfaceType2 = this.scope;
        if (classOrInterfaceType2 != null) {
            classOrInterfaceType2.setParentNode((Node) null);
        }
        this.scope = scope;
        setAsParentNodeOf(scope);
        return this;
    }

    @Override
    public ClassOrInterfaceType setTypeArguments(final NodeList typeArguments) {
        return setTypeArguments2((NodeList<Type>) typeArguments);
    }

    @Override
    public Optional<ClassOrInterfaceType> toClassOrInterfaceType() {
        return Optional.of(this);
    }

    @Override
    public String toDescriptor() {
        return String.format("L%s;", resolve().erasure().asReferenceType().getQualifiedName().replace(".", "/"));
    }

    public PrimitiveType toUnboxedType() throws UnsupportedOperationException {
        if (isBoxedType()) {
            return new PrimitiveType(PrimitiveType.unboxMap.get(this.name.getIdentifier()));
        }
        throw new UnsupportedOperationException(((Object) this.name) + " isn't a boxed type.");
    }

    public ClassOrInterfaceType(final String name) {
        this(null, null, new SimpleName(name), null, new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ClassOrInterfaceType) arg);
    }

    @Override
    public ResolvedType resolve() {
        return (ResolvedType) getSymbolResolver().toResolvedType(this, ResolvedType.class);
    }

    @Override
    public Type setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public ClassOrInterfaceType setName(final SimpleName name) {
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
    public ClassOrInterfaceType setTypeArguments2(final NodeList<Type> typeArguments) {
        NodeList<Type> nodeList = this.typeArguments;
        if (typeArguments == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE_ARGUMENTS, nodeList, typeArguments);
        NodeList<Type> nodeList2 = this.typeArguments;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.typeArguments = typeArguments;
        setAsParentNodeOf(typeArguments);
        return this;
    }

    public ClassOrInterfaceType(final ClassOrInterfaceType scope, final String name) {
        this(null, scope, new SimpleName(name), null, new NodeList());
    }

    @Override
    public ClassOrInterfaceType setAnnotations2(NodeList<AnnotationExpr> annotations) {
        return (ClassOrInterfaceType) super.setAnnotations(annotations);
    }

    public ClassOrInterfaceType(final ClassOrInterfaceType scope, final SimpleName name, final NodeList<Type> typeArguments) {
        this(null, scope, name, typeArguments, new NodeList());
    }

    @Override
    public ClassOrInterfaceTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.classOrInterfaceTypeMetaModel;
    }

    @AllFieldsConstructor
    public ClassOrInterfaceType(final ClassOrInterfaceType scope, final SimpleName name, final NodeList<Type> typeArguments, final NodeList<AnnotationExpr> annotations) {
        this(null, scope, name, typeArguments, annotations);
    }

    @Override
    public ClassOrInterfaceType mo1220clone() {
        return (ClassOrInterfaceType) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public ClassOrInterfaceType(TokenRange tokenRange, ClassOrInterfaceType scope, SimpleName name, NodeList<Type> typeArguments, NodeList<AnnotationExpr> annotations) {
        super(tokenRange, annotations);
        setScope(scope);
        setName(name);
        setTypeArguments2(typeArguments);
        customInitialization();
    }
}
