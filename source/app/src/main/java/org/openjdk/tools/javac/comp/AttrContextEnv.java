package org.openjdk.tools.javac.comp;

import org.openjdk.tools.javac.tree.JCTree;

public class AttrContextEnv extends Env<AttrContext> {
    public AttrContextEnv(JCTree jCTree, AttrContext attrContext) {
        super(jCTree, attrContext);
    }
}
