package org.openjdk.source.util;

import java.util.Iterator;
import java.util.Objects;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.Tree;

public class TreePath implements Iterable<Tree> {
    private CompilationUnitTree compilationUnit;
    private Tree leaf;
    private TreePath parent;

    public class C1Result extends Error {
        static final long serialVersionUID = -5942088234594905625L;
        TreePath path;

        public C1Result(TreePath treePath) {
            this.path = treePath;
        }
    }

    public TreePath(CompilationUnitTree compilationUnitTree) {
        this(null, compilationUnitTree);
    }

    public static TreePath getPath(CompilationUnitTree compilationUnitTree, Tree tree) {
        return getPath(new TreePath(compilationUnitTree), tree);
    }

    public CompilationUnitTree getCompilationUnit() {
        return this.compilationUnit;
    }

    public Tree getLeaf() {
        return this.leaf;
    }

    public TreePath getParentPath() {
        return this.parent;
    }

    @Override
    public Iterator<Tree> iterator() {
        return new Iterator<Tree>() {
            private TreePath next;

            {
                this.next = TreePath.this;
            }

            @Override
            public boolean hasNext() {
                return this.next != null;
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override
            public Tree next() {
                Tree tree = this.next.leaf;
                this.next = this.next.parent;
                return tree;
            }
        };
    }

    public TreePath(TreePath treePath, Tree tree) {
        if (tree.getKind() == Tree.Kind.COMPILATION_UNIT) {
            this.compilationUnit = (CompilationUnitTree) tree;
            this.parent = null;
        } else {
            this.compilationUnit = treePath.compilationUnit;
            this.parent = treePath;
        }
        this.leaf = tree;
    }

    public static TreePath getPath(TreePath treePath, Tree tree) {
        Objects.requireNonNull(treePath);
        Objects.requireNonNull(tree);
        if (treePath.getLeaf() == tree) {
            return treePath;
        }
        try {
            new TreePathScanner<TreePath, Tree>() {
                @Override
                public TreePath scan(Tree tree2, Tree tree3) {
                    if (tree2 != tree3) {
                        return (TreePath) super.scan(tree2, tree3);
                    }
                    throw new C1Result(new TreePath(getCurrentPath(), tree3));
                }
            }.scan(treePath, (TreePath) tree);
            return null;
        } catch (C1Result e10) {
            return e10.path;
        }
    }
}
