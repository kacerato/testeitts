package org.eclipse.jdt.internal.core.jdom;

import java.util.ArrayList;
import java.util.Map;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMField;
import org.eclipse.jdt.core.jdom.IDOMImport;
import org.eclipse.jdt.core.jdom.IDOMInitializer;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.core.jdom.IDOMPackage;
import org.eclipse.jdt.core.jdom.IDOMType;
import org.eclipse.jdt.internal.compiler.DocumentElementParser;
import org.eclipse.jdt.internal.compiler.IDocumentElementRequestor;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;

public class DOMBuilder extends AbstractDOMBuilder implements IDocumentElementRequestor {
    protected ArrayList fFields;
    protected boolean fBuildingSingleMember = false;
    protected boolean fFinishedSingleMember = false;
    Map options = JavaCore.getOptions();

    @Override
    public void acceptImport(int i10, int i11, int[] iArr, char[] cArr, int i12, boolean z10, int i13) {
        int[] iArr2 = {i10, i11};
        int[] iArr3 = {i12, i11 - 1};
        char[] cArr2 = this.fDocument;
        int i14 = iArr3[0];
        DOMImport dOMImport = new DOMImport(this.fDocument, iArr2, new String(cArr2, i14, (iArr3[1] + 1) - i14), iArr3, z10, i13);
        this.fNode = dOMImport;
        addChild(dOMImport);
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    @Override
    public void acceptInitializer(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15) {
        int[] iArr2 = {i10, i11};
        int[] iArr3 = {-1, -1};
        if (iArr != null) {
            int length = iArr.length;
            iArr3[0] = iArr[length - 2];
            iArr3[1] = iArr[length - 1];
        }
        int[] iArr4 = {-1, -1};
        if (i13 >= i10) {
            iArr4[0] = i13;
            iArr4[1] = i14 - 1;
        }
        DOMInitializer dOMInitializer = new DOMInitializer(this.fDocument, iArr2, iArr3, i12, iArr4, i14);
        this.fNode = dOMInitializer;
        addChild(dOMInitializer);
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    @Override
    public void acceptPackage(int i10, int i11, int[] iArr, char[] cArr, int i12) {
        DOMPackage dOMPackage = new DOMPackage(this.fDocument, iArr != null ? new int[]{iArr[iArr.length - 2], i11} : new int[]{i10, i11}, CharOperation.charToString(cArr), new int[]{i12, i11 - 1});
        this.fNode = dOMPackage;
        addChild(dOMPackage);
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    @Override
    public void acceptProblem(CategorizedProblem categorizedProblem) {
        if (this.fBuildingSingleMember && this.fFinishedSingleMember) {
            return;
        }
        this.fAbort = true;
    }

    @Override
    public void addChild(IDOMNode iDOMNode) {
        ArrayList arrayList;
        super.addChild(iDOMNode);
        if (!this.fStack.isEmpty() || (arrayList = this.fFields) == null) {
            return;
        }
        arrayList.add(iDOMNode);
    }

    public IDOMCompilationUnit createCompilationUnit() {
        return new DOMCompilationUnit();
    }

    public IDOMField createField(char[] cArr) {
        DOMNode dOMNode;
        initializeBuild(cArr, false, false, true);
        getParser(this.options).parseField(cArr);
        if (this.fAbort || (dOMNode = this.fNode) == null || this.fFieldCount > 1) {
            return null;
        }
        dOMNode.normalize(this);
        return (IDOMField) this.fNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IDOMField[] createFields(char[] cArr) {
        initializeBuild(cArr, false, false, false);
        this.fFields = new ArrayList();
        getParser(this.options).parseField(cArr);
        if (this.fAbort) {
            return null;
        }
        int size = this.fFields.size();
        IDOMField[] iDOMFieldArr = new IDOMField[size];
        this.fFields.toArray(iDOMFieldArr);
        for (int i10 = 0; i10 < size; i10++) {
            Object[] objArr = iDOMFieldArr[i10];
            DOMNode dOMNode = (DOMNode) objArr;
            if (i10 < size - 1) {
                DOMNode dOMNode2 = (DOMNode) iDOMFieldArr[i10 + 1];
                dOMNode.fNextNode = dOMNode2;
                dOMNode2.fPreviousNode = dOMNode;
            }
            ((DOMNode) objArr).normalize(this);
        }
        return iDOMFieldArr;
    }

    public IDOMImport createImport() {
        return new DOMImport();
    }

    public IDOMInitializer createInitializer(char[] cArr) {
        DOMNode dOMNode;
        initializeBuild(cArr, false, false, true);
        getParser(this.options).parseInitializer(cArr);
        if (this.fAbort || (dOMNode = this.fNode) == null || !(dOMNode instanceof IDOMInitializer)) {
            return null;
        }
        dOMNode.normalize(this);
        return (IDOMInitializer) this.fNode;
    }

    public IDOMMethod createMethod(char[] cArr) {
        DOMNode dOMNode;
        initializeBuild(cArr, false, false, true);
        getParser(this.options).parseMethod(cArr);
        if (this.fAbort || (dOMNode = this.fNode) == null) {
            return null;
        }
        dOMNode.normalize(this);
        return (IDOMMethod) this.fNode;
    }

    public IDOMPackage createPackage() {
        return new DOMPackage();
    }

    public IDOMType createType(char[] cArr) {
        initializeBuild(cArr, false, true, false);
        getParser(this.options).parseType(cArr);
        if (this.fAbort) {
            return null;
        }
        DOMNode dOMNode = this.fNode;
        if (dOMNode != null) {
            dOMNode.normalize(this);
        }
        Cloneable cloneable = this.fNode;
        if (cloneable instanceof IDOMType) {
            return (IDOMType) cloneable;
        }
        return null;
    }

    public void enterAbstractMethod(int i10, int[] iArr, int i11, int i12, char[] cArr, int i13, int i14, int i15, char[] cArr2, int i16, int i17, char[][] cArr3, int[] iArr2, int[] iArr3, char[][] cArr4, int[] iArr4, int[] iArr5, int i18, int i19, int i20, char[][] cArr5, int[] iArr6, int[] iArr7, int i21, boolean z10) {
        int[] iArr8 = {i10, -1};
        int[] iArr9 = {i16, i17};
        int[] iArr10 = {-1, -1};
        if (iArr != null) {
            int length = iArr.length;
            iArr10[0] = iArr[length - 2];
            iArr10[1] = iArr[length - 1];
        }
        int[] iArr11 = {-1, -1};
        if (i12 > -1) {
            iArr11[0] = i12;
            if (z10) {
                iArr11[1] = i16 - 1;
            } else {
                iArr11[1] = i13 - 1;
            }
        }
        int[] iArr12 = i19 > 0 ? new int[]{i13, i14, i18 + 1, i20} : new int[]{i13, i14};
        int[] iArr13 = {i17 + 1, i18};
        int[] iArr14 = {-1, -1};
        if (cArr5 != null && cArr5.length > 0) {
            int length2 = cArr5.length;
            iArr14[0] = iArr6[0];
            iArr14[1] = iArr7[length2 - 1];
        }
        int i22 = iArr14[1];
        DOMMethod dOMMethod = new DOMMethod(this.fDocument, iArr8, CharOperation.charToString(cArr2), iArr9, iArr10, i11, iArr11, z10, CharOperation.charToString(cArr), iArr12, CharOperation.charArrayToStringArray(cArr3), CharOperation.charArrayToStringArray(cArr4), iArr13, CharOperation.charArrayToStringArray(cArr5), iArr14, i22 > -1 ? new int[]{i22 + 1, -1} : new int[]{i18 + 1, -1});
        this.fNode = dOMMethod;
        addChild(dOMMethod);
        this.fStack.push(this.fNode);
    }

    @Override
    public void enterClass(int i10, int[] iArr, int i11, int i12, int i13, char[] cArr, int i14, int i15, char[] cArr2, int i16, int i17, char[][] cArr3, int[] iArr2, int[] iArr3, int i18) {
        enterType(i10, iArr, i11, i12, i13, cArr, i14, i15, cArr2, i16, i17, cArr3, iArr2, iArr3, i18, true);
    }

    @Override
    public void enterConstructor(int i10, int[] iArr, int i11, int i12, char[] cArr, int i13, int i14, char[][] cArr2, int[] iArr2, int[] iArr3, char[][] cArr3, int[] iArr4, int[] iArr5, int i15, char[][] cArr4, int[] iArr6, int[] iArr7, int i16) {
        enterAbstractMethod(i10, iArr, i11, i12, null, -1, -1, 0, cArr, i13, new String(this.fDocument, i13, i14 - i13).indexOf(40) > -1 ? (r0 + i13) - 1 : i14, cArr2, iArr2, iArr3, cArr3, iArr4, iArr5, i15, 0, -1, cArr4, iArr6, iArr7, i16, true);
    }

    @Override
    public void enterField(int i10, int[] iArr, int i11, int i12, char[] cArr, int i13, int i14, int i15, char[] cArr2, int i16, int i17, int i18, int i19) {
        int i20 = i19;
        if (i20 <= i17) {
            i20 = i17;
        }
        int[] iArr2 = {i10, i20};
        int[] iArr3 = {i16, i17};
        int[] iArr4 = {-1, -1};
        if (iArr != null) {
            int length = iArr.length;
            iArr4[0] = iArr[length - 2];
            iArr4[1] = iArr[length - 1];
        }
        int[] iArr5 = {-1, -1};
        if (i12 > -1) {
            iArr5[0] = i12;
            iArr5[1] = i13 - 1;
        }
        int[] iArr6 = {i13, i14};
        int[] iArr7 = {-1, -1};
        DOMNode dOMNode = this.fNode;
        DOMField dOMField = new DOMField(this.fDocument, iArr2, CharOperation.charToString(cArr2), iArr3, iArr4, i11, iArr5, iArr6, CharOperation.charToString(cArr), false, iArr7, (dOMNode instanceof DOMField) && ((DOMField) dOMNode).fTypeRange[0] == i13);
        this.fNode = dOMField;
        addChild(dOMField);
        this.fStack.push(this.fNode);
    }

    @Override
    public void enterInterface(int i10, int[] iArr, int i11, int i12, int i13, char[] cArr, int i14, int i15, char[][] cArr2, int[] iArr2, int[] iArr3, int i16) {
        enterType(i10, iArr, i11, i12, i13, cArr, i14, i15, null, -1, -1, cArr2, iArr2, iArr3, i16, false);
    }

    @Override
    public void enterMethod(int i10, int[] iArr, int i11, int i12, char[] cArr, int i13, int i14, int i15, char[] cArr2, int i16, int i17, char[][] cArr3, int[] iArr2, int[] iArr3, char[][] cArr4, int[] iArr4, int[] iArr5, int i18, int i19, int i20, char[][] cArr5, int[] iArr6, int[] iArr7, int i21) {
        enterAbstractMethod(i10, iArr, i11, i12, cArr, i13, i14, i15, cArr2, i16, i17, cArr3, iArr2, iArr3, cArr4, iArr4, iArr5, i18, i19, i20, cArr5, iArr6, iArr7, i21, false);
    }

    public void enterType(int i10, int[] iArr, int i11, int i12, int i13, char[] cArr, int i14, int i15, char[] cArr2, int i16, int i17, char[][] cArr3, int[] iArr2, int[] iArr3, int i18, boolean z10) {
        if (this.fBuildingType) {
            int[] iArr4 = {i10, -1};
            int[] iArr5 = {-1, -1};
            if (iArr != null) {
                int length = iArr.length;
                iArr5[0] = iArr[length - 2];
                iArr5[1] = iArr[length - 1];
            }
            int[] iArr6 = {-1, -1};
            if (i12 > -1) {
                iArr6[0] = i12;
                iArr6[1] = i12 > -1 ? i13 - 1 : -1;
            }
            int[] iArr7 = {i13, i14 - 1};
            int[] iArr8 = {i14, i15};
            int[] iArr9 = {-1, -1};
            int[] iArr10 = {-1, -1};
            int[] iArr11 = {-1, -1};
            int[] iArr12 = {-1, -1};
            if (z10) {
                if (cArr2 != null) {
                    iArr9[0] = i15 + 1;
                    iArr9[1] = i16 - 1;
                    iArr10[0] = i16;
                    iArr10[1] = i17;
                }
                if (cArr3 != null && cArr3.length > 0) {
                    iArr10[1] = i17;
                    if (i17 > -1) {
                        iArr11[0] = i17 + 1;
                    } else {
                        iArr11[0] = i15 + 1;
                    }
                    int i19 = iArr2[0];
                    iArr11[1] = i19 - 1;
                    iArr12[0] = i19;
                    iArr12[1] = iArr3[cArr3.length - 1];
                }
            } else if (cArr3 != null && cArr3.length > 0) {
                iArr9[0] = i15 + 1;
                int i20 = iArr2[0];
                iArr9[1] = i20 - 1;
                iArr12[0] = i20;
                iArr12[1] = iArr3[cArr3.length - 1];
            }
            DOMType dOMType = new DOMType(this.fDocument, iArr4, new String(cArr), iArr8, iArr5, i11, iArr6, iArr7, iArr10, iArr9, CharOperation.charArrayToStringArray(cArr3), iArr12, iArr11, new int[]{i18, -1}, new int[]{-1, -1}, z10);
            this.fNode = dOMType;
            addChild(dOMType);
            this.fStack.push(this.fNode);
        }
    }

    public void exitAbstractMethod(int i10, int i11) {
        DOMMethod dOMMethod = (DOMMethod) this.fStack.pop();
        dOMMethod.setSourceRangeEnd(i11);
        dOMMethod.setBodyRangeEnd(i10 + 1);
        this.fNode = dOMMethod;
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    @Override
    public void exitClass(int i10, int i11) {
        exitType(i10, i11);
    }

    @Override
    public void exitConstructor(int i10, int i11) {
        exitAbstractMethod(i10, i11);
    }

    @Override
    public void exitField(int i10, int i11) {
        int indexOf;
        DOMField dOMField = (DOMField) this.fStack.pop();
        if (dOMField.getEndPosition() < i11) {
            dOMField.setSourceRangeEnd(i11);
            int i12 = dOMField.fNameRange[1];
            if (i12 < i10 && (indexOf = new String(this.fDocument, i12 + 1, i10 - i12).indexOf(61)) > -1) {
                dOMField.setHasInitializer(true);
                dOMField.setInitializerRange(i12 + indexOf + 2, i10);
            }
        }
        this.fFieldCount++;
        this.fNode = dOMField;
        if (this.fBuildingSingleMember) {
            this.fFinishedSingleMember = true;
        }
    }

    @Override
    public void exitInterface(int i10, int i11) {
        exitType(i10, i11);
    }

    @Override
    public void exitMethod(int i10, int i11) {
        exitAbstractMethod(i10, i11);
    }

    public DocumentElementParser getParser(Map map) {
        return new DocumentElementParser(this, new DefaultProblemFactory(), new CompilerOptions(map));
    }

    public void initializeBuild(char[] cArr, boolean z10, boolean z11, boolean z12) {
        super.initializeBuild(cArr, z10, z11);
        this.fBuildingSingleMember = z12;
        this.fFinishedSingleMember = false;
    }

    @Override
    public IDOMCompilationUnit createCompilationUnit(ICompilationUnit iCompilationUnit) {
        initializeBuild(iCompilationUnit.getContents(), true, true, false);
        getParser(this.options).parseCompilationUnit(iCompilationUnit);
        return super.createCompilationUnit(iCompilationUnit);
    }

    public IDOMImport createImport(char[] cArr) {
        DOMNode dOMNode;
        initializeBuild(cArr, false, false, true);
        getParser(this.options).parseImport(cArr);
        if (this.fAbort || (dOMNode = this.fNode) == null) {
            return null;
        }
        dOMNode.normalize(this);
        return (IDOMImport) this.fNode;
    }

    public IDOMPackage createPackage(char[] cArr) {
        DOMNode dOMNode;
        initializeBuild(cArr, false, false, true);
        getParser(this.options).parsePackage(cArr);
        if (this.fAbort || (dOMNode = this.fNode) == null) {
            return null;
        }
        dOMNode.normalize(this);
        return (IDOMPackage) this.fNode;
    }
}
