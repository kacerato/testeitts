package org.eclipse.jdt.internal.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.jdom.DOMException;
import org.eclipse.jdt.core.jdom.DOMFactory;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMFactory;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;

public abstract class DOMNode implements IDOMNode {
    protected static final int MASK_DETAILED_SOURCE_INDEXES = 2048;
    protected static final int MASK_FIELD_HAS_INITIALIZER = 1;
    protected static final int MASK_FIELD_IS_VARIABLE_DECLARATOR = 2;
    protected static final int MASK_FIELD_TYPE_ALTERED = 4;
    protected static final int MASK_HAS_BODY = 16;
    protected static final int MASK_HAS_COMMENT = 32;
    protected static final int MASK_IS_CONSTRUCTOR = 64;
    protected static final int MASK_NAME_ALTERED = 8;
    protected static final int MASK_RETURN_TYPE_ALTERED = 1024;
    protected static final int MASK_TYPE_HAS_INTERFACES = 512;
    protected static final int MASK_TYPE_HAS_SUPERCLASS = 256;
    protected static final int MASK_TYPE_IS_CLASS = 128;
    protected char[] fDocument;
    protected DOMNode fFirstChild;
    protected int fInsertionPosition;
    protected boolean fIsFragmented;
    protected DOMNode fLastChild;
    protected String fName;
    protected int[] fNameRange;
    protected DOMNode fNextNode;
    protected DOMNode fParent;
    protected DOMNode fPreviousNode;
    protected int[] fSourceRange;
    protected int fStateMask;

    public DOMNode() {
        this.fFirstChild = null;
        this.fLastChild = null;
        this.fNextNode = null;
        this.fParent = null;
        this.fPreviousNode = null;
        this.fIsFragmented = false;
        this.fStateMask = 0;
        this.fName = null;
        this.fDocument = null;
        this.fSourceRange = new int[]{-1, -1};
        this.fNameRange = new int[]{-1, -1};
        fragment();
    }

    private DOMNode cloneSharingDocument(char[] cArr, int i10) {
        DOMNode newDOMNode = newDOMNode();
        newDOMNode.shareContents(this);
        newDOMNode.fDocument = cArr;
        if (i10 > 0) {
            newDOMNode.offset(0 - i10);
        }
        if (canHaveChildren()) {
            Enumeration children = getChildren();
            while (children.hasMoreElements()) {
                DOMNode dOMNode = (DOMNode) children.nextElement();
                if (dOMNode.fDocument == this.fDocument) {
                    newDOMNode.basicAddChild(dOMNode.cloneSharingDocument(cArr, i10));
                } else {
                    newDOMNode.addChild((DOMNode) dOMNode.clone());
                }
            }
        }
        return newDOMNode;
    }

    @Override
    public void addChild(IDOMNode iDOMNode) throws IllegalArgumentException, DOMException {
        basicAddChild(iDOMNode);
        if (iDOMNode.getNodeType() == 6 && ((IDOMMethod) iDOMNode).isConstructor()) {
            ((DOMNode) iDOMNode).fragment();
        } else {
            fragment();
        }
    }

