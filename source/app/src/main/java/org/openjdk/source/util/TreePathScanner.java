package org.openjdk.source.util;

import org.openjdk.source.tree.Tree;

public class TreePathScanner<R, P> extends TreeScanner<R, P> {
    private TreePath path;

    public TreePath getCurrentPath() {
        return this.path;
    }

    public R scan(TreePath treePath, P p10) {
        this.path = treePath;
        try {
            return (R) treePath.getLeaf().accept(this, p10);
        } finally {
            this.path = null;
        }
    }

    @Override
    public R scan(Tree tree, P p10) {
        if (tree == null) {
            return null;
        }
        TreePath treePath = this.path;
        this.path = new TreePath(treePath, tree);
        try {
            return (R) tree.accept(this, p10);
        } finally {
            this.path = treePath;
        }
    }
}
