package com.github.javaparser.ast.stmt;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.nodeTypes.NodeWithBlockStmt;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.CatchClauseMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.utils.Utils;

public class CatchClause extends Node implements NodeWithBlockStmt<CatchClause> {
    private BlockStmt body;
    private Parameter parameter;

    public CatchClause() {
        this(null, new Parameter(), new BlockStmt());
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (CatchClause) arg);
    }

    @Override
    public BlockStmt getBody() {
        return this.body;
    }

    public Parameter getParameter() {
        return this.parameter;
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
        if (node != this.parameter) {
            return super.replace(node, replacementNode);
        }
        setParameter((Parameter) replacementNode);
        return true;
    }

    public CatchClause setParameter(final Parameter parameter) {
        Utils.assertNotNull(parameter);
        Parameter parameter2 = this.parameter;
        if (parameter == parameter2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PARAMETER, parameter2, parameter);
        Parameter parameter3 = this.parameter;
        if (parameter3 != null) {
            parameter3.setParentNode((Node) null);
        }
        this.parameter = parameter;
        setAsParentNodeOf(parameter);
        return this;
    }

    public CatchClause(final NodeList<Modifier> exceptModifier, final NodeList<AnnotationExpr> exceptAnnotations, final ClassOrInterfaceType exceptType, final SimpleName exceptName, final BlockStmt body) {
        this(null, new Parameter(null, exceptModifier, exceptAnnotations, exceptType, false, new NodeList(), exceptName), body);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (CatchClause) arg);
    }

    @Override
    public CatchClauseMetaModel getMetaModel() {
        return JavaParserMetaModel.catchClauseMetaModel;
    }

    @Override
    public CatchClause setBody(final BlockStmt body) {
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

    @AllFieldsConstructor
    public CatchClause(final Parameter parameter, final BlockStmt body) {
        this(null, parameter, body);
    }

    @Override
    public CatchClause mo1220clone() {
        return (CatchClause) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public CatchClause(TokenRange tokenRange, Parameter parameter, BlockStmt body) {
        super(tokenRange);
        setParameter(parameter);
        setBody(body);
        customInitialization();
    }
}
