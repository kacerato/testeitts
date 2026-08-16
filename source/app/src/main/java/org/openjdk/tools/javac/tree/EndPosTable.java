package org.openjdk.tools.javac.tree;

public interface EndPosTable {
    int getEndPos(JCTree jCTree);

    int replaceTree(JCTree jCTree, JCTree jCTree2);

    void storeEnd(JCTree jCTree, int i10);
}
