package org.eclipse.jdt.internal.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.core.jdom.IDOMType;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import w2.C15883c;

public class DOMType extends DOMMember implements IDOMType {
    protected int[] fCloseBodyRange;
    protected int[] fExtendsRange;
    protected int[] fImplementsRange;
    protected char[] fInterfaces;
    protected int[] fInterfacesRange;
    protected boolean fIsAnnotation;
    protected boolean fIsEnum;
    protected int[] fOpenBodyRange;
    protected String[] fSuperInterfaces;
    protected String fSuperclass;
    protected int[] fSuperclassRange;
    protected String fTypeKeyword;
    protected String[] fTypeParameters;
    protected int[] fTypeRange;

    public DOMType() {
        String[] strArr = CharOperation.NO_STRINGS;
        this.fSuperInterfaces = strArr;
        this.fTypeParameters = strArr;
        this.fIsEnum = false;
        this.fIsAnnotation = false;
    }

    @Override
    public void addSuperInterface(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.dom_addNullInterface);
        }
        String[] strArr = this.fSuperInterfaces;
        if (strArr == null) {
            this.fSuperInterfaces = r0;
            String[] strArr2 = {str};
        } else {
            this.fSuperInterfaces = appendString(strArr, str);
        }
        setSuperInterfaces(this.fSuperInterfaces);
    }

    @Override
    public void appendMemberBodyContents(CharArrayBuffer charArrayBuffer) {
        char[] cArr = this.fDocument;
        int[] iArr = this.fOpenBodyRange;
        int i10 = iArr[0];
        charArrayBuffer.append(cArr, i10, (iArr[1] + 1) - i10);
        appendContentsOfChildren(charArrayBuffer);
        char[] cArr2 = this.fDocument;
        int[] iArr2 = this.fCloseBodyRange;
        int i11 = iArr2[0];
        charArrayBuffer.append(cArr2, i11, (iArr2[1] + 1) - i11);
        char[] cArr3 = this.fDocument;
        int i12 = this.fCloseBodyRange[1];
        charArrayBuffer.append(cArr3, i12 + 1, this.fSourceRange[1] - i12);
    }

    @Override
    public void appendMemberDeclarationContents(CharArrayBuffer charArrayBuffer) {
        String str = this.fTypeKeyword;
        if (str != null) {
            charArrayBuffer.append(str);
            char[] cArr = this.fDocument;
            int i10 = this.fTypeRange[1];
            charArrayBuffer.append(cArr, i10, this.fNameRange[0] - i10);
        } else {
            char[] cArr2 = this.fDocument;
            int[] iArr = this.fTypeRange;
            int i11 = iArr[0];
            charArrayBuffer.append(cArr2, i11, (iArr[1] + 1) - i11);
        }
        charArrayBuffer.append(getName());
        if (!isClass()) {
            if (!getMask(512)) {
                if (this.fImplementsRange[0] < 0) {
                    charArrayBuffer.append(C15883c.f126249O);
                    return;
                }
                char[] cArr3 = this.fDocument;
                int i12 = this.fNameRange[1];
                charArrayBuffer.append(cArr3, i12 + 1, (this.fOpenBodyRange[0] - i12) - 1);
                return;
            }
            int[] iArr2 = this.fExtendsRange;
            int i13 = iArr2[0];
            if (i13 < 0) {
                charArrayBuffer.append(" extends ");
            } else {
                charArrayBuffer.append(this.fDocument, i13, (iArr2[1] + 1) - i13);
            }
            char[] cArr4 = this.fInterfaces;
            if (cArr4 != null) {
                charArrayBuffer.append(cArr4);
                charArrayBuffer.append(C15883c.f126249O);
                return;
            } else {
                char[] cArr5 = this.fDocument;
                int[] iArr3 = this.fInterfacesRange;
                int i14 = iArr3[0];
                charArrayBuffer.append(cArr5, i14, (iArr3[1] + 1) - i14);
                return;
            }
        }
        if (getMask(256)) {
            int[] iArr4 = this.fExtendsRange;
            int i15 = iArr4[0];
            if (i15 < 0) {
                charArrayBuffer.append(" extends ");
            } else {
                charArrayBuffer.append(this.fDocument, i15, (iArr4[1] + 1) - i15);
            }
            String str2 = this.fSuperclass;
            if (str2 != null) {
                charArrayBuffer.append(str2);
            } else {
                char[] cArr6 = this.fDocument;
                int[] iArr5 = this.fSuperclassRange;
                int i16 = iArr5[0];
                charArrayBuffer.append(cArr6, i16, (iArr5[1] + 1) - i16);
            }
        }
        if (!getMask(512)) {
            int[] iArr6 = this.fSuperclassRange;
            if (iArr6[0] < 0) {
                charArrayBuffer.append(C15883c.f126249O);
                return;
            }
            int i17 = this.fImplementsRange[0];
            if (i17 <= 0) {
                char[] cArr7 = this.fDocument;
                int i18 = iArr6[1];
                charArrayBuffer.append(cArr7, i18 + 1, (this.fOpenBodyRange[0] - i18) - 1);
                return;
            } else {
                char[] cArr8 = this.fDocument;
                int i19 = iArr6[1];
                charArrayBuffer.append(cArr8, i19 + 1, (i17 - i19) - 1);
                char[] cArr9 = this.fDocument;
                int i20 = this.fInterfacesRange[1];
                charArrayBuffer.append(cArr9, i20 + 1, (this.fOpenBodyRange[0] - i20) - 1);
                return;
            }
        }
        int[] iArr7 = this.fImplementsRange;
        int i21 = iArr7[0];
        if (i21 < 0) {
            charArrayBuffer.append(" implements ");
        } else {
            charArrayBuffer.append(this.fDocument, i21, (iArr7[1] + 1) - i21);
        }
        char[] cArr10 = this.fInterfaces;
        if (cArr10 != null) {
            charArrayBuffer.append(cArr10);
        } else {
            char[] cArr11 = this.fDocument;
            int[] iArr8 = this.fInterfacesRange;
            int i22 = iArr8[0];
            charArrayBuffer.append(cArr11, i22, (iArr8[1] + 1) - i22);
        }
        if (this.fImplementsRange[0] < 0) {
            charArrayBuffer.append(C15883c.f126249O);
            return;
        }
        char[] cArr12 = this.fDocument;
        int i23 = this.fInterfacesRange[1];
        charArrayBuffer.append(cArr12, i23 + 1, (this.fOpenBodyRange[0] - i23) - 1);
    }

    @Override
    public void appendSimpleContents(CharArrayBuffer charArrayBuffer) {
        char[] cArr = this.fDocument;
        int i10 = this.fSourceRange[0];
        charArrayBuffer.append(cArr, i10, this.fNameRange[0] - i10);
        charArrayBuffer.append(this.fName);
        char[] cArr2 = this.fDocument;
        int i11 = this.fNameRange[1];
        charArrayBuffer.append(cArr2, i11 + 1, this.fOpenBodyRange[1] - i11);
        appendContentsOfChildren(charArrayBuffer);
        char[] cArr3 = this.fDocument;
        int i12 = this.fCloseBodyRange[0];
        charArrayBuffer.append(cArr3, i12, (this.fSourceRange[1] - i12) + 1);
    }

    @Override
    public boolean canHaveChildren() {
        return true;
    }

    public int getCloseBodyPosition() {
        return this.fCloseBodyRange[0];
    }

    @Override
    public DOMNode getDetailedNode() {
        return (DOMNode) getFactory().createType(getContents());
    }

    @Override
    public int getInsertionPosition() {
        return this.fInsertionPosition;
    }

    @Override
    public IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException {
        int elementType = iJavaElement.getElementType();
        if (elementType == 5) {
            return ((ICompilationUnit) iJavaElement).getType(getName());
        }
        if (elementType == 7) {
            return ((IType) iJavaElement).getType(getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    @Override
    public int getMemberDeclarationStartPosition() {
        return this.fTypeRange[0];
    }

    @Override
    public int getNodeType() {
        return 4;
    }

    public int getOpenBodyEnd() {
        return this.fOpenBodyRange[1];
    }

    @Override
    public String[] getSuperInterfaces() {
        return this.fSuperInterfaces;
    }

    @Override
    public String getSuperclass() {
        becomeDetailed();
        if (!getMask(256)) {
            return null;
        }
        String str = this.fSuperclass;
        if (str != null) {
            return str;
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fSuperclassRange;
        int i10 = iArr[0];
        return new String(cArr, i10, (iArr[1] + 1) - i10);
    }

    @Override
    public String[] getTypeParameters() {
        return this.fTypeParameters;
    }

    @Override
    public boolean isAllowableChild(IDOMNode iDOMNode) {
        if (iDOMNode == null) {
            return false;
        }
        int nodeType = iDOMNode.getNodeType();
        return nodeType == 4 || nodeType == 5 || nodeType == 6 || nodeType == 7;
    }

    @Override
    public boolean isAnnotation() {
        return this.fIsAnnotation;
    }

    @Override
    public boolean isClass() {
        return getMask(128);
    }

    @Override
    public boolean isEnum() {
        return this.fIsEnum;
    }

    @Override
    public DOMNode newDOMNode() {
        return new DOMType();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a0  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void normalize(ILineStartFinder iLineStartFinder) {
        int length;
        int length2;
        int i10;
        int i11;
        int length3;
        int length4;
        int i12;
        int i13;
        int i14;
        int nextToken;
        int nextToken2;
        DOMNode dOMNode = (DOMNode) getFirstChild();
        Scanner scanner = new Scanner();
        scanner.setSource(this.fDocument);
        scanner.resetTo(this.fNameRange[1] + 1, this.fDocument.length);
        try {
            nextToken2 = scanner.getNextToken();
            while (nextToken2 != 49 && nextToken2 != 61) {
                nextToken2 = scanner.getNextToken();
            }
        } catch (InvalidInputException unused) {
            char[] cArr = this.fDocument;
            length = cArr.length;
            length2 = cArr.length;
        }
        if (nextToken2 != 49) {
            char[] cArr2 = this.fDocument;
            length = cArr2.length;
            length2 = cArr2.length;
            int i15 = length;
            i10 = length2;
            i11 = i15;
            if (dOMNode == null) {
            }
            setOpenBodyRangeEnd(i14);
            setOpenBodyRangeStart(i10);
            setCloseBodyRangeStart(i12);
            setCloseBodyRangeEnd(i13);
            int lineStart = iLineStartFinder.getLineStart(i12);
            this.fInsertionPosition = lineStart;
            if (dOMNode != null) {
                this.fInsertionPosition = getCloseBodyPosition();
            }
            if (this.fInsertionPosition <= i14) {
            }
            super.normalize(iLineStartFinder);
        }
        i11 = scanner.currentPosition - 1;
        i10 = scanner.startPosition;
        if (dOMNode == null) {
            int lineStart2 = iLineStartFinder.getLineStart(dOMNode.getStartPosition());
            i14 = lineStart2 > i11 ? lineStart2 - 1 : dOMNode.getStartPosition() - 1;
            DOMNode dOMNode2 = (DOMNode) dOMNode.getNextNode();
            if (dOMNode2 != null) {
                dOMNode = dOMNode2;
                while (dOMNode.getNextNode() != null) {
                    dOMNode = (DOMNode) dOMNode.getNextNode();
                }
            }
            scanner.setSource(this.fDocument);
            scanner.resetTo(dOMNode.getEndPosition() + 1, this.fDocument.length);
            try {
                int nextToken3 = scanner.getNextToken();
                while (nextToken3 != 33 && nextToken3 != 61) {
                    nextToken3 = scanner.getNextToken();
                }
                if (nextToken3 == 33) {
                    i12 = scanner.startPosition;
                    i13 = scanner.currentPosition - 1;
                } else {
                    char[] cArr3 = this.fDocument;
                    i12 = cArr3.length;
                    i13 = cArr3.length;
                }
            } catch (InvalidInputException unused2) {
                char[] cArr4 = this.fDocument;
                i12 = cArr4.length;
                i13 = cArr4.length;
            }
        } else {
            scanner.resetTo(i11, this.fDocument.length);
            try {
                nextToken = scanner.getNextToken();
                while (nextToken != 33 && nextToken != 61) {
                    nextToken = scanner.getNextToken();
                }
            } catch (InvalidInputException unused3) {
                char[] cArr5 = this.fDocument;
                length3 = cArr5.length;
                length4 = cArr5.length;
            }
            if (nextToken == 33) {
                int i16 = scanner.startPosition;
                i13 = scanner.currentPosition - 1;
                i12 = i16;
                i14 = i13 - 1;
                dOMNode = null;
            } else {
                char[] cArr6 = this.fDocument;
                length3 = cArr6.length;
                length4 = cArr6.length;
                i12 = length3;
                i13 = length4;
                i14 = i13 - 1;
                dOMNode = null;
            }
        }
        setOpenBodyRangeEnd(i14);
        setOpenBodyRangeStart(i10);
        setCloseBodyRangeStart(i12);
        setCloseBodyRangeEnd(i13);
        int lineStart3 = iLineStartFinder.getLineStart(i12);
        this.fInsertionPosition = lineStart3;
        if (dOMNode != null && lineStart3 < dOMNode.getEndPosition()) {
            this.fInsertionPosition = getCloseBodyPosition();
        }
        if (this.fInsertionPosition <= i14) {
            this.fInsertionPosition = getCloseBodyPosition();
        }
        super.normalize(iLineStartFinder);
    }

    @Override
    public void normalizeEndPosition(ILineStartFinder iLineStartFinder, DOMNode dOMNode) {
        if (dOMNode != null) {
            dOMNode.normalizeStartPosition(getEndPosition(), iLineStartFinder);
            setSourceRangeEnd(dOMNode.getStartPosition() - 1);
            return;
        }
        DOMNode dOMNode2 = (DOMNode) getParent();
        if (dOMNode2 == null || (dOMNode2 instanceof DOMCompilationUnit)) {
            setSourceRangeEnd(this.fDocument.length - 1);
        } else {
            setSourceRangeEnd(((DOMType) dOMNode2).getCloseBodyPosition() - 1);
        }
    }

    @Override
    public void offset(int i10) {
        super.offset(i10);
        offsetRange(this.fCloseBodyRange, i10);
        offsetRange(this.fExtendsRange, i10);
        offsetRange(this.fImplementsRange, i10);
        offsetRange(this.fInterfacesRange, i10);
        offsetRange(this.fOpenBodyRange, i10);
        offsetRange(this.fSuperclassRange, i10);
        offsetRange(this.fTypeRange, i10);
    }

    @Override
    public void setAnnotation(boolean z10) {
        this.fIsAnnotation = z10;
        if (z10) {
            setClass(false);
            setSuperclass(null);
            setSuperInterfaces(CharOperation.NO_STRINGS);
        }
    }

    @Override
    public void setClass(boolean z10) {
        becomeDetailed();
        fragment();
        setMask(128, z10);
        if (z10) {
            this.fTypeKeyword = "class";
        } else {
            this.fTypeKeyword = "interface";
            setSuperclass(null);
        }
    }

    public void setCloseBodyRangeEnd(int i10) {
        this.fCloseBodyRange[1] = i10;
    }

    public void setCloseBodyRangeStart(int i10) {
        this.fCloseBodyRange[0] = i10;
    }

    @Override
    public void setEnum(boolean z10) {
        this.fIsEnum = z10;
        if (z10) {
            setClass(true);
            setSuperclass(null);
        }
    }

    @Override
    public void setName(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        super.setName(str);
        Enumeration children = getChildren();
        while (children.hasMoreElements()) {
            IDOMNode iDOMNode = (IDOMNode) children.nextElement();
            if (iDOMNode.getNodeType() == 6 && ((IDOMMethod) iDOMNode).isConstructor()) {
                ((DOMNode) iDOMNode).fragment();
            }
        }
    }

    public void setOpenBodyRangeEnd(int i10) {
        this.fOpenBodyRange[1] = i10;
    }

    public void setOpenBodyRangeStart(int i10) {
        this.fOpenBodyRange[0] = i10;
    }

    @Override
    public void setSuperInterfaces(String[] strArr) {
        becomeDetailed();
        if (strArr == null) {
            throw new IllegalArgumentException(Messages.dom_nullInterfaces);
        }
        fragment();
        this.fSuperInterfaces = strArr;
        if (strArr.length == 0) {
            this.fInterfaces = null;
            this.fSuperInterfaces = CharOperation.NO_STRINGS;
            setMask(512, false);
            return;
        }
        setMask(512, true);
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 > 0) {
                charArrayBuffer.append(", ");
            }
            charArrayBuffer.append(strArr[i10]);
        }
        this.fInterfaces = charArrayBuffer.getContents();
    }

    @Override
    public void setSuperclass(String str) {
        becomeDetailed();
        fragment();
        this.fSuperclass = str;
        setMask(256, str != null);
    }

    public void setTypeKeyword(String str) {
        this.fTypeKeyword = str;
    }

    @Override
    public void setTypeParameters(String[] strArr) {
        this.fTypeParameters = strArr;
    }

    @Override
    public void shareContents(DOMNode dOMNode) {
        super.shareContents(dOMNode);
        DOMType dOMType = (DOMType) dOMNode;
        this.fCloseBodyRange = rangeCopy(dOMType.fCloseBodyRange);
        this.fExtendsRange = dOMType.fExtendsRange;
        this.fImplementsRange = rangeCopy(dOMType.fImplementsRange);
        this.fInterfaces = dOMType.fInterfaces;
        this.fInterfacesRange = rangeCopy(dOMType.fInterfacesRange);
        this.fOpenBodyRange = rangeCopy(dOMType.fOpenBodyRange);
        this.fSuperclass = dOMType.fSuperclass;
        this.fSuperclassRange = rangeCopy(dOMType.fSuperclassRange);
        this.fSuperInterfaces = dOMType.fSuperInterfaces;
        this.fTypeKeyword = dOMType.fTypeKeyword;
        this.fTypeRange = rangeCopy(dOMType.fTypeRange);
    }

    @Override
    public String toString() {
        return "TYPE: " + getName();
    }

    public DOMType(char[] cArr, int[] iArr, String str, int[] iArr2, int[] iArr3, int i10, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, String[] strArr, int[] iArr8, int[] iArr9, int[] iArr10, int[] iArr11, boolean z10) {
        super(cArr, iArr, str, iArr2, iArr3, i10, iArr4);
        String[] strArr2 = CharOperation.NO_STRINGS;
        this.fSuperInterfaces = strArr2;
        this.fTypeParameters = strArr2;
        this.fIsEnum = false;
        this.fIsAnnotation = false;
        this.fTypeRange = iArr5;
        setMask(128, z10);
        this.fExtendsRange = iArr7;
        this.fImplementsRange = iArr9;
        this.fSuperclassRange = iArr6;
        this.fInterfacesRange = iArr8;
        this.fCloseBodyRange = iArr11;
        setMask(256, iArr6[0] > 0);
        setMask(512, strArr != null);
        this.fSuperInterfaces = strArr;
        this.fOpenBodyRange = iArr10;
        this.fCloseBodyRange = iArr11;
        setMask(2048, true);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DOMType(char[] cArr, int[] iArr, String str, int[] iArr2, int i10, String[] strArr, boolean z10) {
        this(cArr, iArr, str, iArr2, new int[]{-1, -1}, i10, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{-1, -1}, strArr, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{-1, -1}, new int[]{r15, r15}, z10);
        int i11 = iArr[1];
        setMask(2048, false);
    }
}
