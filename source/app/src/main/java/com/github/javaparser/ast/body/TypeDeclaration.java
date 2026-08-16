package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.PackageDeclaration;
import com.github.javaparser.ast.body.CallableDeclaration;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.nodeTypes.NodeWithMembers;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAccessModifiers;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStaticModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStrictfpModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.TypeDeclarationMetaModel;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public abstract class TypeDeclaration<T extends TypeDeclaration<?>> extends BodyDeclaration<T> implements NodeWithSimpleName<T>, NodeWithJavadoc<T>, NodeWithMembers<T>, NodeWithAccessModifiers<T>, NodeWithStaticModifier<T>, NodeWithStrictfpModifier<T> {
    private NodeList<BodyDeclaration<?>> members;
    private NodeList<Modifier> modifiers;
    private SimpleName name;

    public TypeDeclaration() {
        this(null, new NodeList(), new NodeList(), new SimpleName(), new NodeList());
    }

    public static boolean lambda$getCallablesWithSignature$1(BodyDeclaration m10) {
        return m10 instanceof CallableDeclaration;
    }

    public static CallableDeclaration lambda$getCallablesWithSignature$2(BodyDeclaration m10) {
        return (CallableDeclaration) m10;
    }

    public static boolean lambda$getCallablesWithSignature$3(final CallableDeclaration.Signature signature, CallableDeclaration m10) {
        return m10.getSignature().equals(signature);
    }

    public Optional lambda$getFullyQualifiedName$10(TypeDeclaration td2) {
        return td2.getFullyQualifiedName().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$null$9;
                lambda$null$9 = TypeDeclaration.this.lambda$null$9((String) obj);
                return lambda$null$9;
            }
        });
    }

    public String lambda$getFullyQualifiedName$7(CompilationUnit cu) {
        return (String) cu.getPackageDeclaration().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String nameAsString;
                nameAsString = ((PackageDeclaration) obj).getNameAsString();
                return nameAsString;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$null$5;
                lambda$null$5 = TypeDeclaration.this.lambda$null$5((String) obj);
                return lambda$null$5;
            }
        }).orElseGet(new Supplier() {
            @Override
            public final Object get() {
                String lambda$null$6;
                lambda$null$6 = TypeDeclaration.this.lambda$null$6();
                return lambda$null$6;
            }
        });
    }

    public static TypeDeclaration lambda$getFullyQualifiedName$8(TypeDeclaration td2) {
        return td2;
    }

    public static Boolean lambda$isNestedType$11(Node p10) {
        return Boolean.valueOf(p10 instanceof TypeDeclaration);
    }

    public static Boolean lambda$isTopLevelType$0(Node p10) {
        return Boolean.valueOf(p10 instanceof CompilationUnit);
    }

    public String lambda$null$5(String pkg) {
        return pkg + "." + getNameAsString();
    }

    public String lambda$null$6() {
        return getNameAsString();
    }

    public String lambda$null$9(String fqn) {
        return fqn + "." + getNameAsString();
    }

    @Override
    public Node addMember(BodyDeclaration decl) {
        return addMember((BodyDeclaration<?>) decl);
    }

    @Override
    public TypeDeclaration asTypeDeclaration() {
        return this;
    }

    public List<CallableDeclaration<?>> getCallablesWithSignature(final CallableDeclaration.Signature signature) {
        return (List) getMembers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getCallablesWithSignature$1;
                lambda$getCallablesWithSignature$1 = TypeDeclaration.lambda$getCallablesWithSignature$1((BodyDeclaration) obj);
                return lambda$getCallablesWithSignature$1;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                CallableDeclaration lambda$getCallablesWithSignature$2;
                lambda$getCallablesWithSignature$2 = TypeDeclaration.lambda$getCallablesWithSignature$2((BodyDeclaration) obj);
                return lambda$getCallablesWithSignature$2;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getCallablesWithSignature$3;
                lambda$getCallablesWithSignature$3 = TypeDeclaration.lambda$getCallablesWithSignature$3(CallableDeclaration.Signature.this, (CallableDeclaration) obj);
                return lambda$getCallablesWithSignature$3;
            }
        }).collect(Collectors.toList());
    }

    public Optional<String> getFullyQualifiedName() {
        return isTopLevelType() ? findCompilationUnit().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$getFullyQualifiedName$7;
                lambda$getFullyQualifiedName$7 = TypeDeclaration.this.lambda$getFullyQualifiedName$7((CompilationUnit) obj);
                return lambda$getFullyQualifiedName$7;
            }
        }) : findAncestor(TypeDeclaration.class).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                TypeDeclaration lambda$getFullyQualifiedName$8;
                lambda$getFullyQualifiedName$8 = TypeDeclaration.lambda$getFullyQualifiedName$8((TypeDeclaration) obj);
                return lambda$getFullyQualifiedName$8;
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$getFullyQualifiedName$10;
                lambda$getFullyQualifiedName$10 = TypeDeclaration.this.lambda$getFullyQualifiedName$10((TypeDeclaration) obj);
                return lambda$getFullyQualifiedName$10;
            }
        });
    }

    @Override
    public NodeList<BodyDeclaration<?>> getMembers() {
        return this.members;
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
    public void ifTypeDeclaration(Consumer<TypeDeclaration> action) {
        action.accept(this);
    }

    public boolean isNestedType() {
        return ((Boolean) getParentNode().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean lambda$isNestedType$11;
                lambda$isNestedType$11 = TypeDeclaration.lambda$isNestedType$11((Node) obj);
                return lambda$isNestedType$11;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isTopLevelType() {
        return ((Boolean) getParentNode().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean lambda$isTopLevelType$0;
                lambda$isTopLevelType$0 = TypeDeclaration.lambda$isTopLevelType$0((Node) obj);
                return lambda$isTopLevelType$0;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    @Override
    public boolean isTypeDeclaration() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.members.size(); i10++) {
            if (this.members.get(i10) == node) {
                this.members.remove(i10);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.modifiers.size(); i11++) {
            if (this.modifiers.get(i11) == node) {
                this.modifiers.remove(i11);
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
        for (int i10 = 0; i10 < this.members.size(); i10++) {
            if (this.members.get(i10) == node) {
                this.members.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.modifiers.size(); i11++) {
            if (this.modifiers.get(i11) == node) {
                this.modifiers.set(i11, (int) replacementNode);
                return true;
            }
        }
        if (node != this.name) {
            return super.replace(node, replacementNode);
        }
        setName((SimpleName) replacementNode);
        return true;
    }

    public abstract ResolvedReferenceTypeDeclaration resolve();

    @Override
    public Node setMembers(final NodeList members) {
        return setMembers((NodeList<BodyDeclaration<?>>) members);
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public Optional<TypeDeclaration> toTypeDeclaration() {
        return Optional.of(this);
    }

    public TypeDeclaration(NodeList<Modifier> modifiers, String name) {
        this(null, modifiers, new NodeList(), new SimpleName(name), new NodeList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T addMember(BodyDeclaration<?> decl) {
        getMembers().add((NodeList<BodyDeclaration<?>>) decl);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T setMembers(final NodeList<BodyDeclaration<?>> members) {
        Utils.assertNotNull(members);
        NodeList<BodyDeclaration<?>> nodeList = this.members;
        if (members == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.MEMBERS, nodeList, members);
        NodeList<BodyDeclaration<?>> nodeList2 = this.members;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.members = members;
        setAsParentNodeOf(members);
        return this;
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

    @AllFieldsConstructor
    public TypeDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<BodyDeclaration<?>> members) {
        this(null, modifiers, annotations, name, members);
    }

    @Override
    public TypeDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.typeDeclarationMetaModel;
    }

    public TypeDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, SimpleName name, NodeList<BodyDeclaration<?>> members) {
        super(tokenRange, annotations);
        setModifiers(modifiers);
        setName(name);
        setMembers(members);
        customInitialization();
    }

    @Override
    public TypeDeclaration<?> mo1220clone() {
        return (TypeDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
