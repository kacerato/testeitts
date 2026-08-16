package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.nodeTypes.NodeWithIdentifier;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.MethodReferenceExprMetaModel;
import com.github.javaparser.metamodel.NonEmptyProperty;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class MethodReferenceExpr extends Expression implements NodeWithTypeArguments<MethodReferenceExpr>, NodeWithIdentifier<MethodReferenceExpr>, Resolvable<ResolvedMethodDeclaration> {

    @NonEmptyProperty
    private String identifier;
    private Expression scope;

    @OptionalProperty
    private NodeList<Type> typeArguments;

    public MethodReferenceExpr() {
        this(null, new ClassExpr(), null, "empty");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (MethodReferenceExpr) arg);
    }

    @Override
    public MethodReferenceExpr asMethodReferenceExpr() {
        return this;
    }

    @Override
    public String getIdentifier() {
        return this.identifier;
    }

    public Expression getScope() {
        return this.scope;
    }

    @Override
    public Optional<NodeList<Type>> getTypeArguments() {
        return Optional.ofNullable(this.typeArguments);
    }

    @Override
    public void ifMethodReferenceExpr(Consumer<MethodReferenceExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isMethodReferenceExpr() {
        return true;
    }

    @Override
    public boolean isPolyExpression() {
        return true;
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

    public MethodReferenceExpr setScope(final Expression scope) {
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
    public MethodReferenceExpr setTypeArguments(final NodeList typeArguments) {
        return setTypeArguments2((NodeList<Type>) typeArguments);
    }

    @Override
    public Optional<MethodReferenceExpr> toMethodReferenceExpr() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public MethodReferenceExpr(Expression scope, NodeList<Type> typeArguments, String identifier) {
        this(null, scope, typeArguments, identifier);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (MethodReferenceExpr) arg);
    }

    @Override
    public ResolvedMethodDeclaration resolve() {
        return (ResolvedMethodDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedMethodDeclaration.class);
    }

    @Override
    public MethodReferenceExpr setIdentifier(final String identifier) {
        Utils.assertNonEmpty(identifier);
        String str = this.identifier;
        if (identifier == str) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.IDENTIFIER, str, identifier);
        this.identifier = identifier;
        return this;
    }

    @Override
    public MethodReferenceExpr setTypeArguments2(final NodeList<Type> typeArguments) {
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

    public MethodReferenceExpr(TokenRange tokenRange, Expression scope, NodeList<Type> typeArguments, String identifier) {
        super(tokenRange);
        setScope(scope);
        setTypeArguments2(typeArguments);
        setIdentifier(identifier);
        customInitialization();
    }

    @Override
    public MethodReferenceExprMetaModel getMetaModel() {
        return JavaParserMetaModel.methodReferenceExprMetaModel;
    }

    @Override
    public MethodReferenceExpr mo1220clone() {
        return (MethodReferenceExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
