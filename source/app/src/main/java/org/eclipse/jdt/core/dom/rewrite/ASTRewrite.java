package org.eclipse.jdt.core.dom.rewrite;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteAnalyzer;
import org.eclipse.jdt.internal.core.dom.rewrite.LineInformation;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.jdt.internal.core.dom.rewrite.TrackedNodePosition;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public class ASTRewrite {
    private final AST ast;
    private final NodeInfoStore nodeStore;
    private TargetSourceRangeComputer targetSourceRangeComputer = null;
    private Object property1 = null;
    private Object property2 = null;
    private final RewriteEventStore eventStore = new RewriteEventStore();

    public ASTRewrite(AST ast) {
        this.ast = ast;
        this.nodeStore = new NodeInfoStore(ast);
    }

    public static ASTRewrite create(AST ast) {
        return new ASTRewrite(ast);
    }

    private ASTNode createTargetNode(ASTNode aSTNode, boolean z10) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        validateIsExistingNode(aSTNode);
        validateIsCorrectAST(aSTNode);
        RewriteEventStore.CopySourceInfo markAsCopySource = getRewriteEventStore().markAsCopySource(aSTNode.getParent(), aSTNode.getLocationInParent(), aSTNode, z10);
        ASTNode newPlaceholderNode = getNodeStore().newPlaceholderNode(aSTNode.getNodeType());
        if (newPlaceholderNode != null) {
            getNodeStore().markAsCopyTarget(newPlaceholderNode, markAsCopySource);
            return newPlaceholderNode;
        }
        throw new IllegalArgumentException("Creating a target node is not supported for nodes of type" + aSTNode.getClass().getName());
    }

    private ASTNode getRootNode() {
        Iterator changeRootIterator = getRewriteEventStore().getChangeRootIterator();
        ASTNode aSTNode = null;
        int i10 = -1;
        int i11 = -1;
        while (changeRootIterator.hasNext()) {
            ASTNode aSTNode2 = (ASTNode) changeRootIterator.next();
            if (!RewriteEventStore.isNewNode(aSTNode2)) {
                int startPosition = aSTNode2.getStartPosition();
                int length = aSTNode2.getLength() + startPosition;
                if (aSTNode == null || (startPosition < i10 && length > i11)) {
                    aSTNode = aSTNode2;
                    i10 = startPosition;
                } else if (startPosition < i10) {
                    i10 = startPosition;
                } else if (length > i11) {
                }
                i11 = length;
            }
        }
        if (aSTNode != null) {
            int startPosition2 = aSTNode.getStartPosition();
            int length2 = aSTNode.getLength();
            while (true) {
                int i12 = length2 + startPosition2;
                if (i10 >= startPosition2 && i11 <= i12) {
                    break;
                }
                aSTNode = aSTNode.getParent();
                startPosition2 = aSTNode.getStartPosition();
                length2 = aSTNode.getLength();
            }
            for (ASTNode parent = aSTNode.getParent(); parent != null && parent.getStartPosition() == aSTNode.getStartPosition() && parent.getLength() == aSTNode.getLength(); parent = parent.getParent()) {
                aSTNode = parent;
            }
        }
        return aSTNode;
    }

    private TextEdit internalRewriteAST(char[] cArr, LineInformation lineInformation, String str, List list, Map map, ASTNode aSTNode, RecoveryScannerData recoveryScannerData) {
        MultiTextEdit multiTextEdit = new MultiTextEdit();
        TargetSourceRangeComputer extendedSourceRangeComputer = getExtendedSourceRangeComputer();
        this.eventStore.prepareMovedNodes(extendedSourceRangeComputer);
        aSTNode.accept(new ASTRewriteAnalyzer(cArr, lineInformation, str, multiTextEdit, this.eventStore, this.nodeStore, list, map, extendedSourceRangeComputer, recoveryScannerData));
        this.eventStore.revertMovedNodes();
        return multiTextEdit;
    }

    private void validateIsCorrectAST(ASTNode aSTNode) {
        if (aSTNode.getAST() != getAST()) {
            throw new IllegalArgumentException("Node is not inside the AST");
        }
    }

    private void validateIsExistingNode(ASTNode aSTNode) {
        if (aSTNode.getStartPosition() == -1) {
            throw new IllegalArgumentException("Node is not an existing node");
        }
    }

    private void validateIsListProperty(StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (structuralPropertyDescriptor.isChildListProperty()) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(structuralPropertyDescriptor.getId()) + " is not a list property");
    }

    private void validateIsPropertyOfNode(StructuralPropertyDescriptor structuralPropertyDescriptor, ASTNode aSTNode) {
        if (structuralPropertyDescriptor.getNodeClass().isInstance(aSTNode)) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(structuralPropertyDescriptor.getId()) + " is not a property of type " + aSTNode.getClass().getName());
    }

    private void validatePropertyType(StructuralPropertyDescriptor structuralPropertyDescriptor, Object obj) {
        Class childType;
        if (structuralPropertyDescriptor.isChildListProperty()) {
            throw new IllegalArgumentException("Can not modify a list property, use getListRewrite()");
        }
        if (RewriteEventStore.DEBUG) {
            if (obj == null) {
                if ((structuralPropertyDescriptor.isSimpleProperty() && ((SimplePropertyDescriptor) structuralPropertyDescriptor).isMandatory()) || (structuralPropertyDescriptor.isChildProperty() && ((ChildPropertyDescriptor) structuralPropertyDescriptor).isMandatory())) {
                    throw new IllegalArgumentException("Can not remove property " + structuralPropertyDescriptor.getId());
                }
                return;
            }
            if (structuralPropertyDescriptor.isSimpleProperty()) {
                childType = ((SimplePropertyDescriptor) structuralPropertyDescriptor).getValueType();
                if (childType == Integer.TYPE) {
                    childType = Integer.class;
                } else if (childType == Boolean.TYPE) {
                    childType = Boolean.class;
                }
            } else {
                childType = ((ChildPropertyDescriptor) structuralPropertyDescriptor).getChildType();
            }
            if (childType.isAssignableFrom(obj.getClass())) {
                return;
            }
            throw new IllegalArgumentException(obj.getClass().getName() + " is not a valid type for " + structuralPropertyDescriptor.getNodeClass().getName() + " property '" + structuralPropertyDescriptor.getId() + JavaElement.JEM_MODULAR_CLASSFILE);
        }
    }

    public final ASTNode createCopyTarget(ASTNode aSTNode) {
        return createTargetNode(aSTNode, false);
    }

    public final ASTNode createGroupNode(ASTNode[] aSTNodeArr) {
        if (aSTNodeArr == null || aSTNodeArr.length == 0) {
            throw new IllegalArgumentException();
        }
        Block createCollapsePlaceholder = getNodeStore().createCollapsePlaceholder();
        ListRewrite listRewrite = getListRewrite(createCollapsePlaceholder, Block.STATEMENTS_PROPERTY);
        for (ASTNode aSTNode : aSTNodeArr) {
            listRewrite.insertLast(aSTNode, null);
        }
        return createCollapsePlaceholder;
    }

    public final ASTNode createMoveTarget(ASTNode aSTNode) {
        return createTargetNode(aSTNode, true);
    }

    public final ASTNode createStringPlaceholder(String str, int i10) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        ASTNode newPlaceholderNode = getNodeStore().newPlaceholderNode(i10);
        if (newPlaceholderNode != null) {
            getNodeStore().markAsStringPlaceholder(newPlaceholderNode, str);
            return newPlaceholderNode;
        }
        throw new IllegalArgumentException("String placeholder is not supported for type" + i10);
    }

    public Object get(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (aSTNode == null || structuralPropertyDescriptor == null) {
            throw new IllegalArgumentException();
        }
        if (structuralPropertyDescriptor.isChildListProperty()) {
            throw new IllegalArgumentException("Use the list rewriter to access nodes in a list");
        }
        return this.eventStore.getNewValue(aSTNode, structuralPropertyDescriptor);
    }

    public final AST getAST() {
        return this.ast;
    }

    public final TargetSourceRangeComputer getExtendedSourceRangeComputer() {
        if (this.targetSourceRangeComputer == null) {
            this.targetSourceRangeComputer = new TargetSourceRangeComputer();
        }
        return this.targetSourceRangeComputer;
    }

    public final ListRewrite getListRewrite(ASTNode aSTNode, ChildListPropertyDescriptor childListPropertyDescriptor) {
        if (aSTNode == null || childListPropertyDescriptor == null) {
            throw new IllegalArgumentException();
        }
        validateIsCorrectAST(aSTNode);
        validateIsListProperty(childListPropertyDescriptor);
        validateIsPropertyOfNode(childListPropertyDescriptor, aSTNode);
        return new ListRewrite(this, aSTNode, childListPropertyDescriptor);
    }

    public final NodeInfoStore getNodeStore() {
        return this.nodeStore;
    }

    public final Object getProperty(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Object obj = this.property1;
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof String)) {
            return ((Map) obj).get(str);
        }
        if (str.equals(obj)) {
            return this.property2;
        }
        return null;
    }

    public final RewriteEventStore getRewriteEventStore() {
        return this.eventStore;
    }

    public final void remove(ASTNode aSTNode, TextEditGroup textEditGroup) {
        StructuralPropertyDescriptor locationInParent;
        ASTNode parent;
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        if (RewriteEventStore.isNewNode(aSTNode)) {
            RewriteEventStore.PropertyLocation propertyLocation = this.eventStore.getPropertyLocation(aSTNode, 1);
            if (propertyLocation == null) {
                throw new IllegalArgumentException("Node is not part of the rewriter's AST");
            }
            locationInParent = propertyLocation.getProperty();
            parent = propertyLocation.getParent();
        } else {
            locationInParent = aSTNode.getLocationInParent();
            parent = aSTNode.getParent();
        }
        if (locationInParent.isChildListProperty()) {
            getListRewrite(parent, (ChildListPropertyDescriptor) locationInParent).remove(aSTNode, textEditGroup);
        } else {
            set(parent, locationInParent, null, textEditGroup);
        }
    }

    public final void replace(ASTNode aSTNode, ASTNode aSTNode2, TextEditGroup textEditGroup) {
        StructuralPropertyDescriptor locationInParent;
        ASTNode parent;
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        if (RewriteEventStore.isNewNode(aSTNode)) {
            RewriteEventStore.PropertyLocation propertyLocation = this.eventStore.getPropertyLocation(aSTNode, 1);
            if (propertyLocation == null) {
                throw new IllegalArgumentException("Node is not part of the rewriter's AST");
            }
            locationInParent = propertyLocation.getProperty();
            parent = propertyLocation.getParent();
        } else {
            locationInParent = aSTNode.getLocationInParent();
            parent = aSTNode.getParent();
        }
        if (locationInParent.isChildListProperty()) {
            getListRewrite(parent, (ChildListPropertyDescriptor) locationInParent).replace(aSTNode, aSTNode2, textEditGroup);
        } else {
            set(parent, locationInParent, aSTNode2, textEditGroup);
        }
    }

    public TextEdit rewriteAST(IDocument iDocument, Map map) throws IllegalArgumentException {
        if (iDocument != null) {
            ASTNode rootNode = getRootNode();
            if (rootNode == null) {
                return new MultiTextEdit();
            }
            char[] charArray = iDocument.get().toCharArray();
            LineInformation create = LineInformation.create(iDocument);
            String defaultLineDelimiter = TextUtilities.getDefaultLineDelimiter(iDocument);
            ASTNode root = rootNode.getRoot();
            List commentList = root instanceof CompilationUnit ? ((CompilationUnit) root).getCommentList() : null;
            if (map == null) {
                map = JavaCore.getOptions();
            }
            return internalRewriteAST(charArray, create, defaultLineDelimiter, commentList, map, rootNode, (RecoveryScannerData) ((CompilationUnit) root).getStatementsRecoveryData());
        }
        throw new IllegalArgumentException();
    }

    public final void set(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, Object obj, TextEditGroup textEditGroup) {
        if (aSTNode == null || structuralPropertyDescriptor == null) {
            throw new IllegalArgumentException();
        }
        validateIsCorrectAST(aSTNode);
        validatePropertyType(structuralPropertyDescriptor, obj);
        validateIsPropertyOfNode(structuralPropertyDescriptor, aSTNode);
        NodeRewriteEvent nodeEvent = this.eventStore.getNodeEvent(aSTNode, structuralPropertyDescriptor, true);
        nodeEvent.setNewValue(obj);
        if (textEditGroup != null) {
            this.eventStore.setEventEditGroup(nodeEvent, textEditGroup);
        }
    }

    public final void setProperty(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Object obj2 = this.property1;
        if (obj2 == null) {
            if (obj == null) {
                return;
            }
            this.property1 = str;
            this.property2 = obj;
            return;
        }
        if (!(obj2 instanceof String)) {
            Map map = (Map) obj2;
            if (obj != null) {
                map.put(str, obj);
                return;
            }
            map.remove(str);
            if (map.size() == 1) {
                Map.Entry[] entryArr = (Map.Entry[]) map.entrySet().toArray(new Map.Entry[1]);
                this.property1 = entryArr[0].getKey();
                this.property2 = entryArr[0].getValue();
                return;
            }
            return;
        }
        if (str.equals(obj2)) {
            if (obj != null) {
                this.property2 = obj;
                return;
            } else {
                this.property1 = null;
                this.property2 = null;
                return;
            }
        }
        if (obj == null) {
            return;
        }
        HashMap hashMap = new HashMap(3);
        hashMap.put(this.property1, this.property2);
        hashMap.put(str, obj);
        this.property1 = hashMap;
        this.property2 = null;
    }

    public final void setTargetSourceRangeComputer(TargetSourceRangeComputer targetSourceRangeComputer) {
        this.targetSourceRangeComputer = targetSourceRangeComputer;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Events:\n");
        RewriteEventStore rewriteEventStore = this.eventStore;
        if (rewriteEventStore != null) {
            stringBuffer.append(rewriteEventStore.toString());
        }
        return stringBuffer.toString();
    }

    public final ITrackedNodePosition track(ASTNode aSTNode) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        TextEditGroup trackedNodeData = this.eventStore.getTrackedNodeData(aSTNode);
        if (trackedNodeData == null) {
            trackedNodeData = new TextEditGroup("internal");
            this.eventStore.setTrackedNodeData(aSTNode, trackedNodeData);
        }
        return new TrackedNodePosition(trackedNodeData, aSTNode);
    }

    public TextEdit rewriteAST() throws JavaModelException, IllegalArgumentException {
        ASTNode rootNode = getRootNode();
        if (rootNode == null) {
            return new MultiTextEdit();
        }
        ASTNode root = rootNode.getRoot();
        if (root instanceof CompilationUnit) {
            CompilationUnit compilationUnit = (CompilationUnit) root;
            ITypeRoot typeRoot = compilationUnit.getTypeRoot();
            if (typeRoot != null && typeRoot.getBuffer() != null) {
                return internalRewriteAST(typeRoot.getBuffer().getCharacters(), LineInformation.create(compilationUnit), typeRoot.findRecommendedLineSeparator(), compilationUnit.getCommentList(), typeRoot.getJavaProject().getOptions(true), rootNode, (RecoveryScannerData) compilationUnit.getStatementsRecoveryData());
            }
            throw new IllegalArgumentException("This API can only be used if the AST is created from a compilation unit or class file");
        }
        throw new IllegalArgumentException("This API can only be used if the AST is created from a compilation unit or class file");
    }
}
