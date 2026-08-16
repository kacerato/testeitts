package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.nodeTypes.NodeWithArguments;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ExplicitConstructorInvocationStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.resolution.Resolvable;
import com.github.javaparser.resolution.declarations.ResolvedConstructorDeclaration;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ExplicitConstructorInvocationStmt extends Statement implements NodeWithTypeArguments<ExplicitConstructorInvocationStmt>, NodeWithArguments<ExplicitConstructorInvocationStmt>, Resolvable<ResolvedConstructorDeclaration> {
    private NodeList<Expression> arguments;

    @OptionalProperty
    private Expression expression;
    private boolean isThis;

    @OptionalProperty
    private NodeList<Type> typeArguments;

    public ExplicitConstructorInvocationStmt() {
        this(null, null, true, null, new NodeList());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ExplicitConstructorInvocationStmt) arg);
    }

    @Override
    public ExplicitConstructorInvocationStmt asExplicitConstructorInvocationStmt() {
        return this;
    }

    @Override
    public NodeList<Expression> getArguments() {
        return this.arguments;
    }

    public Optional<Expression> getExpression() {
        return Optional.ofNullable(this.expression);
    }

    @Override
    public Optional<NodeList<Type>> getTypeArguments() {
        return Optional.ofNullable(this.typeArguments);
    }

    @Override
    public void ifExplicitConstructorInvocationStmt(Consumer<ExplicitConstructorInvocationStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isExplicitConstructorInvocationStmt() {
        return true;
    }

    public boolean isThis() {
        return this.isThis;
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
        Expression expression = this.expression;
        if (expression != null && node == expression) {
            removeExpression();
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

    public ExplicitConstructorInvocationStmt removeExpression() {
        return setExpression(null);
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
        Expression expression = this.expression;
        if (expression != null && node == expression) {
            setExpression((Expression) replacementNode);
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
    public ExplicitConstructorInvocationStmt setArguments(final NodeList arguments) {
        return setArguments2((NodeList<Expression>) arguments);
    }

    public ExplicitConstructorInvocationStmt setExpression(final Expression expression) {
        Expression expression2 = this.expression;
        if (expression == expression2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.EXPRESSION, expression2, expression);
        Expression expression3 = this.expression;
        if (expression3 != null) {
            expression3.setParentNode((Node) null);
        }
        this.expression = expression;
        setAsParentNodeOf(expression);
        return this;
    }

    public ExplicitConstructorInvocationStmt setThis(final boolean isThis) {
        boolean z10 = this.isThis;
        if (isThis == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.THIS, Boolean.valueOf(z10), Boolean.valueOf(isThis));
        this.isThis = isThis;
        return this;
    }

    @Override
    public ExplicitConstructorInvocationStmt setTypeArguments(final NodeList typeArguments) {
        return setTypeArguments2((NodeList<Type>) typeArguments);
    }

    @Override
    public Optional<ExplicitConstructorInvocationStmt> toExplicitConstructorInvocationStmt() {
        return Optional.of(this);
    }

    public ExplicitConstructorInvocationStmt(final boolean isThis, final Expression expression, final NodeList<Expression> arguments) {
        this(null, null, isThis, expression, arguments);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ExplicitConstructorInvocationStmt) arg);
    }

    @Override
    public ResolvedConstructorDeclaration resolve() {
        return (ResolvedConstructorDeclaration) getSymbolResolver().resolveDeclaration(this, ResolvedConstructorDeclaration.class);
    }

    @Override
    public ExplicitConstructorInvocationStmt setArguments2(final NodeList<Expression> arguments) {
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
    public ExplicitConstructorInvocationStmt setTypeArguments2(final NodeList<Type> typeArguments) {
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
    public ExplicitConstructorInvocationStmt(final NodeList<Type> typeArguments, final boolean isThis, final Expression expression, final NodeList<Expression> arguments) {
        this(null, typeArguments, isThis, expression, arguments);
    }

    @Override
    public ExplicitConstructorInvocationStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.explicitConstructorInvocationStmtMetaModel;
    }

    public ExplicitConstructorInvocationStmt(TokenRange tokenRange, NodeList<Type> typeArguments, boolean isThis, Expression expression, NodeList<Expression> arguments) {
        super(tokenRange);
        setTypeArguments2(typeArguments);
        setThis(isThis);
        setExpression(expression);
        setArguments2(arguments);
        customInitialization();
    }

    @Override
    public ExplicitConstructorInvocationStmt mo1220clone() {
        return (ExplicitConstructorInvocationStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