    public void appendContents(CharArrayBuffer charArrayBuffer) {
        if (isFragmented()) {
            appendFragmentedContents(charArrayBuffer);
            return;
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fSourceRange;
        int i10 = iArr[0];
        charArrayBuffer.append(cArr, i10, (iArr[1] + 1) - i10);
    }

    public void appendContentsOfChildren(CharArrayBuffer charArrayBuffer) {
        int i10;
        int i11;
        DOMNode dOMNode = this.fFirstChild;
        if (dOMNode != null) {
            i10 = dOMNode.getStartPosition();
            i11 = dOMNode.getEndPosition();
        } else {
            i10 = 0;
            i11 = 0;
        }
        while (dOMNode != null) {
            DOMNode dOMNode2 = dOMNode.fNextNode;
            if (dOMNode2 != null) {
                if (dOMNode2.isContentMergableWith(dOMNode)) {
                    i11 = dOMNode2.getEndPosition();
                } else {
                    if (dOMNode.isFragmented()) {
                        dOMNode.appendContents(charArrayBuffer);
                    } else {
                        charArrayBuffer.append(dOMNode.getDocument(), i10, (i11 + 1) - i10);
                    }
                    int startPosition = dOMNode2.getStartPosition();
                    i11 = dOMNode2.getEndPosition();
                    i10 = startPosition;
                }
            } else if (dOMNode.isFragmented()) {
                dOMNode.appendContents(charArrayBuffer);
            } else {
                charArrayBuffer.append(dOMNode.getDocument(), i10, (i11 + 1) - i10);
            }
            dOMNode = dOMNode2;
        }
    }

    public abstract void appendFragmentedContents(CharArrayBuffer charArrayBuffer);

    public void basicAddChild(IDOMNode iDOMNode) throws IllegalArgumentException, DOMException {
        if (!canHaveChildren()) {
            throw new DOMException(Messages.dom_unableAddChild);
        }
        if (iDOMNode == null) {
            throw new IllegalArgumentException(Messages.dom_addNullChild);
        }
        if (!isAllowableChild(iDOMNode)) {
            throw new DOMException(Messages.dom_addIncompatibleChild);
        }
        if (iDOMNode.getParent() != null) {
            throw new DOMException(Messages.dom_addChildWithParent);
        }
        if (iDOMNode == getRoot()) {
            throw new DOMException(Messages.dom_addAncestorAsChild);
        }
        DOMNode dOMNode = (DOMNode) iDOMNode;
        if (dOMNode.getDocument() != getDocument()) {
            dOMNode.localizeContents();
        }
        if (this.fFirstChild == null) {
            this.fFirstChild = dOMNode;
        } else {
            DOMNode dOMNode2 = this.fLastChild;
            dOMNode2.fNextNode = dOMNode;
            dOMNode.fPreviousNode = dOMNode2;
        }
        this.fLastChild = dOMNode;
        dOMNode.fParent = this;
    }

    public void becomeDetailed() throws DOMException {
        if (isDetailed()) {
            return;
        }
        DOMNode detailedNode = getDetailedNode();
        if (detailedNode == null) {
            throw new DOMException(Messages.dom_cannotDetail);
        }
        if (detailedNode != this) {
            shareContents(detailedNode);
        }
    }

    @Override
    public boolean canHaveChildren() {
        return false;
    }

    @Override
    public Object clone() {
        char[] cArr;
        int[] iArr = this.fSourceRange;
        int i10 = iArr[0];
        if (i10 >= 0) {
            int i11 = (iArr[1] - i10) + 1;
            cArr = new char[i11];
            System.arraycopy(this.fDocument, i10, cArr, 0, i11);
        } else {
            cArr = null;
        }
        DOMNode newDOMNode = newDOMNode();
        newDOMNode.shareContents(this);
        newDOMNode.fDocument = cArr;
        if (i10 > 0) {
            newDOMNode.offset(0 - i10);
        }
        if (canHaveChildren()) {
            Enumeration children = getChildren();
            while (children.hasMoreElements()) {
                DOMNode dOMNode = (DOMNode) children.nextElement();
                if (dOMNode.fDocument == this.fDocument) {
                    newDOMNode.basicAddChild(dOMNode.cloneSharingDocument(cArr, i10));
                } else {
                    newDOMNode.addChild((DOMNode) dOMNode.clone());
                }
            }
        }
        return newDOMNode;
    }

    public void fragment() {
        if (isFragmented()) {
            return;
        }
        this.fIsFragmented = true;
        DOMNode dOMNode = this.fParent;
        if (dOMNode != null) {
            dOMNode.fragment();
        }
    }

    @Override
    public char[] getCharacters() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        appendContents(charArrayBuffer);
        return charArrayBuffer.getContents();
    }

    @Override
    public IDOMNode getChild(String str) {
        for (DOMNode dOMNode = this.fFirstChild; dOMNode != null; dOMNode = dOMNode.fNextNode) {
            String name = dOMNode.getName();
            if (str == null) {
                if (name == null) {
                    return dOMNode;
                }
            } else if (str.equals(name)) {
                return dOMNode;
            }
        }
        return null;
    }

    @Override
    public Enumeration getChildren() {
        return new SiblingEnumeration(this.fFirstChild);
    }

