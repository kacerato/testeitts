package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.core.jdom.IDOMType;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class DOMCompilationUnit extends DOMNode implements IDOMCompilationUnit, SuffixConstants {
    protected String fHeader;

    public DOMCompilationUnit() {
        this.fHeader = "";
    }

    @Override
    public void appendFragmentedContents(CharArrayBuffer charArrayBuffer) {
        charArrayBuffer.append(getHeader());
        appendContentsOfChildren(charArrayBuffer);
    }

    @Override
    public boolean canHaveChildren() {
        return true;
    }

    @Override
    public String getHeader() {
        return this.fHeader;
    }

    @Override
    public IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException {
        if (iJavaElement.getElementType() == 4) {
            return ((IPackageFragment) iJavaElement).getCompilationUnit(getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    @Override
    public String getName() {
        IDOMType iDOMType;
        IDOMNode iDOMNode = this.fFirstChild;
        IDOMType iDOMType2 = null;
        while (true) {
            if (iDOMNode == null) {
                iDOMType = null;
                break;
            }
            if (iDOMNode.getNodeType() == 4) {
                iDOMType = (IDOMType) iDOMNode;
                if (iDOMType2 == null) {
                    iDOMType2 = iDOMType;
                }
                if (Flags.isPublic(iDOMType.getFlags())) {
                    break;
                }
            }
            iDOMNode = iDOMNode.getNextNode();
        }
        if (iDOMType != null) {
            iDOMType2 = iDOMType;
        }
        if (iDOMType2 == null) {
            return null;
        }
        return String.valueOf(iDOMType2.getName()) + Util.defaultJavaExtension();
    }

    @Override
    public int getNodeType() {
        return 1;
    }

    public void initalizeHeader() {
        int startPosition;
        DOMNode dOMNode = (DOMNode) getFirstChild();
        if (dOMNode == null || (startPosition = dOMNode.getStartPosition()) <= 1) {
            return;
        }
        setHeader(new String(this.fDocument, 0, startPosition));
    }

    @Override
    public boolean isAllowableChild(IDOMNode iDOMNode) {
        if (iDOMNode == null) {
            return false;
        }
        int nodeType = iDOMNode.getNodeType();
        return nodeType == 2 || nodeType == 3 || nodeType == 4;
    }

    @Override
    public DOMNode newDOMNode() {
        return new DOMCompilationUnit();
    }

    @Override
    public void normalize(ILineStartFinder iLineStartFinder) {
        super.normalize(iLineStartFinder);
        initalizeHeader();
    }

    @Override
    public void setHeader(String str) {
        this.fHeader = str;
        fragment();
    }

    @Override
    public void setName(String str) {
    }

    @Override
    public void shareContents(DOMNode dOMNode) {
        super.shareContents(dOMNode);
        this.fHeader = ((DOMCompilationUnit) dOMNode).fHeader;
    }

    @Override
    public String toString() {
        return "COMPILATION_UNIT: " + getName();
    }

    public DOMCompilationUnit(char[] cArr, int[] iArr) {
        super(cArr, iArr, null, new int[]{-1, -1});
        this.fHeader = "";
    }
}
