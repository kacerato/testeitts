package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.nodeTypes.NodeWithScope;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.FieldAccessExprMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedValueDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class FieldAccessExpr extends Expression implements NodeWithSimpleName<FieldAccessExpr>, NodeWithTypeArguments<FieldAccessExpr>, NodeWithScope<FieldAccessExpr>, Resolvable<ResolvedValueDeclaration> {
    private SimpleName name;
    private Expression scope;

    @OptionalProperty
    private NodeList<Type> typeArguments;

    public FieldAccessExpr() {
        this(null, new ThisExpr(), null, new SimpleName());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (FieldAccessExpr) arg);
    }

    @Override
    public FieldAccessExpr asFieldAccessExpr() {
        return this;
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    @Override
    public Expression getScope() {
        return this.scope;
    }

    @Override
    public Optional<NodeList<Type>> getTypeArguments() {
        return Optional.ofNullable(this.typeArguments);
    }

    @Override
    public void ifFieldAccessExpr(Consumer<FieldAccessExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isFieldAccessExpr() {
        return true;
    }

    public boolean isInternal() {
        return getParentNode().isPresent() && (getParentNode().get() instanceof FieldAccessExpr);
    }

    public boolean isTopLevel() {
        return !isInternal();
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
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

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        if (node == this.scope) {
            setScope((Expression) replacementNode);
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
    public FieldAccessExpr setTypeArguments(final NodeList typeArguments) {
        return setTypeArguments2((NodeList<Type>) typeArguments);
    }

    @Override
    public Optional<FieldAccessExpr> toFieldAccessExpr() {
        return Optional.of(this);
    }

    public FieldAccessExpr(final Expression scope, final String name) {
        this(null, scope, null, new SimpleName(name));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (FieldAccessExpr) arg);
    }

    @Override
    public ResolvedValueDeclaration resolve() {
        return (ResolvedValueDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedValueDeclaration.class);
    }

    @Override
    public FieldAccessExpr setName(final SimpleName name) {
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
    public FieldAccessExpr setScope(final Expression scope) {
        Utils.assertNotNull(scope);
        Expression expression = this.scope;
        if (scope == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.SCOPE, expression, scope);
        Expression expression2 = this.scope;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.scope = scope;
        setAsParentNodeOf(scope);
        return this;
    }

    @Override
    public FieldAccessExpr setTypeArguments2(final NodeList<Type> typeArguments) {
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

    @AllFieldsConstructor
    public FieldAccessExpr(final Expression scope, final NodeList<Type> typeArguments, final SimpleName name) {
        this(null, scope, typeArguments, name);
    }

    @Override
    public FieldAccessExprMetaModel getMetaModel() {
        return JavaParserMetaModel.fieldAccessExprMetaModel;
    }

    public FieldAccessExpr(TokenRange tokenRange, Expression scope, NodeList<Type> typeArguments, SimpleName name) {
        super(tokenRange);
        setScope(scope);
        setTypeArguments2(typeArguments);
        setName(name);
        customInitialization();
    }

    @Override
    public FieldAccessExpr mo1220clone() {
        return (FieldAccessExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
