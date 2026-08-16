package org.eclipse.jdt.core.dom.rewrite;

import java.util.Collections;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.internal.core.dom.rewrite.ListRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.text.edits.TextEditGroup;

public final class ListRewrite {
    private ChildListPropertyDescriptor childListProperty;
    private ASTNode parent;
    private ASTRewrite rewriter;

    public ListRewrite(ASTRewrite aSTRewrite, ASTNode aSTNode, ChildListPropertyDescriptor childListPropertyDescriptor) {
        this.rewriter = aSTRewrite;
        this.parent = aSTNode;
        this.childListProperty = childListPropertyDescriptor;
    }

    private ASTNode createTargetNode(ASTNode aSTNode, ASTNode aSTNode2, boolean z10, ASTNode aSTNode3, TextEditGroup textEditGroup) {
        if (aSTNode == null || aSTNode2 == null) {
            throw new IllegalArgumentException();
        }
        NodeInfoStore nodeStore = this.rewriter.getNodeStore();
        ASTNode newPlaceholderNode = nodeStore.newPlaceholderNode(aSTNode.getNodeType());
        if (newPlaceholderNode != null) {
            nodeStore.markAsCopyTarget(newPlaceholderNode, getRewriteStore().createRangeCopy(this.parent, this.childListProperty, aSTNode, aSTNode2, z10, nodeStore.createCollapsePlaceholder(), aSTNode3, textEditGroup));
            return newPlaceholderNode;
        }
        throw new IllegalArgumentException("Creating a target node is not supported for nodes of type" + aSTNode.getClass().getName());
    }

    private ListRewriteEvent getEvent() {
        return getRewriteStore().getListEvent(this.parent, this.childListProperty, true);
    }

    private RewriteEventStore getRewriteStore() {
        return this.rewriter.getRewriteEventStore();
    }

    private void internalInsertAt(ASTNode aSTNode, int i10, boolean z10, TextEditGroup textEditGroup) {
        validatePropertyType(aSTNode);
        RewriteEvent insert = getEvent().insert(aSTNode, i10);
        if (z10) {
            getRewriteStore().setInsertBoundToPrevious(aSTNode);
        }
        if (textEditGroup != null) {
            getRewriteStore().setEventEditGroup(insert, textEditGroup);
        }
    }

    private boolean isInsertBoundToPreviousByDefault(ASTNode aSTNode) {
        return (aSTNode instanceof Statement) || (aSTNode instanceof FieldDeclaration);
    }

    private void validatePropertyType(ASTNode aSTNode) {
        if (RewriteEventStore.DEBUG && !this.childListProperty.getElementType().isAssignableFrom(aSTNode.getClass())) {
            throw new IllegalArgumentException(aSTNode.getClass().getName() + " is not a valid type for " + this.childListProperty.getNodeClass().getName() + " property '" + this.childListProperty.getId() + "'. Must be " + this.childListProperty.getElementType().getName());
        }
    }

    public final ASTNode createCopyTarget(ASTNode aSTNode, ASTNode aSTNode2) {
        return aSTNode == aSTNode2 ? this.rewriter.createCopyTarget(aSTNode) : createTargetNode(aSTNode, aSTNode2, false, null, null);
    }

    public final ASTNode createMoveTarget(ASTNode aSTNode, ASTNode aSTNode2) {
        return createMoveTarget(aSTNode, aSTNode2, null, null);
    }

    public ASTRewrite getASTRewrite() {
        return this.rewriter;
    }

    public StructuralPropertyDescriptor getLocationInParent() {
        return this.childListProperty;
    }

    public List getOriginalList() {
        return Collections.unmodifiableList((List) getEvent().getOriginalValue());
    }

    public ASTNode getParent() {
        return this.parent;
    }

    public List getRewrittenList() {
        return Collections.unmodifiableList((List) getEvent().getNewValue());
    }

    public void insertAfter(ASTNode aSTNode, ASTNode aSTNode2, TextEditGroup textEditGroup) {
        if (aSTNode == null || aSTNode2 == null) {
            throw new IllegalArgumentException();
        }
        int index = getEvent().getIndex(aSTNode2, 3);
        if (index == -1) {
            throw new IllegalArgumentException("Node does not exist");
        }
        internalInsertAt(aSTNode, index + 1, true, textEditGroup);
    }

    public void insertAt(ASTNode aSTNode, int i10, TextEditGroup textEditGroup) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        internalInsertAt(aSTNode, i10, isInsertBoundToPreviousByDefault(aSTNode), textEditGroup);
    }

    public void insertBefore(ASTNode aSTNode, ASTNode aSTNode2, TextEditGroup textEditGroup) {
        if (aSTNode == null || aSTNode2 == null) {
            throw new IllegalArgumentException();
        }
        int index = getEvent().getIndex(aSTNode2, 3);
        if (index == -1) {
            throw new IllegalArgumentException("Node does not exist");
        }
        internalInsertAt(aSTNode, index, false, textEditGroup);
    }

    public void insertFirst(ASTNode aSTNode, TextEditGroup textEditGroup) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        internalInsertAt(aSTNode, 0, false, textEditGroup);
    }

    public void insertLast(ASTNode aSTNode, TextEditGroup textEditGroup) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        internalInsertAt(aSTNode, -1, true, textEditGroup);
    }

    public void remove(ASTNode aSTNode, TextEditGroup textEditGroup) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        RewriteEvent removeEntry = getEvent().removeEntry(aSTNode);
        if (textEditGroup != null) {
            getRewriteStore().setEventEditGroup(removeEntry, textEditGroup);
        }
    }

    public void replace(ASTNode aSTNode, ASTNode aSTNode2, TextEditGroup textEditGroup) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        validatePropertyType(aSTNode);
        RewriteEvent replaceEntry = getEvent().replaceEntry(aSTNode, aSTNode2);
        if (textEditGroup != null) {
            getRewriteStore().setEventEditGroup(replaceEntry, textEditGroup);
        }
    }

    public final ASTNode createMoveTarget(ASTNode aSTNode, ASTNode aSTNode2, ASTNode aSTNode3, TextEditGroup textEditGroup) {
        if (aSTNode == aSTNode2) {
            replace(aSTNode, aSTNode3, textEditGroup);
            return this.rewriter.createMoveTarget(aSTNode);
        }
        return createTargetNode(aSTNode, aSTNode2, true, aSTNode3, textEditGroup);
    }
}
