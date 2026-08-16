package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.rewrite.ITrackedNodePosition;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public class TrackedNodePosition implements ITrackedNodePosition {
    private final TextEditGroup group;
    private final ASTNode node;

    public TrackedNodePosition(TextEditGroup textEditGroup, ASTNode aSTNode) {
        this.group = textEditGroup;
        this.node = aSTNode;
    }

    @Override
    public int getLength() {
        IRegion coverage;
        if (!this.group.isEmpty() && (coverage = TextEdit.getCoverage(this.group.getTextEdits())) != null) {
            return coverage.getLength();
        }
        return this.node.getLength();
    }

    @Override
    public int getStartPosition() {
        IRegion coverage;
        if (!this.group.isEmpty() && (coverage = TextEdit.getCoverage(this.group.getTextEdits())) != null) {
            return coverage.getOffset();
        }
        return this.node.getStartPosition();
    }
}
