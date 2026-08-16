package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.DOMException;
import org.eclipse.jdt.core.jdom.IDOMField;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import w2.C15883c;

class DOMField extends DOMMember implements IDOMField {
    protected String fInitializer;
    protected int[] fInitializerRange;
    protected String fType;
    protected int[] fTypeRange;

    public DOMField() {
    }

    @Override
    public void appendMemberBodyContents(CharArrayBuffer charArrayBuffer) {
    }

    @Override
    public void appendMemberDeclarationContents(CharArrayBuffer charArrayBuffer) {
        if (isVariableDeclarator()) {
            char[] cArr = this.fDocument;
            int i10 = this.fSourceRange[0];
            charArrayBuffer.append(cArr, i10, this.fNameRange[0] - i10);
        } else {
            CharArrayBuffer append = charArrayBuffer.append(getTypeContents());
            char[] cArr2 = this.fDocument;
            int i11 = this.fTypeRange[1];
            append.append(cArr2, i11 + 1, (this.fNameRange[0] - i11) - 1);
        }
        charArrayBuffer.append(getNameContents());
        if (!hasInitializer()) {
            int[] iArr = this.fInitializerRange;
            if (iArr[0] < 0) {
                char[] cArr3 = this.fDocument;
                int i12 = this.fNameRange[1];
                charArrayBuffer.append(cArr3, i12 + 1, this.fSourceRange[1] - i12);
                return;
            } else {
                char[] cArr4 = this.fDocument;
                int i13 = iArr[1];
                charArrayBuffer.append(cArr4, i13 + 1, this.fSourceRange[1] - i13);
                return;
            }
        }
        int i14 = this.fInitializerRange[0];
        if (i14 < 0) {
            CharArrayBuffer append2 = charArrayBuffer.append('=').append(this.fInitializer);
            char[] cArr5 = this.fDocument;
            int i15 = this.fNameRange[1];
            append2.append(cArr5, i15 + 1, this.fSourceRange[1] - i15);
            return;
        }
        char[] cArr6 = this.fDocument;
        int i16 = this.fNameRange[1];
        CharArrayBuffer append3 = charArrayBuffer.append(cArr6, i16 + 1, (i14 - i16) - 1).append(getInitializer());
        char[] cArr7 = this.fDocument;
        int i17 = this.fInitializerRange[1];
        append3.append(cArr7, i17 + 1, this.fSourceRange[1] - i17);
    }

    @Override
    public void appendMemberHeaderFragment(CharArrayBuffer charArrayBuffer) {
        if (isVariableDeclarator()) {
            return;
        }
        super.appendMemberHeaderFragment(charArrayBuffer);
    }

    @Override
    public void appendSimpleContents(CharArrayBuffer charArrayBuffer) {
        char[] cArr = this.fDocument;
        int i10 = this.fSourceRange[0];
        charArrayBuffer.append(cArr, i10, this.fNameRange[0] - i10);
        charArrayBuffer.append(this.fName);
        char[] cArr2 = this.fDocument;
        int i11 = this.fNameRange[1];
        charArrayBuffer.append(cArr2, i11 + 1, this.fSourceRange[1] - i11);
    }

    @Override
    public void becomeDetailed() throws DOMException {
        if (isDetailed()) {
            return;
        }
        if (!isVariableDeclarator() && !hasMultipleVariableDeclarators()) {
            super.becomeDetailed();
            return;
        }
        DOMNode firstFieldDeclaration = getFirstFieldDeclaration();
        DOMField lastFieldDeclaration = getLastFieldDeclaration();
        String contents = firstFieldDeclaration.getContents();
        while (firstFieldDeclaration != lastFieldDeclaration) {
            firstFieldDeclaration = firstFieldDeclaration.fNextNode;
            contents = String.valueOf(contents) + firstFieldDeclaration.getContents();
        }
        Object[] createFields = new DOMBuilder().createFields(contents.toCharArray());
        if (createFields.length == 0) {
            throw new DOMException(Messages.dom_cannotDetail);
        }
        DOMNode dOMNode = this;
        for (Object obj : createFields) {
            dOMNode.shareContents((DOMNode) obj);
            dOMNode = dOMNode.fNextNode;
        }
    }

    @Override
    public Object clone() {
        return (isVariableDeclarator() || hasMultipleVariableDeclarators()) ? getFactory().createField(new String(getSingleVariableDeclaratorContents())) : super.clone();
    }