    @Override
    public String getContents() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        appendContents(charArrayBuffer);
        return charArrayBuffer.toString();
    }

    public DOMNode getDetailedNode() {
        return this;
    }

    public char[] getDocument() {
        return this.fDocument;
    }

    public int getEndPosition() {
        return this.fSourceRange[1];
    }

    public IDOMFactory getFactory() {
        return new DOMFactory();
    }

    @Override
    public IDOMNode getFirstChild() {
        return this.fFirstChild;
    }

    public int getInsertionPosition() {
        return this.fInsertionPosition;
    }

    public boolean getMask(int i10) {
        return (i10 & this.fStateMask) > 0;
    }

    @Override
    public String getName() {
        return this.fName;
    }

    public char[] getNameContents() {
        int[] iArr;
        int i10;
        if (isNameAltered()) {
            return this.fName.toCharArray();
        }
        if (this.fName == null || (i10 = (iArr = this.fNameRange)[0]) < 0) {
            return null;
        }
        int i11 = (iArr[1] + 1) - i10;
        char[] cArr = new char[i11];
        System.arraycopy(this.fDocument, i10, cArr, 0, i11);
        return cArr;
    }

    @Override
    public IDOMNode getNextNode() {
        return this.fNextNode;
    }

    @Override
    public IDOMNode getParent() {
        return this.fParent;
    }

    public int getParentEndDeclaration() {
        IDOMNode parent = getParent();
        if (parent == null || (parent instanceof IDOMCompilationUnit)) {
            return 0;
        }
        return ((DOMType) parent).getOpenBodyEnd();
    }

    @Override
    public IDOMNode getPreviousNode() {
        return this.fPreviousNode;
    }

    public IDOMNode getRoot() {
        DOMNode dOMNode = this.fParent;
        return dOMNode == null ? this : dOMNode.getRoot();
    }

    public int getStartPosition() {
        return this.fSourceRange[0];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void insertSibling(IDOMNode iDOMNode) throws IllegalArgumentException, DOMException {
        if (iDOMNode == null) {
            throw new IllegalArgumentException(Messages.dom_addNullSibling);
        }
        DOMNode dOMNode = this.fParent;
        if (dOMNode == null) {
            throw new DOMException(Messages.dom_addSiblingBeforeRoot);
        }
        if (!dOMNode.isAllowableChild(iDOMNode)) {
            throw new DOMException(Messages.dom_addIncompatibleSibling);
        }
        if (iDOMNode.getParent() != null) {
            throw new DOMException(Messages.dom_addSiblingWithParent);
        }
        if (iDOMNode == getRoot()) {
            throw new DOMException(Messages.dom_addAncestorAsSibling);
        }
        DOMNode dOMNode2 = (DOMNode) iDOMNode;
        if (dOMNode2.getDocument() != getDocument()) {
            dOMNode2.localizeContents();
        }
        DOMNode dOMNode3 = this.fPreviousNode;
        if (dOMNode3 == null) {
            this.fParent.fFirstChild = dOMNode2;
        } else {
            dOMNode3.fNextNode = dOMNode2;
        }
        dOMNode2.fParent = this.fParent;
        dOMNode2.fPreviousNode = dOMNode3;
        dOMNode2.fNextNode = this;
        this.fPreviousNode = dOMNode2;
        if (dOMNode2.getNodeType() == 6 && ((IDOMMethod) dOMNode2).isConstructor()) {
            dOMNode2.fragment();
        } else {
            this.fParent.fragment();
        }
    }

    @Override
    public boolean isAllowableChild(IDOMNode iDOMNode) {
        return false;
    }

    public boolean isContentMergableWith(DOMNode dOMNode) {
        return !dOMNode.isFragmented() && !isFragmented() && dOMNode.getDocument() == getDocument() && dOMNode.getEndPosition() + 1 == getStartPosition();
    }

    public boolean isDetailed() {
        return getMask(2048);
    }

    public boolean isFragmented() {
        return this.fIsFragmented;
    }

    public boolean isNameAltered() {
        return getMask(8);
    }

    @Override
    public boolean isSignatureEqual(IDOMNode iDOMNode) {
        return getNodeType() == iDOMNode.getNodeType() && getName().equals(iDOMNode.getName());
    }

    public void localizeContents() {
        shareContents((DOMNode) clone());
    }

    public abstract DOMNode newDOMNode();

    public void normalize(ILineStartFinder iLineStartFinder) {
        if (getPreviousNode() == null) {
            normalizeStartPosition(getParentEndDeclaration(), iLineStartFinder);
        }
        if (canHaveChildren()) {
            Enumeration children = getChildren();
            while (children.hasMoreElements()) {
                ((DOMNode) children.nextElement()).normalize(iLineStartFinder);
            }
        }
        normalizeEndPosition(iLineStartFinder, (DOMNode) getNextNode());
    }

    public void normalizeEndPosition(ILineStartFinder iLineStartFinder, DOMNode dOMNode) {
        if (dOMNode != null) {
            this.fInsertionPosition = Math.max(iLineStartFinder.getLineStart(dOMNode.getStartPosition()), getEndPosition());
            dOMNode.normalizeStartPosition(getEndPosition(), iLineStartFinder);
            setSourceRangeEnd(dOMNode.getStartPosition() - 1);
            return;
        }
        DOMNode dOMNode2 = (DOMNode) getParent();
        if (dOMNode2 == null || (dOMNode2 instanceof DOMCompilationUnit)) {
            setSourceRangeEnd(this.fDocument.length - 1);
            return;
        }
        int closeBodyPosition = ((DOMType) dOMNode2).getCloseBodyPosition();
        setSourceRangeEnd(closeBodyPosition - 1);
        this.fInsertionPosition = Math.max(iLineStartFinder.getLineStart(closeBodyPosition), getEndPosition());
    }

    public void normalizeStartPosition(int i10, ILineStartFinder iLineStartFinder) {
        int startPosition = getStartPosition();
        int lineStart = iLineStartFinder.getLineStart(startPosition);
        if (startPosition > lineStart) {
            if (lineStart > i10 || (i10 == 0 && lineStart == 0)) {
                setStartPosition(lineStart);
            }
        }
    }

    public void offset(int i10) {
        offsetRange(this.fNameRange, i10);
        offsetRange(this.fSourceRange, i10);
    }

    public void offsetRange(int[] iArr, int i10) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            int i12 = iArr[i11] + i10;
            iArr[i11] = i12;
            if (i12 < 0) {
                iArr[i11] = -1;
            }
        }
    }

    public int[] rangeCopy(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[i10] = iArr[i10];
        }
        return iArr2;
    }

    @Override
    public void remove() {
        DOMNode dOMNode = this.fParent;
        if (dOMNode != null) {
            dOMNode.fragment();
        }
        DOMNode dOMNode2 = this.fNextNode;
        if (dOMNode2 != null) {
            dOMNode2.fPreviousNode = this.fPreviousNode;
        }
        DOMNode dOMNode3 = this.fPreviousNode;
        if (dOMNode3 != null) {
            dOMNode3.fNextNode = dOMNode2;
        }
        DOMNode dOMNode4 = this.fParent;
        if (dOMNode4 != null) {
            if (dOMNode4.fFirstChild == this) {
                dOMNode4.fFirstChild = this.fNextNode;
            }
            if (dOMNode4.fLastChild == this) {
                dOMNode4.fLastChild = dOMNode3;
            }
        }
        this.fParent = null;
        this.fNextNode = null;
        this.fPreviousNode = null;
    }

    public void setMask(int i10, boolean z10) {
        if (z10) {
            this.fStateMask = i10 | this.fStateMask;
        } else {
            this.fStateMask = (~i10) & this.fStateMask;
        }
    }

    @Override
    public void setName(String str) {
        this.fName = str;
        setNameAltered(true);
        fragment();
    }

    public void setNameAltered(boolean z10) {
        setMask(8, z10);
    }

    public void setSourceRangeEnd(int i10) {
        this.fSourceRange[1] = i10;
    }

    public void setStartPosition(int i10) {
        this.fSourceRange[0] = i10;
    }

    public void shareContents(DOMNode dOMNode) {
        this.fDocument = dOMNode.fDocument;
        this.fIsFragmented = dOMNode.fIsFragmented;
        this.fName = dOMNode.fName;
        this.fNameRange = rangeCopy(dOMNode.fNameRange);
        this.fSourceRange = rangeCopy(dOMNode.fSourceRange);
        this.fStateMask = dOMNode.fStateMask;
        if (canHaveChildren()) {
            Enumeration children = getChildren();
            Enumeration children2 = dOMNode.getChildren();
            while (children.hasMoreElements()) {
                ((DOMNode) children.nextElement()).shareContents((DOMNode) children2.nextElement());
            }
        }
    }

    public abstract String toString();

    public DOMNode(char[] cArr, int[] iArr, String str, int[] iArr2) {
        this.fFirstChild = null;
        this.fLastChild = null;
        this.fNextNode = null;
        this.fParent = null;
        this.fPreviousNode = null;
        this.fIsFragmented = false;
        this.fStateMask = 0;
        this.fDocument = cArr;
        this.fSourceRange = iArr;
        this.fName = str;
        this.fNameRange = iArr2;
    }
}
