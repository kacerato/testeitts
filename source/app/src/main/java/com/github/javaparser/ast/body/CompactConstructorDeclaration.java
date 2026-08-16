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
import com.github.javaparser.metamodel.CompactConstructorDeclarationMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedConstructorDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Consumer;

public class CompactConstructorDeclaration extends BodyDeclaration<CompactConstructorDeclaration> implements NodeWithBlockStmt<CompactConstructorDeclaration>, NodeWithAccessModifiers<CompactConstructorDeclaration>, NodeWithJavadoc<CompactConstructorDeclaration>, NodeWithSimpleName<CompactConstructorDeclaration>, NodeWithThrownExceptions<CompactConstructorDeclaration>, NodeWithTypeParameters<CompactConstructorDeclaration>, Resolvable<ResolvedConstructorDeclaration> {
    private BlockStmt body;
    private NodeList<Modifier> modifiers;
    private SimpleName name;
    private NodeList<ReferenceType> thrownExceptions;
    private NodeList<TypeParameter> typeParameters;

    public CompactConstructorDeclaration() {
        this(null, new NodeList(), new NodeList(), new NodeList(), new SimpleName(), new NodeList(), new BlockStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (CompactConstructorDeclaration) arg);
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
    public CompactConstructorDeclaration asCompactConstructorDeclaration() {
        return this;
    }

    @Override
    public BlockStmt getBody() {
        return this.body;
    }

    public String getDeclarationAsString(boolean includingModifiers, boolean includingThrows, boolean includingParameterName) {
        StringBuilder sb2 = new StringBuilder();
        if (includingModifiers) {
            sb2.append(getAccessSpecifier().asString());
            sb2.append(" ");
        }
        sb2.append((Object) getName());
        sb2.append("(");
        sb2.append(")");
        sb2.append(appendThrowsIfRequested(includingThrows));
        return sb2.toString();
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
    public NodeList<ReferenceType> getThrownExceptions() {
        return this.thrownExceptions;
    }

    @Override
    public NodeList<TypeParameter> getTypeParameters() {
        return this.typeParameters;
    }

    @Override
    public void ifCompactConstructorDeclaration(Consumer<CompactConstructorDeclaration> action) {
        action.accept(this);
    }

    @Override
    public boolean isCompactConstructorDeclaration() {
        return true;
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
        for (int i11 = 0; i11 < this.thrownExceptions.size(); i11++) {
            if (this.thrownExceptions.get(i11) == node) {
                this.thrownExceptions.remove(i11);
                return true;
            }
        }
        for (int i12 = 0; i12 < this.typeParameters.size(); i12++) {
            if (this.typeParameters.get(i12) == node) {
                this.typeParameters.remove(i12);
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
        if (node == this.body) {
            setBody((BlockStmt) replacementNode);
            return true;
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
        for (int i11 = 0; i11 < this.thrownExceptions.size(); i11++) {
            if (this.thrownExceptions.get(i11) == node) {
                this.thrownExceptions.set(i11, (int) replacementNode);
                return true;
            }
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
    public Node setModifiers(final NodeList modifiers) {
        return setModifiers((NodeList<Modifier>) modifiers);
    }

    @Override
    public CompactConstructorDeclaration setThrownExceptions(final NodeList thrownExceptions) {
        return setThrownExceptions2((NodeList<ReferenceType>) thrownExceptions);
    }

    @Override
    public CompactConstructorDeclaration setTypeParameters(final NodeList typeParameters) {
        return setTypeParameters2((NodeList<TypeParameter>) typeParameters);
    }

    @Override
    public Optional<CompactConstructorDeclaration> toCompactConstructorDeclaration() {
        return Optional.of(this);
    }

    public CompactConstructorDeclaration(String name) {
        this(null, new NodeList(new Modifier()), new NodeList(), new NodeList(), new SimpleName(name), new NodeList(), new BlockStmt());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (CompactConstructorDeclaration) arg);
    }

    @Override
    public ResolvedConstructorDeclaration resolve() {
        return (ResolvedConstructorDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedConstructorDeclaration.class);
    }

    @Override
    public CompactConstructorDeclaration setBody(final BlockStmt body) {
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
    public CompactConstructorDeclaration setModifiers(final NodeList<Modifier> modifiers) {
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
    public CompactConstructorDeclaration setName(final SimpleName name) {
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
    public CompactConstructorDeclaration setThrownExceptions2(final NodeList<ReferenceType> thrownExceptions) {
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

    @Override
    public CompactConstructorDeclaration setTypeParameters2(final NodeList<TypeParameter> typeParameters) {
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

    public CompactConstructorDeclaration(NodeList<Modifier> modifiers, String name) {
        this(null, modifiers, new NodeList(), new NodeList(), new SimpleName(name), new NodeList(), new BlockStmt());
    }

    @Override
    public CompactConstructorDeclarationMetaModel getMetaModel() {
        return JavaParserMetaModel.compactConstructorDeclarationMetaModel;
    }

    @AllFieldsConstructor
    public CompactConstructorDeclaration(NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, SimpleName name, NodeList<ReferenceType> thrownExceptions, BlockStmt body) {
        this(null, modifiers, annotations, typeParameters, name, thrownExceptions, body);
    }

    @Override
    public CompactConstructorDeclaration mo1220clone() {
        return (CompactConstructorDeclaration) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public CompactConstructorDeclaration(TokenRange tokenRange, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations, NodeList<TypeParameter> typeParameters, SimpleName name, NodeList<ReferenceType> thrownExceptions, BlockStmt body) {
        super(tokenRange, annotations);
        setModifiers(modifiers);
        setTypeParameters2(typeParameters);
        setName(name);
        setThrownExceptions2(thrownExceptions);
        setBody(body);
        customInitialization();
    }

    public CompactConstructorDeclaration(TokenRange tokenRange, NodeList<AnnotationExpr> annotations, BlockStmt body) {
        super(tokenRange, annotations);
        setBody(body);
        customInitialization();
    }
}
