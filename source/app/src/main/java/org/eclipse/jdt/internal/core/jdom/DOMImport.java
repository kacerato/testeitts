package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.jdom.IDOMImport;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class DOMImport extends DOMNode implements IDOMImport {
    protected int fFlags;
    protected boolean fOnDemand;

    public DOMImport() {
        this.fFlags = 0;
        this.fName = "java.lang.*";
        setMask(2048, true);
    }

    @Override
    public void appendFragmentedContents(CharArrayBuffer charArrayBuffer) {
        int i10 = this.fNameRange[0];
        if (i10 < 0) {
            charArrayBuffer.append("import ").append(this.fName).append(';').append(Util.getLineSeparator(charArrayBuffer.toString(), (IJavaProject) null));
            return;
        }
        char[] cArr = this.fDocument;
        int i11 = this.fSourceRange[0];
        charArrayBuffer.append(cArr, i11, i10 - i11);
        charArrayBuffer.append(this.fName);
        char[] cArr2 = this.fDocument;
        int i12 = this.fNameRange[1];
        charArrayBuffer.append(cArr2, i12 + 1, this.fSourceRange[1] - i12);
    }

    @Override
    public String getContents() {
        if (this.fName == null) {
            return null;
        }
        return super.getContents();
    }

    @Override
    public DOMNode getDetailedNode() {
        return (DOMNode) getFactory().createImport(getContents());
    }

    @Override
    public int getFlags() {
        return this.fFlags;
    }

    @Override
    public IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException {
        if (iJavaElement.getElementType() == 5) {
            return ((ICompilationUnit) iJavaElement).getImport(getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    @Override
    public int getNodeType() {
        return 3;
    }

    @Override
    public boolean isOnDemand() {
        return this.fOnDemand;
    }

    @Override
    public DOMNode newDOMNode() {
        return new DOMImport();
    }

    @Override
    public void setFlags(int i10) {
        this.fFlags = i10;
    }

    @Override
    public void setName(String str) {
        if (str == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        becomeDetailed();
        super.setName(str);
        this.fOnDemand = str.endsWith(".*");
    }

    @Override
    public String toString() {
        return "IMPORT: " + getName();
    }

    public DOMImport(char[] cArr, int[] iArr, String str, int[] iArr2, boolean z10, int i10) {
        super(cArr, iArr, str, iArr2);
        this.fOnDemand = z10;
        this.fFlags = i10;
        setMask(2048, true);
    }

    public DOMImport(char[] cArr, int[] iArr, String str, boolean z10, int i10) {
        this(cArr, iArr, str, new int[]{-1, -1}, z10, i10);
        this.fOnDemand = z10;
        setMask(2048, false);
    }
}