    public void expand() {
        if (isVariableDeclarator() || hasMultipleVariableDeclarators()) {
            SiblingEnumeration siblingEnumeration = new SiblingEnumeration(getFirstFieldDeclaration());
            DOMField dOMField = (DOMField) siblingEnumeration.nextElement();
            DOMNode dOMNode = dOMField.fNextNode;
            while (siblingEnumeration.hasMoreElements() && (dOMNode instanceof DOMField) && ((DOMField) dOMNode).isVariableDeclarator()) {
                dOMField.localizeContents();
                DOMNode dOMNode2 = dOMField.fParent;
                if (dOMNode2 != null) {
                    dOMNode2.fragment();
                }
                dOMField = (DOMField) siblingEnumeration.nextElement();
                dOMNode = dOMField.fNextNode;
            }
            dOMField.localizeContents();
        }
    }

    @Override
    public DOMNode getDetailedNode() {
        return (isVariableDeclarator() || hasMultipleVariableDeclarators()) ? (DOMNode) getFactory().createField(new String(getSingleVariableDeclaratorContents())) : (DOMNode) getFactory().createField(getContents());
    }

    public DOMField getFirstFieldDeclaration() {
        return isVariableDeclarator() ? ((DOMField) this.fPreviousNode).getFirstFieldDeclaration() : this;
    }

