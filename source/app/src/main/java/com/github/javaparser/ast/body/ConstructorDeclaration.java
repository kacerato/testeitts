package com.github.javaparser.ast.body;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithBlockStmt;
import com.github.javaparser.ast.nodeTypes.NodeWithJavadoc;
import com.github.javaparser.ast.nodeTypes.NodeWithParameters;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithThrownExceptions;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeParameters;
import com.github.javaparser.ast.nodeTypes.modifiers.NodeWithAccessModifiers;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ConstructorDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedConstructorDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Consumer;

public class ConstructorDeclaration extends CallableDeclaration<ConstructorDeclaration> implements NodeWithBlockStmt<ConstructorDeclaration>, NodeWithAccessModifiers<ConstructorDeclaration>, NodeWithJavadoc<ConstructorDeclaration>, NodeWithSimpleName<ConstructorDeclaration>, NodeWithParameters<ConstructorDeclaration>, NodeWithThrownExceptions<ConstructorDeclaration>, NodeWithTypeParameters<ConstructorDeclaration>, Resolvable<ResolvedConstructorDeclaration> {
    private BlockStmt body;

    public ConstructorDeclaration() {
        this(null, new NodeList(), new NodeList(), new NodeList(), new SimpleName(), new NodeList(), new NodeList(), new BlockStmt(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ConstructorDeclaration) arg);
    }

    @Override
    public ConstructorDeclaration asConstructorDeclaration() {
        return this;
    }

    @Override
    public BlockStmt getBody() {
        return this.body;
    }

    @Override
    public String getDeclarationAsString(boolean includingModifiers, boolean includingThrows, boolean includingParameterName) {
        StringBuilder sb2 = new StringBuilder();
        if (includingModifiers) {
            sb2.append(getAccessSpecifier().asString());
            sb2.append(" ");
        }
        sb2.append((Object) getName());
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
            }
        }
        sb2.append(")");
        sb2.append(appendThrowsIfRequested(includingThrows));
        return sb2.toString();
    }

    @Override
    public void ifConstructorDeclaration(Consumer<ConstructorDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isConstructorDeclaration() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.body) {
            return super.replace(node, replacementNode);
        }
        setBody((BlockStmt) replacementNode);
        return true;
    }

    @Override
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public ConstructorDeclaration setParameters(final NodeList parameters) {
        return setParameters((NodeList<Parameter>) parameters);
    }

    @Override
    public ConstructorDeclaration setThrownExceptions(final NodeList thrownExceptions) {
        return setThrownExceptions((NodeList<ReferenceType>) thrownExceptions);
    }

    @Override
    public ConstructorDeclaration setTypeParameters(final NodeList typeParameters) {
        return setTypeParameters((NodeList<TypeParameter>) typeParameters);
    }

    @Override
    public Optional<ConstructorDeclaration> toConstructorDeclaration() {
        return Optional.of(this);
    }

    public String toDescriptor() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('(');
        for (int i10 = 0; i10 < getParameters().size(); i10++) {
            sb2.append(getParameter(i10).getType2().toDescriptor());
        }
        sb2.append(")V");
        return sb2.toString();
    }

    public ConstructorDeclaration(String name) {
        this(null, new NodeList(new Modifier()), new NodeList(), new NodeList(), new SimpleName(name), new NodeList(), new NodeList(), new BlockStmt(), null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ConstructorDeclaration) arg);
    }

    @Override
    public ResolvedConstructorDeclaration resolve() {
        return (ResolvedConstructorDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedConstructorDeclaration.class);
    }

    @Override
    public ConstructorDeclaration setBody(final BlockStmt body) {
        Utils.assertNotNull(body);
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
    public ConstructorDeclaration setParameters2(final NodeList parameters) {
        return setParameters((NodeList<Parameter>) parameters);
    }

    @Override
    public ConstructorDeclaration setThrownExceptions2(final NodeList thrownExceptions) {
        return setThrownExceptions((NodeList<ReferenceType>) thrownExceptions);
    }

    @Override
    public ConstructorDeclaration setTypeParameters2(final NodeList typeParameters) {
        return setTypeParameters((NodeList<TypeParameter>) typeParameters);
    }

    public ConstructorDeclaration(NodeList<Modifier> modifiers, String name) {
        this(null, modifiers, new NodeList(), new NodeList(), new SimpleName(name), new NodeList(), new NodeList(), new BlockStmt(), null);
    }

    @Override
    public ConstructorDeclaration setModifiers(final NodeList<Modifier> modifiers) {
        return (ConstructorDeclaration) super.setModifiers(modifiers);
    }

    @Override
    public ConstructorDeclaration setName(final SimpleName name) {
        return (ConstructorDeclaration) super.setName(name);
    }

    @Override
    public ConstructorDeclaration setParameters(final NodeList<Parameter> parameters) {
        return (ConstructorDeclaration) super.setParameters(parameters);
    }

    @Override
    public ConstructorDeclaration setThrownExceptions(final NodeList<ReferenceType> thrownExceptions) {
        return (ConstructorDeclaration) super.setThrownExceptions(thrownExceptions);
    }

    @Override
    public ConstructorDeclaration setTypeParameters(final NodeList<TypeParameter> typeParameters) {
        return (ConstructorDeclaration) super.setTypeParameters(typeParameters);
    }

    public ConstructorDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, SimpleName name, NodeList<Parameter> parameters, NodeList<ReferenceType> thrownExceptions, BlockStmt body) {
        this(null, modifiers, annotations, typeParameters, name, parameters, thrownExceptions, body, null);
    }

    @Override
    public ConstructorDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.constructorDeclarationMetaModel;
    }

    @AllFieldsConstructor
    public ConstructorDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, SimpleName name, NodeList<Parameter> parameters, NodeList<ReferenceType> thrownExceptions, BlockStmt body, ReceiverParameter receiverParameter) {
        this(null, modifiers, annotations, typeParameters, name, parameters, thrownExceptions, body, receiverParameter);
    }

    @Override
    public ConstructorDeclaration mo1220clone() {
        return (ConstructorDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public ConstructorDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, SimpleName name, NodeList<Parameter> parameters, NodeList<ReferenceType> thrownExceptions, BlockStmt body, ReceiverParameter receiverParameter) {
        super(tokenRange, modifiers, annotations, typeParameters, name, parameters, thrownExceptions, receiverParameter);
        setBody(body);
        customInitialization();
    }
}
