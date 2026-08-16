package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.compiler.InvalidInputException;

public final class NodeFinder {
    private ASTNode fCoveredNode;
    private ASTNode fCoveringNode;

    public static class NodeFinderVisitor extends ASTVisitor {
        private ASTNode fCoveredNode;
        private ASTNode fCoveringNode;
        private int fEnd;
        private int fStart;

        public NodeFinderVisitor(int i10, int i11) {
            super(true);
            this.fStart = i10;
            this.fEnd = i10 + i11;
        }

        public ASTNode getCoveredNode() {
            return this.fCoveredNode;
        }

        public ASTNode getCoveringNode() {
            return this.fCoveringNode;
        }

        @Override
        public boolean preVisit2(ASTNode aSTNode) {
            int i10;
            int startPosition = aSTNode.getStartPosition();
            int length = aSTNode.getLength() + startPosition;
            int i11 = this.fStart;
            if (length < i11 || (i10 = this.fEnd) < startPosition) {
                return false;
            }
            if (startPosition <= i11 && i10 <= length) {
                this.fCoveringNode = aSTNode;
            }
            if (i11 > startPosition || length > i10) {
                return true;
            }
            if (this.fCoveringNode == aSTNode) {
                this.fCoveredNode = aSTNode;
                return true;
            }
            if (this.fCoveredNode == null) {
                this.fCoveredNode = aSTNode;
            }
            return false;
        }
    }

    public NodeFinder(ASTNode aSTNode, int i10, int i11) {
        NodeFinderVisitor nodeFinderVisitor = new NodeFinderVisitor(i10, i11);
        aSTNode.accept(nodeFinderVisitor);
        this.fCoveredNode = nodeFinderVisitor.getCoveredNode();
        this.fCoveringNode = nodeFinderVisitor.getCoveringNode();
    }

    public static ASTNode perform(ASTNode aSTNode, int i10, int i11) {
        NodeFinder nodeFinder = new NodeFinder(aSTNode, i10, i11);
        ASTNode coveredNode = nodeFinder.getCoveredNode();
        return (coveredNode != null && coveredNode.getStartPosition() == i10 && coveredNode.getLength() == i11) ? coveredNode : nodeFinder.getCoveringNode();
    }

    public ASTNode getCoveredNode() {
        return this.fCoveredNode;
    }

    public ASTNode getCoveringNode() {
        return this.fCoveringNode;
    }

    public static ASTNode perform(ASTNode aSTNode, ISourceRange iSourceRange) {
        return perform(aSTNode, iSourceRange.getOffset(), iSourceRange.getLength());
    }

    public static ASTNode perform(ASTNode aSTNode, int i10, int i11, ITypeRoot iTypeRoot) throws JavaModelException {
        IBuffer buffer;
        int currentTokenStartPosition;
        NodeFinder nodeFinder = new NodeFinder(aSTNode, i10, i11);
        ASTNode coveredNode = nodeFinder.getCoveredNode();
        if (coveredNode == null) {
            return null;
        }
        int startPosition = coveredNode.getStartPosition();
        if (i10 <= startPosition && startPosition + coveredNode.getLength() <= i10 + i11 && (buffer = iTypeRoot.getBuffer()) != null) {
            IScanner createScanner = ToolFactory.createScanner(false, false, false, false);
            try {
                createScanner.setSource(buffer.getText(i10, i11).toCharArray());
                if (createScanner.getNextToken() != 158 && (currentTokenStartPosition = createScanner.getCurrentTokenStartPosition()) == coveredNode.getStartPosition() - i10) {
                    createScanner.resetTo(currentTokenStartPosition + coveredNode.getLength(), i11 - 1);
                    if (createScanner.getNextToken() == 158) {
                        return coveredNode;
                    }
                }
            } catch (IndexOutOfBoundsException unused) {
                return null;
            } catch (InvalidInputException unused2) {
            }
        }
        return nodeFinder.getCoveringNode();
    }
}
