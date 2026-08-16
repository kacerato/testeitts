package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.jdom.IDOMPackage;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class DOMPackage extends DOMNode implements IDOMPackage {
    public DOMPackage() {
        setMask(2048, true);
    }

    @Override
    public void appendFragmentedContents(CharArrayBuffer charArrayBuffer) {
        int i10 = this.fNameRange[0];
        if (i10 < 0) {
            String lineSeparator = Util.getLineSeparator(charArrayBuffer.toString(), (IJavaProject) null);
            charArrayBuffer.append("package ").append(this.fName).append(';').append(lineSeparator).append(lineSeparator);
            return;
        }
        char[] cArr = this.fDocument;
        int i11 = this.fSourceRange[0];
        CharArrayBuffer append = charArrayBuffer.append(cArr, i11, i10 - i11).append(this.fName);
        char[] cArr2 = this.fDocument;
        int i12 = this.fNameRange[1];
        append.append(cArr2, i12 + 1, this.fSourceRange[1] - i12);
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
        return (DOMNode) getFactory().createPackage(getContents());
    }

    @Override
    public IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException {
        if (iJavaElement.getElementType() == 5) {
            return ((ICompilationUnit) iJavaElement).getPackageDeclaration(getName());
        }
        throw new IllegalArgumentException(Messages.element_illegalParent);
    }

    @Override
    public int getNodeType() {
        return 2;
    }

    @Override
    public DOMNode newDOMNode() {
        return new DOMPackage();
    }

    @Override
    public void setName(String str) {
        becomeDetailed();
        super.setName(str);
    }

    @Override
    public String toString() {
        return "PACKAGE: " + getName();
    }

    public DOMPackage(char[] cArr, int[] iArr, String str) {
        super(cArr, iArr, str, new int[]{-1, -1});
        setMask(2048, false);
    }

    public DOMPackage(char[] cArr, int[] iArr, String str, int[] iArr2) {
        super(cArr, iArr, str, iArr2);
        setMask(2048, true);
    }
}
