package org.openjdk.source.util;

import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.Tree;

public interface SourcePositions {
    long getEndPosition(CompilationUnitTree compilationUnitTree, Tree tree);

    long getStartPosition(CompilationUnitTree compilationUnitTree, Tree tree);
}
