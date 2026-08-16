package org.eclipse.jdt.core.dom;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.rewrite.TargetSourceRangeComputer;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteAnalyzer;
import org.eclipse.jdt.internal.core.dom.rewrite.LineInformation;
import org.eclipse.jdt.internal.core.dom.rewrite.ListRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;

public class InternalASTRewrite extends NodeEventHandler {
    protected final NodeInfoStore nodeStore;
    private CompilationUnit root;
    int cloneDepth = 0;
    protected final RewriteEventStore eventStore = new RewriteEventStore();
    protected final Hashtable clonedNodes = new Hashtable();

    public InternalASTRewrite(CompilationUnit compilationUnit) {
        this.root = compilationUnit;
        this.nodeStore = new NodeInfoStore(compilationUnit.getAST());
    }

    private ListRewriteEvent getListEvent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return this.eventStore.getListEvent(aSTNode, structuralPropertyDescriptor, true);
    }

    private NodeRewriteEvent getNodeEvent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return this.eventStore.getNodeEvent(aSTNode, structuralPropertyDescriptor, true);
    }

    private CompilationUnit getRootNode() {
        return this.root;
    }

    private void markAsMoveOrCopyTarget(ASTNode aSTNode, ASTNode aSTNode2) {
        if (this.cloneDepth == 0) {
            while (aSTNode != null && this.clonedNodes.containsKey(aSTNode)) {
                if (((ASTNode) this.clonedNodes.remove(aSTNode)) != null) {
                    List structuralPropertiesForType = aSTNode.structuralPropertiesForType();
                    for (int i10 = 0; i10 < structuralPropertiesForType.size(); i10++) {
                        Object structuralProperty = aSTNode.getStructuralProperty((StructuralPropertyDescriptor) structuralPropertiesForType.get(i10));
                        if (structuralProperty instanceof ASTNode) {
                            markAsMoveOrCopyTarget(aSTNode, (ASTNode) structuralProperty);
                        } else if (structuralProperty instanceof List) {
                            List list = (List) structuralProperty;
                            for (int i11 = 0; i11 < list.size(); i11++) {
                                markAsMoveOrCopyTarget(aSTNode, (ASTNode) list.get(i11));
                            }
                        }
                    }
                }
                aSTNode = aSTNode.getParent();
            }
        }
        ASTNode aSTNode3 = (ASTNode) this.clonedNodes.get(aSTNode2);
        if (aSTNode3 != null) {
            if (this.cloneDepth == 0) {
                RewriteEventStore.PropertyLocation propertyLocation = this.eventStore.getPropertyLocation(aSTNode3, 2);
                this.nodeStore.markAsCopyTarget(aSTNode2, this.eventStore.markAsCopySource(propertyLocation.getParent(), propertyLocation.getProperty(), aSTNode3, false));
                return;
            }
            return;
        }
        if ((aSTNode2.getFlags() & 2) != 0) {
            RewriteEventStore.PropertyLocation propertyLocation2 = this.eventStore.getPropertyLocation(aSTNode2, 2);
            this.nodeStore.markAsCopyTarget(aSTNode2, this.eventStore.markAsCopySource(propertyLocation2.getParent(), propertyLocation2.getProperty(), aSTNode2, true));
        }
    }

    @Override
    public void postAddChildEvent(ASTNode aSTNode, ASTNode aSTNode2, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (structuralPropertyDescriptor.isChildListProperty()) {
            ListRewriteEvent listEvent = getListEvent(aSTNode, structuralPropertyDescriptor);
            List list = (List) aSTNode.getStructuralProperty(structuralPropertyDescriptor);
            int indexOf = list.indexOf(aSTNode2) + 1;
            listEvent.insert(aSTNode2, indexOf < list.size() ? listEvent.getIndex((ASTNode) list.get(indexOf), 1) : -1);
            if (aSTNode2 != null) {
                markAsMoveOrCopyTarget(aSTNode, aSTNode2);
            }
        }
    }

    @Override
    public void postCloneNodeEvent(ASTNode aSTNode, ASTNode aSTNode2) {
        AST ast = aSTNode.ast;
        AST ast2 = this.root.ast;
        if (ast == ast2 && aSTNode2.ast == ast2) {
            if ((aSTNode.getFlags() & 2) != 0) {
                this.clonedNodes.put(aSTNode2, aSTNode);
            } else {
                Object obj = this.clonedNodes.get(aSTNode);
                if (obj != null) {
                    this.clonedNodes.put(aSTNode2, obj);
                }
            }
        }
        this.cloneDepth--;
    }

    @Override
    public void postValueChangeEvent(ASTNode aSTNode, SimplePropertyDescriptor simplePropertyDescriptor) {
        getNodeEvent(aSTNode, simplePropertyDescriptor).setNewValue(aSTNode.getStructuralProperty(simplePropertyDescriptor));
    }

    @Override
    public void preAddChildEvent(ASTNode aSTNode, ASTNode aSTNode2, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (!structuralPropertyDescriptor.isChildProperty()) {
            if (structuralPropertyDescriptor.isChildListProperty()) {
                getListEvent(aSTNode, structuralPropertyDescriptor);
            }
        } else {
            getNodeEvent(aSTNode, structuralPropertyDescriptor).setNewValue(aSTNode2);
            if (aSTNode2 != null) {
                markAsMoveOrCopyTarget(aSTNode, aSTNode2);
            }
        }
    }

    @Override
    public void preCloneNodeEvent(ASTNode aSTNode) {
        this.cloneDepth++;
    }

    @Override
    public void preRemoveChildEvent(ASTNode aSTNode, ASTNode aSTNode2, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (structuralPropertyDescriptor.isChildProperty()) {
            getNodeEvent(aSTNode, structuralPropertyDescriptor).setNewValue(null);
            return;
        }
        if (structuralPropertyDescriptor.isChildListProperty()) {
            ListRewriteEvent listEvent = getListEvent(aSTNode, structuralPropertyDescriptor);
            NodeRewriteEvent nodeRewriteEvent = (NodeRewriteEvent) listEvent.getChildren()[listEvent.getIndex(aSTNode2, 1)];
            if (nodeRewriteEvent.getOriginalValue() == null) {
                listEvent.revertChange(nodeRewriteEvent);
            } else {
                nodeRewriteEvent.setNewValue(null);
            }
        }
    }

    @Override
    public void preReplaceChildEvent(ASTNode aSTNode, ASTNode aSTNode2, ASTNode aSTNode3, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (structuralPropertyDescriptor.isChildProperty()) {
            getNodeEvent(aSTNode, structuralPropertyDescriptor).setNewValue(aSTNode3);
            if (aSTNode3 != null) {
                markAsMoveOrCopyTarget(aSTNode, aSTNode3);
                return;
            }
            return;
        }
        if (structuralPropertyDescriptor.isChildListProperty()) {
            ListRewriteEvent listEvent = getListEvent(aSTNode, structuralPropertyDescriptor);
            ((NodeRewriteEvent) listEvent.getChildren()[listEvent.getIndex(aSTNode2, 1)]).setNewValue(aSTNode3);
            if (aSTNode3 != null) {
                markAsMoveOrCopyTarget(aSTNode, aSTNode3);
            }
        }
    }

    @Override
    public void preValueChangeEvent(ASTNode aSTNode, SimplePropertyDescriptor simplePropertyDescriptor) {
        getNodeEvent(aSTNode, simplePropertyDescriptor);
    }

    public TextEdit rewriteAST(IDocument iDocument, Map map) {
        MultiTextEdit multiTextEdit = new MultiTextEdit();
        final CompilationUnit rootNode = getRootNode();
        if (rootNode != null) {
            TargetSourceRangeComputer targetSourceRangeComputer = new TargetSourceRangeComputer() {
                @Override
                public TargetSourceRangeComputer.SourceRange computeSourceRange(ASTNode aSTNode) {
                    return new TargetSourceRangeComputer.SourceRange(rootNode.getExtendedStartPosition(aSTNode), rootNode.getExtendedLength(aSTNode));
                }
            };
            char[] charArray = iDocument.get().toCharArray();
            LineInformation create = LineInformation.create(iDocument);
            String defaultLineDelimiter = TextUtilities.getDefaultLineDelimiter(iDocument);
            List commentList = rootNode.getCommentList();
            if (map == null) {
                map = JavaCore.getOptions();
            }
            rootNode.accept(new ASTRewriteAnalyzer(charArray, create, defaultLineDelimiter, multiTextEdit, this.eventStore, this.nodeStore, commentList, map, targetSourceRangeComputer, (RecoveryScannerData) rootNode.getStatementsRecoveryData()));
        }
        return multiTextEdit;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Events:\n");
        stringBuffer.append(this.eventStore.toString());
        return stringBuffer.toString();
    }
}
