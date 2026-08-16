package org.openjdk.tools.javac.parser;

import org.openjdk.tools.javac.tree.JCTree;

public interface Parser {
    JCTree.JCCompilationUnit parseCompilationUnit();

    JCTree.JCExpression parseExpression();

    JCTree.JCStatement parseStatement();

    JCTree.JCExpression parseType();
}