    @Override
    public String getInitializer() {
        becomeDetailed();
        if (!hasInitializer()) {
            return null;
        }
        String str = this.fInitializer;
        if (str != null) {
            return str;
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fInitializerRange;
        int i10 = iArr[0];
        return new String(cArr, i10, (iArr[1] + 1) - i10);
    }

    @Override
    public IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException {
        if (iJavaElement.getElementType() == 7) {
            return ((IType) iJavaElement).getField(getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    public DOMField getLastFieldDeclaration() {
        DOMField dOMField = this;
        while (true) {
            if (!dOMField.isVariableDeclarator() && !dOMField.hasMultipleVariableDeclarators()) {
                break;
            }
            DOMNode dOMNode = dOMField.fNextNode;
            if (!(dOMNode instanceof DOMField) || !((DOMField) dOMNode).isVariableDeclarator()) {
                break;
            }
            dOMField = (DOMField) dOMField.fNextNode;
        }
        return dOMField;
    }

    @Override
    public int getMemberDeclarationStartPosition() {
        return this.fTypeRange[0];
    }

    @Override
    public int getNodeType() {
        return 5;
    }

    public char[] getSingleVariableDeclaratorContents() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        DOMField firstFieldDeclaration = getFirstFieldDeclaration();
        if (firstFieldDeclaration.isDetailed()) {
            firstFieldDeclaration.appendMemberHeaderFragment(charArrayBuffer);
            charArrayBuffer.append(getType());
            if (isVariableDeclarator()) {
                charArrayBuffer.append(C15883c.f126249O);
            } else {
                char[] cArr = this.fDocument;
                int i10 = this.fTypeRange[1];
                charArrayBuffer.append(cArr, i10 + 1, (this.fNameRange[0] - i10) - 1);
            }
        } else {
            char[] cArr2 = firstFieldDeclaration.fDocument;
            int i11 = firstFieldDeclaration.fSourceRange[0];
            charArrayBuffer.append(cArr2, i11, firstFieldDeclaration.fNameRange[0] - i11);
        }
        charArrayBuffer.append(getName());
        if (hasInitializer()) {
            int i12 = this.fInitializerRange[0];
            if (i12 < 0) {
                charArrayBuffer.append('=').append(this.fInitializer).append(';').append(Util.getLineSeparator(charArrayBuffer.toString(), (IJavaProject) null));
            } else {
                char[] cArr3 = this.fDocument;
                int i13 = this.fNameRange[1];
                charArrayBuffer.append(cArr3, i13 + 1, (i12 - i13) - 1).append(getInitializer()).append(';').append(Util.getLineSeparator(charArrayBuffer.toString(), (IJavaProject) null));
            }
        } else {
            charArrayBuffer.append(';').append(Util.getLineSeparator(charArrayBuffer.toString(), (IJavaProject) null));
        }
        return charArrayBuffer.getContents();
    }

    @Override
    public String getType() {
        return this.fType;
    }

    public char[] getTypeContents() {
        if (isTypeAltered()) {
            return this.fType.toCharArray();
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fTypeRange;
        return CharOperation.subarray(cArr, iArr[0], iArr[1] + 1);
    }

    public boolean hasInitializer() {
        return getMask(1);
    }

    public boolean hasMultipleVariableDeclarators() {
        DOMNode dOMNode = this.fNextNode;
        return dOMNode != null && (dOMNode instanceof DOMField) && ((DOMField) dOMNode).isVariableDeclarator();
    }

    @Override
    public void insertSibling(IDOMNode iDOMNode) throws IllegalArgumentException, DOMException {
        if (isVariableDeclarator()) {
            expand();
        }
        super.insertSibling(iDOMNode);
    }

    public boolean isTypeAltered() {
        return getMask(4);
    }

    public boolean isVariableDeclarator() {
        return getMask(2);
    }

    @Override
    public DOMNode newDOMNode() {
        return new DOMField();
    }

    @Override
    public void normalizeEndPosition(ILineStartFinder iLineStartFinder, DOMNode dOMNode) {
        if (dOMNode == null) {
            DOMNode dOMNode2 = (DOMNode) getParent();
            if (dOMNode2 == null || (dOMNode2 instanceof DOMCompilationUnit)) {
                setSourceRangeEnd(this.fDocument.length - 1);
                return;
            }
            int closeBodyPosition = ((DOMType) dOMNode2).getCloseBodyPosition();
            setSourceRangeEnd(closeBodyPosition - 1);
            this.fInsertionPosition = Math.max(iLineStartFinder.getLineStart(closeBodyPosition), getEndPosition());
            return;
        }
        this.fInsertionPosition = Math.max(iLineStartFinder.getLineStart(dOMNode.getStartPosition()), getEndPosition());
        dOMNode.normalizeStartPosition(getEndPosition(), iLineStartFinder);
        if (dOMNode instanceof DOMField) {
            DOMField dOMField = (DOMField) dOMNode;
            if (dOMField.isVariableDeclarator() && this.fTypeRange[0] == dOMField.fTypeRange[0]) {
                return;
            }
        }
        setSourceRangeEnd(dOMNode.getStartPosition() - 1);
    }

    @Override
    public void normalizeStartPosition(int i10, ILineStartFinder iLineStartFinder) {
        if (isVariableDeclarator()) {
            setStartPosition(this.fPreviousNode.getEndPosition() + 1);
        } else {
            super.normalizeStartPosition(i10, iLineStartFinder);
        }
    }

    @Override
    public void offset(int i10) {
        super.offset(i10);
        offsetRange(this.fInitializerRange, i10);
        offsetRange(this.fTypeRange, i10);
    }

    @Override
    public void remove() {
        expand();
        super.remove();
    }

    @Override
    public void setComment(String str) {
        expand();
        super.setComment(str);
    }

    @Override
    public void setFlags(int i10) {
        expand();
        super.setFlags(i10);
    }

    public void setHasInitializer(boolean z10) {
        setMask(1, z10);
    }

    @Override
    public void setInitializer(String str) {
        becomeDetailed();
        fragment();
        setHasInitializer(str != null);
        this.fInitializer = str;
    }

    public void setInitializerRange(int i10, int i11) {
        int[] iArr = this.fInitializerRange;
        iArr[0] = i10;
        iArr[1] = i11;
    }

    public void setIsVariableDeclarator(boolean z10) {
        setMask(2, z10);
    }

    @Override
    public void setName(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        super.setName(str);
        setTypeAltered(true);
    }

    @Override
    public void setType(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.element_nullType);
        }
        becomeDetailed();
        expand();
        fragment();
        setTypeAltered(true);
        setNameAltered(true);
        this.fType = str;
    }

    public void setTypeAltered(boolean z10) {
        setMask(4, z10);
    }

    @Override
    public void shareContents(DOMNode dOMNode) {
        super.shareContents(dOMNode);
        DOMField dOMField = (DOMField) dOMNode;
        this.fInitializer = dOMField.fInitializer;
        this.fInitializerRange = rangeCopy(dOMField.fInitializerRange);
        this.fType = dOMField.fType;
        this.fTypeRange = rangeCopy(dOMField.fTypeRange);
    }

    @Override
    public String toString() {
        return "FIELD: " + getName();
    }

    public DOMField(char[] cArr, int[] iArr, String str, int[] iArr2, int[] iArr3, int i10, int[] iArr4, int[] iArr5, String str2, boolean z10, int[] iArr6, boolean z11) {
        super(cArr, iArr, str, iArr2, iArr3, i10, iArr4);
        this.fType = str2;
        this.fTypeRange = iArr5;
        setHasInitializer(z10);
        this.fInitializerRange = iArr6;
        setIsVariableDeclarator(z11);
        setMask(2048, true);
    }

    public DOMField(char[] cArr, int[] iArr, String str, int[] iArr2, int i10, String str2, boolean z10) {
        this(cArr, iArr, str, iArr2, new int[]{-1, -1}, i10, new int[]{-1, -1}, new int[]{-1, -1}, str2, false, new int[]{-1, -1}, z10);
        setMask(2048, false);
    }
}
