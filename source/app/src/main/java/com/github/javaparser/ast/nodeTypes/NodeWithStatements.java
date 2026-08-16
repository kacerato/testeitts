package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.ast.stmt.Statement;
import java.util.Iterator;

public interface NodeWithStatements<N extends Node> {
    default <A extends Statement> A addAndGetStatement(A statement) {
        getStatements().add((NodeList<Statement>) statement);
        return statement;
    }

    default N addStatement(Statement statement) {
        getStatements().add((NodeList<Statement>) statement);
        return (N) this;
    }

    default N copyStatements(NodeList<Statement> nodeList) {
        Iterator<Statement> it = nodeList.iterator();
        while (it.hasNext()) {
            addStatement(it.next().mo1220clone());
        }
        return (N) this;
    }

    default Statement getStatement(int i10) {
        return getStatements().get(i10);
    }

    NodeList<Statement> getStatements();

    default boolean isEmpty() {
        return getStatements().isEmpty();
    }

    default N setStatement(int i10, Statement statement) {
        getStatements().set(i10, (int) statement);
        return (N) this;
    }

    N setStatements(final NodeList<Statement> statements);

    default Statement addAndGetStatement(int index, final Statement statement) {
        getStatements().add(index, (int) statement);
        return statement;
    }

    default ExpressionStmt addAndGetStatement(Expression expr) {
        return (ExpressionStmt) addAndGetStatement((NodeWithStatements<N>) new ExpressionStmt(expr));
    }

    default N addStatement(int index, final Statement statement) {
        getStatements().add(index, (int) statement);
        return (N) this;
    }

    default N copyStatements(NodeWithStatements<?> other) {
        return copyStatements(other.getStatements());
    }

    default ExpressionStmt addAndGetStatement(String statement) {
        return addAndGetStatement(new NameExpr(statement));
    }

    default N addStatement(Expression expr) {
        return addStatement(new ExpressionStmt(expr));
    }

    default N addStatement(String statement) {
        return addStatement(StaticJavaParser.parseStatement(statement));
    }

    default N addStatement(int index, final Expression expr) {
        return addStatement(index, new ExpressionStmt(expr));
    }
}
