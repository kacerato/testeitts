package org.eclipse.jdt.core.dom.rewrite;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;

public class TargetSourceRangeComputer {

    public static final class SourceRange {
        private int length;
        private int startPosition;

        public SourceRange(int i10, int i11) {
            this.startPosition = i10;
            this.length = i11;
        }

        public int getLength() {
            return this.length;
        }

        public int getStartPosition() {
            return this.startPosition;
        }
    }

    public SourceRange computeSourceRange(ASTNode aSTNode) {
        ASTNode root = aSTNode.getRoot();
        if (!(root instanceof CompilationUnit)) {
            return new SourceRange(aSTNode.getStartPosition(), aSTNode.getLength());
        }
        CompilationUnit compilationUnit = (CompilationUnit) root;
        return new SourceRange(compilationUnit.getExtendedStartPosition(aSTNode), compilationUnit.getExtendedLength(aSTNode));
    }
}
