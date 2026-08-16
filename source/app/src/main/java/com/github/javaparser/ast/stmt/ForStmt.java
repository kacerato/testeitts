package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.nodeTypes.NodeWithBody;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ForStmtMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;

public class ForStmt extends Statement implements NodeWithBody<ForStmt> {
    private Statement body;

    @OptionalProperty
    private Expression compare;
    private NodeList<Expression> initialization;
    private NodeList<Expression> update;

    public ForStmt() {
        this(null, new NodeList(), new BooleanLiteralExpr(), new NodeList(), new ReturnStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ForStmt) arg);
    }

    @Override
    public ForStmt asForStmt() {
        return this;
    }

    @Override
    public Statement getBody() {
        return this.body;
    }

    public Optional<Expression> getCompare() {
        return Optional.ofNullable(this.compare);
    }

    public NodeList<Expression> getInitialization() {
        return this.initialization;
    }

    public NodeList<Expression> getUpdate() {
        return this.update;
    }

    @Override
    public void ifForStmt(Consumer<ForStmt> action) {
        action.accept(this);
    }

    @Override
    public boolean isForStmt() {
        return true;
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        Expression expression = this.compare;
        if (expression != null && node == expression) {
            removeCompare();
            return true;
        }
        for (int i10 = 0; i10 < this.initialization.size(); i10++) {
            if (this.initialization.get(i10) == node) {
                this.initialization.remove(i10);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.update.size(); i11++) {
            if (this.update.get(i11) == node) {
                this.update.remove(i11);
                return true;
            }
        }
        return super.remove(node);
    }

    public ForStmt removeCompare() {
        return setCompare(null);
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
        Expression expression = this.compare;
        if (expression != null && node == expression) {
            setCompare((Expression) replacementNode);
            return true;
        }
        for (int i10 = 0; i10 < this.initialization.size(); i10++) {
            if (this.initialization.get(i10) == node) {
                this.initialization.set(i10, (int) replacementNode);
                return true;
            }
        }
        for (int i11 = 0; i11 < this.update.size(); i11++) {
            if (this.update.get(i11) == node) {
                this.update.set(i11, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public ForStmt setCompare(final Expression compare) {
        Expression expression = this.compare;
        if (compare == expression) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.COMPARE, expression, compare);
        Expression expression2 = this.compare;
        if (expression2 != null) {
            expression2.setParentNode((Node) null);
        }
        this.compare = compare;
        setAsParentNodeOf(compare);
        return this;
    }

    public ForStmt setInitialization(final NodeList<Expression> initialization) {
        Utils.assertNotNull(initialization);
        NodeList<Expression> nodeList = this.initialization;
        if (initialization == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.INITIALIZATION, nodeList, initialization);
        NodeList<Expression> nodeList2 = this.initialization;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.initialization = initialization;
        setAsParentNodeOf(initialization);
        return this;
    }

    public ForStmt setUpdate(final NodeList<Expression> update) {
        Utils.assertNotNull(update);
        NodeList<Expression> nodeList = this.update;
        if (update == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.UPDATE, nodeList, update);
        NodeList<Expression> nodeList2 = this.update;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.update = update;
        setAsParentNodeOf(update);
        return this;
    }

    @Override
    public Optional<ForStmt> toForStmt() {
        return Optional.of(this);
    }

    @AllFieldsConstructor
    public ForStmt(final NodeList<Expression> initialization, final Expression compare, final NodeList<Expression> update, final Statement body) {
        this(null, initialization, compare, update, body);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ForStmt) arg);
    }

    @Override
    public ForStmt setBody(final Statement body) {
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

    public ForStmt(TokenRange tokenRange, NodeList<Expression> initialization, Expression compare, NodeList<Expression> update, Statement body) {
        super(tokenRange);
        setInitialization(initialization);
        setCompare(compare);
        setUpdate(update);
        setBody(body);
        customInitialization();
    }

    @Override
    public ForStmtMetaModel getMetaModel() {
        return JavaParserMetaModel.forStmtMetaModel;
    }

    @Override
    public ForStmt mo1220clone() {
        return (ForStmt) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
