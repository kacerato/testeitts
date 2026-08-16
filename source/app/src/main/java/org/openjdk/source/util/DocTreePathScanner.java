package org.openjdk.source.util;

import org.openjdk.source.doctree.DocTree;

public class DocTreePathScanner<R, P> extends DocTreeScanner<R, P> {
    private DocTreePath path;

    public DocTreePath getCurrentPath() {
        return this.path;
    }

    public R scan(DocTreePath docTreePath, P p10) {
        this.path = docTreePath;
        try {
            return (R) docTreePath.getLeaf().accept(this, p10);
        } finally {
            this.path = null;
        }
    }

    @Override
    public R scan(DocTree docTree, P p10) {
        if (docTree == null) {
            return null;
        }
        DocTreePath docTreePath = this.path;
        this.path = new DocTreePath(docTreePath, docTree);
        try {
            return (R) docTree.accept(this, p10);
        } finally {
            this.path = docTreePath;
        }
    }
}
