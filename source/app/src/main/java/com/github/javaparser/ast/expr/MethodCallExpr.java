package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.nodeTypes.NodeWithArguments;
import com.github.javaparser.ast.nodeTypes.NodeWithOptionalScope;
import com.github.javaparser.ast.nodeTypes.NodeWithSimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.MethodCallExprMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class MethodCallExpr extends Expression implements NodeWithTypeArguments<MethodCallExpr>, NodeWithArguments<MethodCallExpr>, NodeWithSimpleName<MethodCallExpr>, NodeWithOptionalScope<MethodCallExpr>, Resolvable<ResolvedMethodDeclaration> {
    private NodeList<Expression> arguments;
    private SimpleName name;

    @OptionalProperty
    private Expression scope;

    @OptionalProperty
    private NodeList<Type> typeArguments;

    public MethodCallExpr() {
        this(null, null, null, new SimpleName(), new NodeList());
    }

    private boolean hasParameterwithSameTypeThanResultType(final ResolvedType resolvedReturnType) {
        return getTypeArguments().isPresent() && getTypeArguments().get().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasParameterwithSameTypeThanResultType$0;
                lambda$hasParameterwithSameTypeThanResultType$0 = MethodCallExpr.lambda$hasParameterwithSameTypeThanResultType$0(ResolvedType.this, (Type) obj);
                return lambda$hasParameterwithSameTypeThanResultType$0;
            }
        });
    }

    private boolean isGenericMethod() {
        return getTypeArguments().isPresent() && !getTypeArguments().get().isEmpty();
    }

    public static boolean lambda$hasParameterwithSameTypeThanResultType$0(final ResolvedType resolvedReturnType, Type argType) {
        return argType.resolve().isAssignableBy(resolvedReturnType);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (MethodCallExpr) arg);
    }

    @Override
    public MethodCallExpr asMethodCallExpr() {
        return this;
    }

    @Override
    public NodeList<Expression> getArguments() {
        return this.arguments;
    }

    @Override
    public SimpleName getName() {
        return this.name;
    }

    @Override
    public Optional<Expression> getScope() {
        return Optional.ofNullable(this.scope);
    }

    @Override
    public Optional<NodeList<Type>> getTypeArguments() {
        return Optional.ofNullable(this.typeArguments);
    }

    @Override
    public void ifMethodCallExpr(Consumer<MethodCallExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isInvocationContext() {
        return true;
    }

    @Override
    public boolean isMethodCallExpr() {
        return true;
    }

    @Override
    public boolean isPolyExpression() {
        if (appearsInAssignmentContext() || appearsInInvocationContext()) {
            return (!isQualified() || elidesTypeArguments()) && isGenericMethod() && hasParameterwithSameTypeThanResultType(resolve().getReturnType());
        }
        return false;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.arguments.size(); i10++) {
            if (this.arguments.get(i10) == node) {
                this.arguments.remove(i10);
                return true;
            }
        }
        Expression expression = this.scope;
        if (expression != null && node == expression) {
            removeScope();
            return true;
        }
        if (this.typeArguments != null) {
            for (int i11 = 0; i11 < this.typeArguments.size(); i11++) {
                if (this.typeArguments.get(i11) == node) {
                    this.typeArguments.remove(i11);
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
        for (int i10 = 0; i10 < this.arguments.size(); i10++) {
            if (this.arguments.get(i10) == node) {
                this.arguments.set(i10, (int) replacementNode);
                return true;
            }
        }
        if (node == this.name) {
            setName((SimpleName) replacementNode);
            return true;
        }
        Expression expression = this.scope;
        if (expression != null && node == expression) {
            setScope((Expression) replacementNode);
            return true;
        }
        if (this.typeArguments != null) {
            for (int i11 = 0; i11 < this.typeArguments.size(); i11++) {
                if (this.typeArguments.get(i11) == node) {
                    this.typeArguments.set(i11, (int) replacementNode);
                    return true;
                }
            }
        }
        return super.replace(node, replacementNode);
    }

    @Override
    public MethodCallExpr setArguments(final NodeList arguments) {
        return setArguments2((NodeList<Expression>) arguments);
    }

    @Override
    public MethodCallExpr setTypeArguments(final NodeList typeArguments) {
        return setTypeArguments2((NodeList<Type>) typeArguments);
    }

    @Override
    public Optional<MethodCallExpr> toMethodCallExpr() {
        return Optional.of(this);
    }

    public MethodCallExpr(String name, Expression... arguments) {
        this(null, null, null, new SimpleName(name), new NodeList(arguments));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (MethodCallExpr) arg);
    }

    @Override
    public MethodCallExpr removeScope() {
        return setScope((Expression) null);
    }

    @Override
    public ResolvedMethodDeclaration resolve() {
        return (ResolvedMethodDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedMethodDeclaration.class);
    }

    @Override
    public MethodCallExpr setArguments2(final NodeList<Expression> arguments) {
        Utils.assertNotNull(arguments);
        NodeList<Expression> nodeList = this.arguments;
        if (arguments == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ARGUMENTS, nodeList, arguments);
        NodeList<Expression> nodeList2 = this.arguments;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.arguments = arguments;
        setAsParentNodeOf(arguments);
        return this;
    }

    @Override
    public MethodCallExpr setName(final SimpleName name) {
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
    public MethodCallExpr setScope(final Expression scope) {
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
    public MethodCallExpr setTypeArguments2(final NodeList<Type> typeArguments) {
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

    public MethodCallExpr(final Expression scope, final String name) {
        this(null, scope, null, new SimpleName(name), new NodeList());
    }

    @Override
    public MethodCallExprMetaModel getMetaModel() {
        return JavaParserMetaModel.methodCallExprMetaModel;
    }

    public MethodCallExpr(final Expression scope, final SimpleName name) {
        this(null, scope, null, name, new NodeList());
    }

    @Override
    public MethodCallExpr mo1220clone() {
        return (MethodCallExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public MethodCallExpr(final Expression scope, final String name, final NodeList<Expression> arguments) {
        this(null, scope, null, new SimpleName(name), arguments);
    }

    public MethodCallExpr(final Expression scope, final NodeList<Type> typeArguments, final String name, final NodeList<Expression> arguments) {
        this(null, scope, typeArguments, new SimpleName(name), arguments);
    }

    public MethodCallExpr(final Expression scope, final SimpleName name, final NodeList<Expression> arguments) {
        this(null, scope, null, name, arguments);
    }

    @AllFieldsConstructor
    public MethodCallExpr(final Expression scope, final NodeList<Type> typeArguments, final SimpleName name, final NodeList<Expression> arguments) {
        this(null, scope, typeArguments, name, arguments);
    }

    public MethodCallExpr(TokenRange tokenRange, Expression scope, NodeList<Type> typeArguments, SimpleName name, NodeList<Expression> arguments) {
        super(tokenRange);
        setScope(scope);
        setTypeArguments2(typeArguments);
        setName(name);
        setArguments2(arguments);
        customInitialization();
    }
}
