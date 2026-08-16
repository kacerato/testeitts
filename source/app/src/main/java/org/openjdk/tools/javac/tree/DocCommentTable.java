package org.openjdk.tools.javac.tree;

import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.tree.DCTree;

public interface DocCommentTable {
    Tokens.Comment getComment(JCTree jCTree);

    String getCommentText(JCTree jCTree);

    DCTree.DCDocComment getCommentTree(JCTree jCTree);

    boolean hasComment(JCTree jCTree);

    void putComment(JCTree jCTree, Tokens.Comment comment);
}
