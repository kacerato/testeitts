package org.openjdk.source.util;

import java.util.Iterator;
import java.util.Objects;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocTree;

public class DocTreePath implements Iterable<DocTree> {
    private final DocCommentTree docComment;
    private final DocTree leaf;
    private final DocTreePath parent;
    private final TreePath treePath;

    public class C1Result extends Error {
        static final long serialVersionUID = -5942088234594905625L;
        DocTreePath path;

        public C1Result(DocTreePath docTreePath) {
            this.path = docTreePath;
        }
    }

    public DocTreePath(TreePath treePath, DocCommentTree docCommentTree) {
        this.treePath = treePath;
        Objects.requireNonNull(docCommentTree);
        this.docComment = docCommentTree;
        this.parent = null;
        this.leaf = docCommentTree;
    }

    public static DocTreePath getPath(TreePath treePath, DocCommentTree docCommentTree, DocTree docTree) {
        return getPath(new DocTreePath(treePath, docCommentTree), docTree);
    }

    public DocCommentTree getDocComment() {
        return this.docComment;
    }

    public DocTree getLeaf() {
        return this.leaf;
    }

    public DocTreePath getParentPath() {
        return this.parent;
    }

    public TreePath getTreePath() {
        return this.treePath;
    }

    @Override
    public Iterator<DocTree> iterator() {
        return new Iterator<DocTree>() {
            private DocTreePath next;

            {
                this.next = DocTreePath.this;
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
            public DocTree next() {
                DocTree docTree = this.next.leaf;
                this.next = this.next.parent;
                return docTree;
            }
        };
    }

    public static DocTreePath getPath(DocTreePath docTreePath, DocTree docTree) {
        Objects.requireNonNull(docTreePath);
        Objects.requireNonNull(docTree);
        if (docTreePath.getLeaf() == docTree) {
            return docTreePath;
        }
        try {
            new DocTreePathScanner<DocTreePath, DocTree>() {
                @Override
                public DocTreePath scan(DocTree docTree2, DocTree docTree3) {
                    if (docTree2 != docTree3) {
                        return (DocTreePath) super.scan(docTree2, docTree3);
                    }
                    throw new C1Result(new DocTreePath(getCurrentPath(), docTree3));
                }
            }.scan(docTreePath, (DocTreePath) docTree);
            return null;
        } catch (C1Result e10) {
            return e10.path;
        }
    }

    public DocTreePath(DocTreePath docTreePath, DocTree docTree) {
        if (docTree.getKind() != DocTree.Kind.DOC_COMMENT) {
            this.treePath = docTreePath.treePath;
            this.docComment = docTreePath.docComment;
            this.parent = docTreePath;
            this.leaf = docTree;
            return;
        }
        throw new IllegalArgumentException("Use DocTreePath(TreePath, DocCommentTree) to construct DocTreePath for a DocCommentTree.");
    }
}
