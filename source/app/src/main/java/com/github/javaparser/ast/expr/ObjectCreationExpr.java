package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.nodeTypes.NodeWithArguments;
import com.github.javaparser.ast.nodeTypes.NodeWithOptionalScope;
import com.github.javaparser.ast.nodeTypes.NodeWithType;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ObjectCreationExprMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedConstructorDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ObjectCreationExpr extends Expression implements NodeWithTypeArguments<ObjectCreationExpr>, NodeWithType<ObjectCreationExpr, ClassOrInterfaceType>, NodeWithArguments<ObjectCreationExpr>, NodeWithOptionalScope<ObjectCreationExpr>, Resolvable<ResolvedConstructorDeclaration> {

    @OptionalProperty
    private NodeList<BodyDeclaration<?>> anonymousClassBody;
    private NodeList<Expression> arguments;

    @OptionalProperty
    private Expression scope;
    private ClassOrInterfaceType type;

    @OptionalProperty
    private NodeList<Type> typeArguments;

    public ObjectCreationExpr() {
        this(null, null, new ClassOrInterfaceType(), new NodeList(), new NodeList(), null);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ObjectCreationExpr) arg);
    }

    public void addAnonymousClassBody(BodyDeclaration<?> body) {
        if (this.anonymousClassBody == null) {
            this.anonymousClassBody = new NodeList<>();
        }
        this.anonymousClassBody.add((NodeList<BodyDeclaration<?>>) body);
    }

    @Override
    public ObjectCreationExpr asObjectCreationExpr() {
        return this;
    }

    public Optional<NodeList<BodyDeclaration<?>>> getAnonymousClassBody() {
        return Optional.ofNullable(this.anonymousClassBody);
    }

    @Override
    public NodeList<Expression> getArguments() {
        return this.arguments;
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
    public void ifObjectCreationExpr(Consumer<ObjectCreationExpr> action) {
        action.accept(this);
    }

    @Override
    public boolean isObjectCreationExpr() {
        return true;
    }

    @Override
    public boolean isPolyExpression() {
        return isUsingDiamondOperator() && (appearsInInvocationContext() || appearsInAssignmentContext());
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        if (this.anonymousClassBody != null) {
            for (int i10 = 0; i10 < this.anonymousClassBody.size(); i10++) {
                if (this.anonymousClassBody.get(i10) == node) {
                    this.anonymousClassBody.remove(i10);
                    return true;
                }
            }
        }
        for (int i11 = 0; i11 < this.arguments.size(); i11++) {
            if (this.arguments.get(i11) == node) {
                this.arguments.remove(i11);
                return true;
            }
        }
        Expression expression = this.scope;
        if (expression != null && node == expression) {
            removeScope();
            return true;
        }
        if (this.typeArguments != null) {
            for (int i12 = 0; i12 < this.typeArguments.size(); i12++) {
                if (this.typeArguments.get(i12) == node) {
                    this.typeArguments.remove(i12);
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
        if (this.anonymousClassBody != null) {
            for (int i10 = 0; i10 < this.anonymousClassBody.size(); i10++) {
                if (this.anonymousClassBody.get(i10) == node) {
                    this.anonymousClassBody.set(i10, (int) replacementNode);
                    return true;
                }
            }
        }
        for (int i11 = 0; i11 < this.arguments.size(); i11++) {
            if (this.arguments.get(i11) == node) {
                this.arguments.set(i11, (int) replacementNode);
                return true;
            }
        }
        Expression expression = this.scope;
        if (expression != null && node == expression) {
            setScope((Expression) replacementNode);
            return true;
        }
        if (node == this.type) {
            setType((ClassOrInterfaceType) replacementNode);
            return true;
        }
        if (this.typeArguments != null) {
            for (int i12 = 0; i12 < this.typeArguments.size(); i12++) {
                if (this.typeArguments.get(i12) == node) {
                    this.typeArguments.set(i12, (int) replacementNode);
                    return true;
                }
            }
        }
        return super.replace(node, replacementNode);
    }

    public ObjectCreationExpr setAnonymousClassBody(final NodeList<BodyDeclaration<?>> anonymousClassBody) {
        NodeList<BodyDeclaration<?>> nodeList = this.anonymousClassBody;
        if (anonymousClassBody == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ANONYMOUS_CLASS_BODY, nodeList, anonymousClassBody);
        NodeList<BodyDeclaration<?>> nodeList2 = this.anonymousClassBody;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.anonymousClassBody = anonymousClassBody;
        setAsParentNodeOf(anonymousClassBody);
        return this;
    }

    @Override
    public ObjectCreationExpr setArguments(final NodeList arguments) {
        return setArguments2((NodeList<Expression>) arguments);
    }

    @Override
    public ObjectCreationExpr setTypeArguments(final NodeList typeArguments) {
        return setTypeArguments2((NodeList<Type>) typeArguments);
    }

    @Override
    public Optional<ObjectCreationExpr> toObjectCreationExpr() {
        return Optional.of(this);
    }

    public ObjectCreationExpr(final Expression scope, final ClassOrInterfaceType type, final NodeList<Expression> arguments) {
        this(null, scope, type, null, arguments, null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ObjectCreationExpr) arg);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ClassOrInterfaceType getType2() {
        return this.type;
    }

    @Override
    public ObjectCreationExpr removeScope() {
        return setScope((Expression) null);
    }

    @Override
    public ResolvedConstructorDeclaration resolve() {
        return (ResolvedConstructorDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedConstructorDeclaration.class);
    }

    @Override
    public ObjectCreationExpr setArguments2(final NodeList<Expression> arguments) {
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
    public ObjectCreationExpr setScope(final Expression scope) {
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
    public ObjectCreationExpr setType(final ClassOrInterfaceType type) {
        Utils.assertNotNull(type);
        ClassOrInterfaceType classOrInterfaceType = this.type;
        if (type == classOrInterfaceType) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, classOrInterfaceType, type);
        ClassOrInterfaceType classOrInterfaceType2 = this.type;
        if (classOrInterfaceType2 != null) {
            classOrInterfaceType2.setParentNode((Node) null);
        }
        this.type = type;
        setAsParentNodeOf(type);
        return this;
    }

    @Override
    public ObjectCreationExpr setTypeArguments2(final NodeList<Type> typeArguments) {
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
    public ObjectCreationExpr(final Expression scope, final ClassOrInterfaceType type, final NodeList<Type> typeArguments, final NodeList<Expression> arguments, final NodeList<BodyDeclaration<?>> anonymousClassBody) {
        this(null, scope, type, typeArguments, arguments, anonymousClassBody);
    }

    @Override
    public ObjectCreationExprMetaModel getMetaModel() {
        return JavaParserMetaModel.objectCreationExprMetaModel;
    }

    public ObjectCreationExpr(TokenRange tokenRange, Expression scope, ClassOrInterfaceType type, NodeList<Type> typeArguments, NodeList<Expression> arguments, NodeList<BodyDeclaration<?>> anonymousClassBody) {
        super(tokenRange);
        setScope(scope);
        setType(type);
        setTypeArguments2(typeArguments);
        setArguments2(arguments);
        setAnonymousClassBody(anonymousClassBody);
        customInitialization();
    }

    @Override
    public ObjectCreationExpr mo1220clone() {
        return (ObjectCreationExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
