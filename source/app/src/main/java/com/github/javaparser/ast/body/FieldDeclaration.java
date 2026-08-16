package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.AssignExpr;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.nodeTypes.NodeWithVariables;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAccessModifiers;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStaticModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.ReturnStmt;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.VoidType;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.FieldDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedFieldDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class FieldDeclaration extends BodyDeclaration<FieldDeclaration> implements NodeWithJavadoc<FieldDeclaration>, NodeWithVariables<FieldDeclaration>, NodeWithAccessModifiers<FieldDeclaration>, NodeWithStaticModifier<FieldDeclaration>, NodeWithFinalModifier<FieldDeclaration>, Resolvable<ResolvedFieldDeclaration> {
    private NodeList<Modifier> modifiers;

    @NonEmptyProperty
    private NodeList<VariableDeclarator> variables;

    public FieldDeclaration() {
        this(null, new NodeList(), new NodeList(), new NodeList());
    }

    private boolean isDeclaredInInterface() {
        return ((Boolean) findAncestor(TypeDeclaration.class).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((TypeDeclaration) obj).isClassOrInterfaceDeclaration();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((TypeDeclaration) obj).asClassOrInterfaceDeclaration();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((ClassOrInterfaceDeclaration) obj).isInterface());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public static MethodDeclaration lambda$createGetter$0(final String fieldNameUpper, ClassOrInterfaceDeclaration clazz) {
        return clazz.addMethod("get" + fieldNameUpper, Modifier.Keyword.PUBLIC);
    }

    public static MethodDeclaration lambda$createGetter$1(final Optional parentEnum, final String fieldNameUpper) {
        return ((EnumDeclaration) parentEnum.get()).addMethod("get" + fieldNameUpper, Modifier.Keyword.PUBLIC);
    }

    public static MethodDeclaration lambda$createSetter$2(final String fieldNameUpper, ClassOrInterfaceDeclaration clazz) {
        return clazz.addMethod("set" + fieldNameUpper, Modifier.Keyword.PUBLIC);
    }

    public static MethodDeclaration lambda$createSetter$3(final Optional parentEnum, final String fieldNameUpper) {
        return ((EnumDeclaration) parentEnum.get()).addMethod("set" + fieldNameUpper, Modifier.Keyword.PUBLIC);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (FieldDeclaration) arg);
    }

    @Override
    public FieldDeclaration asFieldDeclaration() {
        return this;
    }

    public MethodDeclaration createGetter() {
        if (getVariables().size() != 1) {
            throw new IllegalStateException("You can use this only when the field declares only 1 variable name");
        }
        Optional<N> findAncestor = findAncestor(ClassOrInterfaceDeclaration.class);
        final Optional<N> findAncestor2 = findAncestor(EnumDeclaration.class);
        if ((!findAncestor.isPresent() && !findAncestor2.isPresent()) || (findAncestor.isPresent() && ((ClassOrInterfaceDeclaration) findAncestor.get()).isInterface())) {
            throw new IllegalStateException("You can use this only when the field is attached to a class or an enum");
        }
        VariableDeclarator variable = getVariable(0);
        String nameAsString = variable.getNameAsString();
        final String str = nameAsString.toUpperCase().substring(0, 1) + nameAsString.substring(1, nameAsString.length());
        MethodDeclaration methodDeclaration = (MethodDeclaration) findAncestor.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                MethodDeclaration lambda$createGetter$0;
                lambda$createGetter$0 = FieldDeclaration.lambda$createGetter$0(String.this, (ClassOrInterfaceDeclaration) obj);
                return lambda$createGetter$0;
            }
        }).orElseGet(new Supplier() {
            @Override
            public final Object get() {
                MethodDeclaration lambda$createGetter$1;
                lambda$createGetter$1 = FieldDeclaration.lambda$createGetter$1(Optional.this, str);
                return lambda$createGetter$1;
            }
        });
        methodDeclaration.setType(variable.getType2());
        BlockStmt blockStmt = new BlockStmt();
        methodDeclaration.setBody(blockStmt);
        blockStmt.addStatement(new ReturnStmt(nameAsString));
        return methodDeclaration;
    }

    public MethodDeclaration createSetter() {
        if (getVariables().size() != 1) {
            throw new IllegalStateException("You can use this only when the field declares only 1 variable name");
        }
        Optional<N> findAncestor = findAncestor(ClassOrInterfaceDeclaration.class);
        final Optional<N> findAncestor2 = findAncestor(EnumDeclaration.class);
        if ((!findAncestor.isPresent() && !findAncestor2.isPresent()) || (findAncestor.isPresent() && ((ClassOrInterfaceDeclaration) findAncestor.get()).isInterface())) {
            throw new IllegalStateException("You can use this only when the field is attached to a class or an enum");
        }
        VariableDeclarator variable = getVariable(0);
        String nameAsString = variable.getNameAsString();
        final String str = nameAsString.toUpperCase().substring(0, 1) + nameAsString.substring(1, nameAsString.length());
        MethodDeclaration methodDeclaration = (MethodDeclaration) findAncestor.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                MethodDeclaration lambda$createSetter$2;
                lambda$createSetter$2 = FieldDeclaration.lambda$createSetter$2(String.this, (ClassOrInterfaceDeclaration) obj);
                return lambda$createSetter$2;
            }
        }).orElseGet(new Supplier() {
            @Override
            public final Object get() {
                MethodDeclaration lambda$createSetter$3;
                lambda$createSetter$3 = FieldDeclaration.lambda$createSetter$3(Optional.this, str);
                return lambda$createSetter$3;
            }
        });
        methodDeclaration.setType((Type) new VoidType());
        methodDeclaration.getParameters().add((NodeList<Parameter>) new Parameter(variable.getType2(), nameAsString));
        BlockStmt blockStmt = new BlockStmt();
        methodDeclaration.setBody(blockStmt);
        blockStmt.addStatement(new AssignExpr(new NameExpr("this." + nameAsString), new NameExpr(nameAsString), AssignExpr.Operator.ASSIGN));
        return methodDeclaration;
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
    public void ifFieldDeclaration(Consumer<FieldDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isFieldDeclaration() {
        return true;
    }

    @Override
    public boolean isFinal() {
        return hasModifier(Modifier.Keyword.FINAL) || isDeclaredInInterface();
    }

    @Override
    public boolean isPublic() {
        return hasModifier(Modifier.Keyword.PUBLIC) || isDeclaredInInterface();
    }

    @Override
    public boolean isStatic() {
        return hasModifier(Modifier.Keyword.STATIC) || isDeclaredInInterface();
    }

    public boolean isTransient() {
        return hasModifier(Modifier.Keyword.TRANSIENT);
    }

    public boolean isVolatile() {
        return hasModifier(Modifier.Keyword.VOLATILE);
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
        for (int i11 = 0; i11 < this.variables.size(); i11++) {
            if (this.variables.get(i11) == node) {
                this.variables.remove(i11);
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
        for (int i11 = 0; i11 < this.variables.size(); i11++) {
            if (this.variables.get(i11) == node) {
                this.variables.set(i11, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldDeclaration setTransient(boolean set) {
        return (FieldDeclaration) setModifier(Modifier.Keyword.TRANSIENT, set);
    }

    @Override
    public FieldDeclaration setVariables(final NodeList variables) {
        return setVariables2((NodeList<VariableDeclarator>) variables);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldDeclaration setVolatile(boolean set) {
        return (FieldDeclaration) setModifier(Modifier.Keyword.VOLATILE, set);
    }

    @Override
    public Optional<FieldDeclaration> toFieldDeclaration() {
        return Optional.of(this);
    }

    public FieldDeclaration(NodeList<Modifier> modifiers, VariableDeclarator variable) {
        this(null, modifiers, new NodeList(), NodeList.nodeList(variable));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (FieldDeclaration) arg);
    }

    @Override
    public ResolvedFieldDeclaration resolve() {
        return (ResolvedFieldDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedFieldDeclaration.class);
    }

    @Override
    public FieldDeclaration setModifiers(final NodeList<Modifier> modifiers) {
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
    public FieldDeclaration setVariables2(final NodeList<VariableDeclarator> variables) {
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

    public FieldDeclaration(NodeList<Modifier> modifiers, NodeList<VariableDeclarator> variables) {
        this(null, modifiers, new NodeList(), variables);
    }

    @Override
    public FieldDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.fieldDeclarationMetaModel;
    }

    @AllFieldsConstructor
    public FieldDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<VariableDeclarator> variables) {
        this(null, modifiers, annotations, variables);
    }

    @Override
    public FieldDeclaration mo1220clone() {
        return (FieldDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public FieldDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<VariableDeclarator> variables) {
        super(tokenRange, annotations);
        setModifiers(modifiers);
        setVariables2(variables);
        customInitialization();
    }

    public FieldDeclaration(NodeList<Modifier> modifiers, Type type, String name) {
        this((NodeList<Modifier>) Utils.assertNotNull(modifiers), new VariableDeclarator(type, (String) Utils.assertNotNull(name)));
    }
}
