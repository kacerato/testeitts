package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.nodeTypes.NodeWithParameters;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.ast.stmt.ReturnStmt;
import com.github.javaparser.ast.stmt.Statement;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.DerivedProperty;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.LambdaExprMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class LambdaExpr extends Expression implements NodeWithParameters<LambdaExpr> {
    private Statement body;
    private boolean isEnclosingParameters;
    private NodeList<Parameter> parameters;

    public LambdaExpr() {
        this(null, new NodeList(), new ReturnStmt(), false);
    }

    public static boolean lambda$isExplicitlyTyped$0(Parameter p10) {
        return !p10.getType2().isUnknownType();
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (LambdaExpr) arg);
    }

    @Override
    public LambdaExpr asLambdaExpr() {
        return this;
    }

    public Statement getBody() {
        return this.body;
    }

    @DerivedProperty
    public Optional<Expression> getExpressionBody() {
        return this.body.isExpressionStmt() ? Optional.of(this.body.asExpressionStmt().getExpression()) : Optional.empty();
    }

    @Override
    public NodeList<Parameter> getParameters() {
        return this.parameters;
    }

    @Override
    public void ifLambdaExpr(Consumer<LambdaExpr> action) {
        action.accept(this);
    }

    public boolean isEnclosingParameters() {
        return this.isEnclosingParameters;
    }

    public boolean isExplicitlyTyped() {
        return getParameters().stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isExplicitlyTyped$0;
                lambda$isExplicitlyTyped$0 = LambdaExpr.lambda$isExplicitlyTyped$0((Parameter) obj);
                return lambda$isExplicitlyTyped$0;
            }
        });
    }

    @Override
    public boolean isLambdaExpr() {
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
        for (int i10 = 0; i10 < this.parameters.size(); i10++) {
            if (this.parameters.get(i10) == node) {
                this.parameters.remove(i10);
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
            setBody((Statement) replacementNode);
            return true;
        }
        for (int i10 = 0; i10 < this.parameters.size(); i10++) {
            if (this.parameters.get(i10) == node) {
                this.parameters.set(i10, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public LambdaExpr setBody(final Statement body) {
        Utils.assertNotNull(body);
        Statement statement = this.body;
        if (body == statement) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.BODY, statement, body);
        Statement statement2 = this.body;
        if (statement2 != null) {
            statement2.setParentNode((Node) null);
        }
        this.body = body;
        setAsParentNodeOf(body);
        return this;
    }

    public LambdaExpr setEnclosingParameters(final boolean isEnclosingParameters) {
        boolean z10 = this.isEnclosingParameters;
        if (isEnclosingParameters == z10) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ENCLOSING_PARAMETERS, Boolean.valueOf(z10), Boolean.valueOf(isEnclosingParameters));
        this.isEnclosingParameters = isEnclosingParameters;
        return this;
    }

    @Override
    public LambdaExpr setParameters(final NodeList parameters) {
        return setParameters2((NodeList<Parameter>) parameters);
    }

    @Override
    public Optional<LambdaExpr> toLambdaExpr() {
        return Optional.of(this);
    }

    public LambdaExpr(Parameter parameter, BlockStmt body) {
        this(null, new NodeList(parameter), body, false);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (LambdaExpr) arg);
    }

    @Override
    public LambdaExpr setParameters2(final NodeList<Parameter> parameters) {
        Utils.assertNotNull(parameters);
        NodeList<Parameter> nodeList = this.parameters;
        if (parameters == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PARAMETERS, nodeList, parameters);
        NodeList<Parameter> nodeList2 = this.parameters;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.parameters = parameters;
        setAsParentNodeOf(parameters);
        return this;
    }

    public LambdaExpr(NodeList<Parameter> parameters, BlockStmt body) {
        this(null, parameters, body, true);
    }

    @Override
    public LambdaExprMetaModel getMetaModel() {
        return JavaParserMetaModel.lambdaExprMetaModel;
    }

    public LambdaExpr(Parameter parameter, Expression body) {
        this(null, new NodeList(parameter), new ExpressionStmt(body), false);
    }

    @Override
    public LambdaExpr mo1220clone() {
        return (LambdaExpr) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public LambdaExpr(NodeList<Parameter> parameters, Expression body) {
        this(null, parameters, new ExpressionStmt(body), true);
    }

    @AllFieldsConstructor
    public LambdaExpr(NodeList<Parameter> parameters, Statement body, boolean isEnclosingParameters) {
        this(null, parameters, body, isEnclosingParameters);
    }

    public LambdaExpr(TokenRange tokenRange, NodeList<Parameter> parameters, Statement body, boolean isEnclosingParameters) {
        super(tokenRange);
        setParameters2(parameters);
        setBody(body);
        setEnclosingParameters(isEnclosingParameters);
        customInitialization();
    }
}
