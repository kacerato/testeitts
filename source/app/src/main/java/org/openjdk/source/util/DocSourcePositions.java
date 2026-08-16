package org.openjdk.source.util;

import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.tree.CompilationUnitTree;

public interface DocSourcePositions extends SourcePositions {
    long getEndPosition(CompilationUnitTree compilationUnitTree, DocCommentTree docCommentTree, DocTree docTree);

    long getStartPosition(CompilationUnitTree compilationUnitTree, DocCommentTree docCommentTree, DocTree docTree);
}
