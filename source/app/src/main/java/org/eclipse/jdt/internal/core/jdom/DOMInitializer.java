package org.eclipse.jdt.internal.core.jdom;

import com.tonyodev.fetch2.util.FetchDefaults;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.jdom.IDOMInitializer;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

class DOMInitializer extends DOMMember implements IDOMInitializer {
    protected String fBody;
    protected int[] fBodyRange;

    public DOMInitializer() {
    }

    @Override
    public void appendMemberBodyContents(CharArrayBuffer charArrayBuffer) {
        if (!hasBody()) {
            charArrayBuffer.append(FetchDefaults.EMPTY_JSON_OBJECT_STRING).append(Util.getLineSeparator(charArrayBuffer.toString(), (IJavaProject) null));
            return;
        }
        CharArrayBuffer append = charArrayBuffer.append(getBody());
        char[] cArr = this.fDocument;
        int i10 = this.fBodyRange[1];
        append.append(cArr, i10 + 1, this.fSourceRange[1] - i10);
    }

    @Override
    public void appendMemberDeclarationContents(CharArrayBuffer charArrayBuffer) {
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
    public String getBody() {
        becomeDetailed();
        if (!hasBody()) {
            return null;
        }
        String str = this.fBody;
        if (str != null) {
            return str;
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fBodyRange;
        int i10 = iArr[0];
        return new String(cArr, i10, (iArr[1] + 1) - i10);
    }

    @Override
    public DOMNode getDetailedNode() {
        return (DOMNode) getFactory().createInitializer(getContents());
    }

    @Override
    public IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException {
        if (iJavaElement.getElementType() != 7) {
            throw new IllegalArgumentException(Messages.element_illegalParent);
        }
        int i10 = 1;
        for (IDOMNode previousNode = getPreviousNode(); previousNode != null; previousNode = previousNode.getPreviousNode()) {
            if (previousNode instanceof DOMInitializer) {
                i10++;
            }
        }
        return ((IType) iJavaElement).getInitializer(i10);
    }

    @Override
    public int getMemberDeclarationStartPosition() {
        return this.fBodyRange[0];
    }

    @Override
    public int getNodeType() {
        return 7;
    }

    @Override
    public boolean isSignatureEqual(IDOMNode iDOMNode) {
        return false;
    }

    @Override
    public DOMNode newDOMNode() {
        return new DOMInitializer();
    }

    @Override
    public void offset(int i10) {
        super.offset(i10);
        offsetRange(this.fBodyRange, i10);
    }

    @Override
    public void setBody(String str) {
        becomeDetailed();
        this.fBody = str;
        setHasBody(str != null);
        fragment();
    }

    @Override
    public void setName(String str) {
    }

    @Override
    public void shareContents(DOMNode dOMNode) {
        super.shareContents(dOMNode);
        DOMInitializer dOMInitializer = (DOMInitializer) dOMNode;
        this.fBody = dOMInitializer.fBody;
        this.fBodyRange = rangeCopy(dOMInitializer.fBodyRange);
    }

    @Override
    public String toString() {
        return "INITIALIZER";
    }

    public DOMInitializer(char[] cArr, int[] iArr, int[] iArr2, int i10, int[] iArr3, int i11) {
        super(cArr, iArr, null, new int[]{-1, -1}, iArr2, i10, iArr3);
        this.fBodyRange = r10;
        int[] iArr4 = {i11, iArr[1]};
        setHasBody(true);
        setMask(2048, true);
    }

    public DOMInitializer(char[] cArr, int[] iArr, int i10) {
        this(cArr, iArr, new int[]{-1, -1}, i10, new int[]{-1, -1}, -1);
        setMask(2048, false);
    }
}
