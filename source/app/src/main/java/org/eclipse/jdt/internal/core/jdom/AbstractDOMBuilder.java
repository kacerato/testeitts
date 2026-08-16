package org.eclipse.jdt.internal.core.jdom;

import java.util.Stack;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.core.util.ReferenceInfoAdapter;

public class AbstractDOMBuilder extends ReferenceInfoAdapter implements ILineStartFinder {
    protected boolean fAbort;
    protected int fFieldCount;
    protected DOMNode fNode;
    protected boolean fBuildingCU = false;
    protected boolean fBuildingType = false;
    protected char[] fDocument = null;
    protected int[] fLineStartPositions = new int[1];
    protected Stack fStack = null;

    public void acceptLineSeparatorPositions(int[] iArr) {
        int length;
        if (iArr == null || (length = iArr.length) <= 0) {
            return;
        }
        int[] iArr2 = new int[length + 1];
        this.fLineStartPositions = iArr2;
        int i10 = 0;
        iArr2[0] = 0;
        int length2 = this.fDocument.length;
        while (i10 < length) {
            int i11 = i10 + 1;
            int i12 = iArr[i10];
            int i13 = i12 + 1;
            if (i13 >= length2) {
                this.fLineStartPositions[i11] = i13;
            } else if (i11 < length) {
                this.fLineStartPositions[i11] = i13;
            } else if (this.fDocument[i13] == '\n') {
                this.fLineStartPositions[i11] = i12 + 2;
            } else {
                this.fLineStartPositions[i11] = i13;
            }
            i10 = i11;
        }
    }

    public void addChild(IDOMNode iDOMNode) {
        if (this.fStack.size() > 0) {
            DOMNode dOMNode = (DOMNode) this.fStack.peek();
            if (this.fBuildingCU || this.fBuildingType) {
                dOMNode.basicAddChild(iDOMNode);
            }
        }
    }

    public IDOMCompilationUnit createCompilationUnit(char[] cArr, char[] cArr2) {
        return createCompilationUnit(new CompilationUnit(cArr, cArr2));
    }

    public void enterCompilationUnit() {
        if (this.fBuildingCU) {
            char[] cArr = this.fDocument;
            this.fStack.push(new DOMCompilationUnit(cArr, new int[]{0, cArr.length - 1}));
        }
    }

    public void exitCompilationUnit(int i10) {
        DOMCompilationUnit dOMCompilationUnit = (DOMCompilationUnit) this.fStack.pop();
        dOMCompilationUnit.setSourceRangeEnd(i10);
        this.fNode = dOMCompilationUnit;
    }

    public void exitType(int i10, int i11) {
        DOMType dOMType = (DOMType) this.fStack.pop();
        dOMType.setSourceRangeEnd(i11);
        dOMType.setCloseBodyRangeStart(i10);
        dOMType.setCloseBodyRangeEnd(i10);
        this.fNode = dOMType;
    }

    @Override
    public int getLineStart(int i10) {
        for (int length = this.fLineStartPositions.length - 1; length >= 0; length--) {
            int i11 = this.fLineStartPositions[length];
            if (i11 <= i10) {
                return i11;
            }
        }
        return 0;
    }

    public void initializeBuild(char[] cArr, boolean z10, boolean z11) {
        this.fBuildingCU = z10;
        this.fBuildingType = z11;
        this.fStack = new Stack();
        this.fDocument = cArr;
        this.fFieldCount = 0;
        this.fAbort = false;
    }

    public IDOMCompilationUnit createCompilationUnit(ICompilationUnit iCompilationUnit) {
        if (this.fAbort) {
            return null;
        }
        this.fNode.normalize(this);
        return (IDOMCompilationUnit) this.fNode;
    }
}
