package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AccessSpecifier;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithDeclaration;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.nodeTypes.NodeWithOptionalBlockStmt;
import com.github.javaparser.ast.nodeTypes.NodeWithParameters;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithThrownExceptions;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeParameters;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAbstractModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAccessModifiers;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithFinalModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStaticModifier;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithStrictfpModifier;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.MethodDeclarationMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.printer.configuration.PrinterConfiguration;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class MethodDeclaration extends CallableDeclaration<MethodDeclaration> implements NodeWithType<MethodDeclaration, Type>, NodeWithOptionalBlockStmt<MethodDeclaration>, NodeWithJavadoc<MethodDeclaration>, NodeWithDeclaration, NodeWithSimpleName<MethodDeclaration>, NodeWithParameters<MethodDeclaration>, NodeWithThrownExceptions<MethodDeclaration>, NodeWithTypeParameters<MethodDeclaration>, NodeWithAccessModifiers<MethodDeclaration>, NodeWithAbstractModifier<MethodDeclaration>, NodeWithStaticModifier<MethodDeclaration>, NodeWithFinalModifier<MethodDeclaration>, NodeWithStrictfpModifier<MethodDeclaration>, Resolvable<ResolvedMethodDeclaration> {

    @OptionalProperty
    private BlockStmt body;
    private Type type;

    public MethodDeclaration() {
        this(null, new NodeList(), new NodeList(), new NodeList(), new ClassOrInterfaceType(), new SimpleName(), new NodeList(), new NodeList(), new BlockStmt(), null);
    }

    private boolean isImplicitlyAbstract() {
        return hasParentNode() && (getParentNode().get() instanceof ClassOrInterfaceDeclaration) && ((ClassOrInterfaceDeclaration) getParentNode().get()).isInterface() && Arrays.asList(Modifier.Keyword.STATIC, Modifier.Keyword.DEFAULT, Modifier.Keyword.PRIVATE).stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isImplicitlyAbstract$0;
                lambda$isImplicitlyAbstract$0 = MethodDeclaration.this.lambda$isImplicitlyAbstract$0((Modifier.Keyword) obj);
                return lambda$isImplicitlyAbstract$0;
            }
        });
    }

    private boolean isImplicitlyPublic() {
        return getAccessSpecifier() == AccessSpecifier.NONE && hasParentNode() && (getParentNode().get() instanceof ClassOrInterfaceDeclaration) && ((ClassOrInterfaceDeclaration) getParentNode().get()).isInterface();
    }

    public boolean lambda$isImplicitlyAbstract$0(Modifier.Keyword modifier) {
        return hasModifier(modifier);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (MethodDeclaration) arg);
    }

    @Override
    public MethodDeclaration asMethodDeclaration() {
        return this;
    }

    @Override
    public Optional<BlockStmt> getBody() {
        return Optional.ofNullable(this.body);
    }

    @Override
    public String getDeclarationAsString(boolean includingModifiers, boolean includingThrows, boolean includingParameterName) {
        StringBuilder sb2 = new StringBuilder();
        if (includingModifiers) {
            sb2.append(getAccessSpecifier().asString());
            sb2.append(" ");
            if (isStatic()) {
                sb2.append("static ");
            }
            if (isAbstract()) {
                sb2.append("abstract ");
            }
            if (isFinal()) {
                sb2.append("final ");
            }
            if (isNative()) {
                sb2.append("native ");
            }
            if (isSynchronized()) {
                sb2.append("synchronized ");
            }
        }
        Type type2 = getType2();
        PrinterConfiguration printerConfiguration = Node.prettyPrinterNoCommentsConfiguration;
        sb2.append(type2.toString(printerConfiguration));
        sb2.append(" ");
        sb2.append(getName().toString(printerConfiguration));
        sb2.append("(");
        Iterator<Parameter> it = getParameters().iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            Parameter next = it.next();
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            if (includingParameterName) {
                sb2.append(next.toString(Node.prettyPrinterNoCommentsConfiguration));
            } else {
                sb2.append(next.getType2().toString(Node.prettyPrinterNoCommentsConfiguration));
                if (next.isVarArgs()) {
                    sb2.append("...");
                }
            }
        }
        sb2.append(")");
        sb2.append(appendThrowsIfRequested(includingThrows));
        return sb2.toString();
    }

    @Override
    public Type getType2() {
        return this.type;
    }

    @Override
    public void ifMethodDeclaration(Consumer<MethodDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isAbstract() {
        return super.isAbstract() || isImplicitlyAbstract();
    }

    public boolean isDefault() {
        return hasModifier(Modifier.Keyword.DEFAULT);
    }

    @Override
    public boolean isMethodDeclaration() {
        return true;
    }

    public boolean isNative() {
        return hasModifier(Modifier.Keyword.NATIVE);
    }

    @Override
    public boolean isPublic() {
        return hasModifier(Modifier.Keyword.PUBLIC) || isImplicitlyPublic();
    }

    public boolean isSynchronized() {
        return hasModifier(Modifier.Keyword.SYNCHRONIZED);
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        BlockStmt blockStmt = this.body;
        if (blockStmt == null || node != blockStmt) {
            return super.remove(node);
        }
        removeBody();
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        BlockStmt blockStmt = this.body;
        if (blockStmt != null && node == blockStmt) {
            setBody((BlockStmt) replacementNode);
            return true;
        }
        if (node != this.type) {
            return super.replace(node, replacementNode);
        }
        setType((Type) replacementNode);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MethodDeclaration setDefault(boolean set) {
        return (MethodDeclaration) setModifier(Modifier.Keyword.DEFAULT, set);
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MethodDeclaration setNative(boolean set) {
        return (MethodDeclaration) setModifier(Modifier.Keyword.NATIVE, set);
    }

    @Override
    public MethodDeclaration setParameters(final NodeList parameters) {
        return setParameters((NodeList<Parameter>) parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MethodDeclaration setSynchronized(boolean set) {
        return (MethodDeclaration) setModifier(Modifier.Keyword.SYNCHRONIZED, set);
    }

    @Override
    public MethodDeclaration setThrownExceptions(final NodeList thrownExceptions) {
        return setThrownExceptions((NodeList<ReferenceType>) thrownExceptions);
    }

    @Override
    public MethodDeclaration setTypeParameters(final NodeList typeParameters) {
        return setTypeParameters((NodeList<TypeParameter>) typeParameters);
    }

    public String toDescriptor() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        for (int i10 = 0; i10 < getParameters().size(); i10++) {
            sb2.append(getParameter(i10).getType2().toDescriptor());
        }
        sb2.append(")");
        sb2.append(getType2().toDescriptor());
        return sb2.toString();
    }

    @Override
    public Optional<MethodDeclaration> toMethodDeclaration() {
        return Optional.of(this);
    }

    public MethodDeclaration(final NodeList<Modifier> modifiers, final Type type, final String name) {
        this(null, modifiers, new NodeList(), new NodeList(), type, new SimpleName(name), new NodeList(), new NodeList(), new BlockStmt(), null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (MethodDeclaration) arg);
    }

    @Override
    public MethodDeclaration removeBody() {
        return setBody((BlockStmt) null);
    }

    @Override
    public ResolvedMethodDeclaration resolve() {
        return (ResolvedMethodDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedMethodDeclaration.class);
    }

    @Override
    public MethodDeclaration setBody(final BlockStmt body) {
        BlockStmt blockStmt = this.body;
        if (body == blockStmt) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.BODY, blockStmt, body);
        BlockStmt blockStmt2 = this.body;
        if (blockStmt2 != null) {
            blockStmt2.setParentNode((Node) null);
        }
        this.body = body;
        setAsParentNodeOf(body);
        return this;
    }

    @Override
    public CallableDeclaration setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public MethodDeclaration setParameters2(final NodeList parameters) {
        return setParameters((NodeList<Parameter>) parameters);
    }

    @Override
    public MethodDeclaration setThrownExceptions2(final NodeList thrownExceptions) {
        return setThrownExceptions((NodeList<ReferenceType>) thrownExceptions);
    }

    @Override
    public MethodDeclaration setType(final Type type) {
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

    @Override
    public MethodDeclaration setTypeParameters2(final NodeList typeParameters) {
        return setTypeParameters((NodeList<TypeParameter>) typeParameters);
    }

    public MethodDeclaration(final NodeList<Modifier> modifiers, final String name, final Type type, final NodeList<Parameter> parameters) {
        this(null, modifiers, new NodeList(), new NodeList(), type, new SimpleName(name), parameters, new NodeList(), new BlockStmt(), null);
    }

    @Override
    public MethodDeclaration setModifiers(final NodeList<Modifier> modifiers) {
        return (MethodDeclaration) super.setModifiers(modifiers);
    }

    @Override
    public MethodDeclaration setName(final SimpleName name) {
        return (MethodDeclaration) super.setName(name);
    }

    @Override
    public MethodDeclaration setParameters(final NodeList<Parameter> parameters) {
        return (MethodDeclaration) super.setParameters(parameters);
    }

    @Override
    public MethodDeclaration setThrownExceptions(final NodeList<ReferenceType> thrownExceptions) {
        return (MethodDeclaration) super.setThrownExceptions(thrownExceptions);
    }

    @Override
    public MethodDeclaration setTypeParameters(final NodeList<TypeParameter> typeParameters) {
        return (MethodDeclaration) super.setTypeParameters(typeParameters);
    }

    public MethodDeclaration(final NodeList<Modifier> modifiers, final NodeList<AnnotationExpr> annotations, final NodeList<TypeParameter> typeParameters, final Type type, final SimpleName name, final NodeList<Parameter> parameters, final NodeList<ReferenceType> thrownExceptions, final BlockStmt body) {
        this(null, modifiers, annotations, typeParameters, type, name, parameters, thrownExceptions, body, null);
    }

    @Override
    public MethodDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.methodDeclarationMetaModel;
    }

    @AllFieldsConstructor
    public MethodDeclaration(final NodeList<Modifier> modifiers, final NodeList<AnnotationExpr> annotations, final NodeList<TypeParameter> typeParameters, final Type type, final SimpleName name, final NodeList<Parameter> parameters, final NodeList<ReferenceType> thrownExceptions, final BlockStmt body, ReceiverParameter receiverParameter) {
        this(null, modifiers, annotations, typeParameters, type, name, parameters, thrownExceptions, body, receiverParameter);
    }

    @Override
    public MethodDeclaration mo1220clone() {
        return (MethodDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public MethodDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, Type type, SimpleName name, NodeList<Parameter> parameters, NodeList<ReferenceType> thrownExceptions, BlockStmt body, ReceiverParameter receiverParameter) {
        super(tokenRange, modifiers, annotations, typeParameters, name, parameters, thrownExceptions, receiverParameter);
        setType(type);
        setBody(body);
        customInitialization();
    }
}
