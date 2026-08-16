package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMNode;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import w2.C15883c;

class DOMMethod extends DOMMember implements IDOMMethod {
    protected String fBody;
    protected int[] fBodyRange;
    protected String fDefaultValue;
    protected char[] fExceptionList;
    protected int[] fExceptionRange;
    protected String[] fExceptions;
    protected char[] fParameterList;
    protected String[] fParameterNames;
    protected int[] fParameterRange;
    protected String[] fParameterTypes;
    protected String fReturnType;
    protected int[] fReturnTypeRange;
    protected String[] fTypeParameters;

    public DOMMethod() {
        this.fTypeParameters = CharOperation.NO_STRINGS;
        this.fDefaultValue = null;
    }

    @Override
    public void addException(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.dom_nullExceptionType);
        }
        String[] strArr = this.fExceptions;
        if (strArr == null) {
            this.fExceptions = r0;
            String[] strArr2 = {str};
        } else {
            this.fExceptions = appendString(strArr, str);
        }
        setExceptions(this.fExceptions);
    }

    @Override
    public void addParameter(String str, String str2) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.dom_nullTypeParameter);
        }
        if (str2 == null) {
            throw new IllegalArgumentException(Messages.dom_nullNameParameter);
        }
        String[] strArr = this.fParameterNames;
        if (strArr == null) {
            this.fParameterNames = r0;
            String[] strArr2 = {str2};
        } else {
            this.fParameterNames = appendString(strArr, str2);
        }
        String[] strArr3 = this.fParameterTypes;
        if (strArr3 == null) {
            this.fParameterTypes = r5;
            String[] strArr4 = {str};
        } else {
            this.fParameterTypes = appendString(strArr3, str);
        }
        setParameters(this.fParameterTypes, this.fParameterNames);
    }

    @Override
    public void appendMemberBodyContents(CharArrayBuffer charArrayBuffer) {
        String str = this.fBody;
        if (str != null) {
            charArrayBuffer.append(str);
            return;
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fBodyRange;
        int i10 = iArr[0];
        charArrayBuffer.append(cArr, i10, (iArr[1] + 1) - i10);
    }

    @Override
    public void appendMemberDeclarationContents(CharArrayBuffer charArrayBuffer) {
        if (isConstructor()) {
            CharArrayBuffer append = charArrayBuffer.append(getConstructorName());
            char[] cArr = this.fDocument;
            int i10 = this.fNameRange[1];
            append.append(cArr, i10 + 1, (this.fParameterRange[0] - i10) - 1);
        } else {
            charArrayBuffer.append(getReturnTypeContents());
            int[] iArr = this.fReturnTypeRange;
            if (iArr[0] >= 0) {
                char[] cArr2 = this.fDocument;
                int i11 = iArr[1];
                charArrayBuffer.append(cArr2, i11 + 1, (this.fNameRange[0] - i11) - 1);
            } else {
                charArrayBuffer.append(C15883c.f126249O);
            }
            CharArrayBuffer append2 = charArrayBuffer.append(getNameContents());
            char[] cArr3 = this.fDocument;
            int i12 = this.fNameRange[1];
            append2.append(cArr3, i12 + 1, (this.fParameterRange[0] - i12) - 1);
        }
        char[] cArr4 = this.fParameterList;
        if (cArr4 != null) {
            charArrayBuffer.append(cArr4);
        } else {
            char[] cArr5 = this.fDocument;
            int[] iArr2 = this.fParameterRange;
            int i13 = iArr2[0];
            charArrayBuffer.append(cArr5, i13, (iArr2[1] + 1) - i13);
        }
        int i14 = ((hasTrailingArrayQualifier() && isReturnTypeAltered()) ? this.fReturnTypeRange[3] : this.fParameterRange[1]) + 1;
        if (this.fExceptions == null) {
            int[] iArr3 = this.fExceptionRange;
            if (iArr3[0] < 0) {
                charArrayBuffer.append(this.fDocument, i14, this.fBodyRange[0] - i14);
                return;
            }
            char[] cArr6 = this.fDocument;
            int i15 = iArr3[1];
            charArrayBuffer.append(cArr6, i15 + 1, (this.fBodyRange[0] - i15) - 1);
            return;
        }
        int i16 = this.fExceptionRange[0];
        if (i16 >= 0) {
            charArrayBuffer.append(this.fDocument, i14, i16 - i14);
        } else {
            charArrayBuffer.append(" throws ");
        }
        char[] cArr7 = this.fExceptionList;
        if (cArr7 == null) {
            char[] cArr8 = this.fDocument;
            int i17 = this.fExceptionRange[0];
            charArrayBuffer.append(cArr8, i17, this.fBodyRange[0] - i17);
            return;
        }
        charArrayBuffer.append(cArr7);
        int[] iArr4 = this.fExceptionRange;
        if (iArr4[0] >= 0) {
            char[] cArr9 = this.fDocument;
            int i18 = iArr4[1];
            charArrayBuffer.append(cArr9, i18 + 1, (this.fBodyRange[0] - i18) - 1);
        } else {
            char[] cArr10 = this.fDocument;
            int i19 = this.fParameterRange[1];
            charArrayBuffer.append(cArr10, i19 + 1, (this.fBodyRange[0] - i19) - 1);
        }
    }

    @Override
    public void appendSimpleContents(CharArrayBuffer charArrayBuffer) {
        char[] cArr = this.fDocument;
        int i10 = this.fSourceRange[0];
        charArrayBuffer.append(cArr, i10, this.fNameRange[0] - i10);
        if (isConstructor()) {
            charArrayBuffer.append(getConstructorName());
        } else {
            charArrayBuffer.append(this.fName);
        }
        char[] cArr2 = this.fDocument;
        int i11 = this.fNameRange[1];
        charArrayBuffer.append(cArr2, i11 + 1, this.fSourceRange[1] - i11);
    }

    @Override
    public char[] generateFlags() {
        char[] charArray = Flags.toString(getFlags() & (-129)).toCharArray();
        return charArray.length == 0 ? charArray : CharOperation.concat(charArray, new char[]{C15883c.f126249O});
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

    public String getConstructorName() {
        if (isConstructor()) {
            return getParent() != null ? getParent().getName() : new String(getNameContents());
        }
        return null;
    }

    @Override
    public String getDefault() {
        return this.fDefaultValue;
    }

    @Override
    public DOMNode getDetailedNode() {
        return (DOMNode) getFactory().createMethod(getContents());
    }

    @Override
    public String[] getExceptions() {
        return this.fExceptions;
    }

    @Override
    public IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException {
        String[] strArr;
        if (iJavaElement.getElementType() != 7) {
            throw new IllegalArgumentException(Messages.element_illegalParent);
        }
        String[] strArr2 = this.fParameterTypes;
        if (strArr2 != null) {
            strArr = new String[strArr2.length];
            int i10 = 0;
            while (true) {
                String[] strArr3 = this.fParameterTypes;
                if (i10 >= strArr3.length) {
                    break;
                }
                strArr[i10] = Signature.createTypeSignature(strArr3[i10].toCharArray(), false);
                i10++;
            }
        } else {
            strArr = null;
        }
        return ((IType) iJavaElement).getMethod(isConstructor() ? getConstructorName() : getName(), strArr);
    }

    @Override
    public int getMemberDeclarationStartPosition() {
        int i10 = this.fReturnTypeRange[0];
        return i10 >= 0 ? i10 : this.fNameRange[0];
    }

    @Override
    public String getName() {
        if (isConstructor()) {
            return null;
        }
        return super.getName();
    }

    @Override
    public int getNodeType() {
        return 6;
    }

    @Override
    public String[] getParameterNames() {
        return this.fParameterNames;
    }

    @Override
    public String[] getParameterTypes() {
        return this.fParameterTypes;
    }

    @Override
    public String getReturnType() {
        if (isConstructor()) {
            return null;
        }
        return this.fReturnType;
    }

    public char[] getReturnTypeContents() {
        if (isConstructor()) {
            return null;
        }
        if (isReturnTypeAltered()) {
            return this.fReturnType.toCharArray();
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fReturnTypeRange;
        return CharOperation.subarray(cArr, iArr[0], iArr[1] + 1);
    }

    @Override
    public String[] getTypeParameters() {
        return this.fTypeParameters;
    }

    public boolean hasTrailingArrayQualifier() {
        return this.fReturnTypeRange.length > 2;
    }

    @Override
    public boolean isConstructor() {
        return getMask(64);
    }

    public boolean isReturnTypeAltered() {
        return getMask(1024);
    }

    @Override
    public boolean isSignatureEqual(IDOMNode iDOMNode) {
        if (iDOMNode.getNodeType() == getNodeType()) {
            IDOMMethod iDOMMethod = (IDOMMethod) iDOMNode;
            boolean z10 = (isConstructor() && iDOMMethod.isConstructor()) || !(isConstructor() || iDOMMethod.isConstructor());
            if (z10 && !isConstructor()) {
                z10 = getName().equals(iDOMMethod.getName());
            }
            if (!z10) {
                return false;
            }
            String[] parameterTypes = iDOMMethod.getParameterTypes();
            String[] strArr = this.fParameterTypes;
            if (strArr != null && strArr.length != 0) {
                if (parameterTypes == null || parameterTypes.length == 0 || strArr.length != parameterTypes.length) {
                    return false;
                }
                for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                    if (!this.fParameterTypes[i10].equals(parameterTypes[i10])) {
                        return false;
                    }
                }
                return true;
            }
            if (parameterTypes == null || parameterTypes.length == 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public DOMNode newDOMNode() {
        return new DOMMethod();
    }

    @Override
    public void offset(int i10) {
        super.offset(i10);
        offsetRange(this.fBodyRange, i10);
        offsetRange(this.fExceptionRange, i10);
        offsetRange(this.fParameterRange, i10);
        offsetRange(this.fReturnTypeRange, i10);
    }

    @Override
    public void setBody(String str) {
        becomeDetailed();
        fragment();
        this.fBody = str;
        setHasBody(str != null);
        if (hasBody()) {
            return;
        }
        this.fBody = ";" + Util.getLineSeparator(str, (IJavaProject) null);
    }

    public void setBodyRangeEnd(int i10) {
        this.fBodyRange[1] = i10;
    }

    @Override
    public void setConstructor(boolean z10) {
        becomeDetailed();
        setMask(64, z10);
        fragment();
    }

    @Override
    public void setDefault(String str) {
        this.fDefaultValue = str;
    }

    @Override
    public void setExceptions(String[] strArr) {
        becomeDetailed();
        if (strArr == null || strArr.length == 0) {
            this.fExceptions = null;
        } else {
            this.fExceptions = strArr;
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
            char[] cArr = {IIndexConstants.PARAMETER_SEPARATOR, C15883c.f126249O};
            int length = strArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    charArrayBuffer.append(cArr);
                }
                charArrayBuffer.append(strArr[i10]);
            }
            this.fExceptionList = charArrayBuffer.getContents();
        }
        fragment();
    }

    @Override
    public void setName(String str) {
        if (str == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        super.setName(str);
    }

    @Override
    public void setParameters(String[] strArr, String[] strArr2) throws IllegalArgumentException {
        becomeDetailed();
        if (strArr == null || strArr2 == null) {
            if (strArr != null || strArr2 != null) {
                throw new IllegalArgumentException(Messages.dom_mismatchArgNamesAndTypes);
            }
            this.fParameterTypes = null;
            this.fParameterNames = null;
            this.fParameterList = new char[]{'(', ')'};
        } else {
            if (strArr2.length != strArr.length) {
                throw new IllegalArgumentException(Messages.dom_mismatchArgNamesAndTypes);
            }
            if (strArr2.length == 0) {
                setParameters(null, null);
            } else {
                this.fParameterNames = strArr2;
                this.fParameterTypes = strArr;
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
                charArrayBuffer.append("(");
                char[] cArr = {IIndexConstants.PARAMETER_SEPARATOR, C15883c.f126249O};
                for (int i10 = 0; i10 < strArr2.length; i10++) {
                    if (i10 > 0) {
                        charArrayBuffer.append(cArr);
                    }
                    charArrayBuffer.append(strArr[i10]).append(C15883c.f126249O).append(strArr2[i10]);
                }
                charArrayBuffer.append(')');
                this.fParameterList = charArrayBuffer.getContents();
            }
        }
        fragment();
    }

    @Override
    public void setReturnType(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.dom_nullReturnType);
        }
        becomeDetailed();
        fragment();
        setReturnTypeAltered(true);
        this.fReturnType = str;
    }

    public void setReturnTypeAltered(boolean z10) {
        setMask(1024, z10);
    }

    @Override
    public void setSourceRangeEnd(int i10) {
        super.setSourceRangeEnd(i10);
        this.fBodyRange[1] = i10;
    }

    @Override
    public void setTypeParameters(String[] strArr) {
        this.fTypeParameters = strArr;
    }

    @Override
    public void shareContents(DOMNode dOMNode) {
        super.shareContents(dOMNode);
        DOMMethod dOMMethod = (DOMMethod) dOMNode;
        this.fBody = dOMMethod.fBody;
        this.fBodyRange = rangeCopy(dOMMethod.fBodyRange);
        this.fExceptionList = dOMMethod.fExceptionList;
        this.fExceptionRange = rangeCopy(dOMMethod.fExceptionRange);
        this.fExceptions = dOMMethod.fExceptions;
        this.fParameterList = dOMMethod.fParameterList;
        this.fParameterNames = dOMMethod.fParameterNames;
        this.fParameterRange = rangeCopy(dOMMethod.fParameterRange);
        this.fParameterTypes = dOMMethod.fParameterTypes;
        this.fReturnType = dOMMethod.fReturnType;
        this.fReturnTypeRange = rangeCopy(dOMMethod.fReturnTypeRange);
    }

    @Override
    public String toString() {
        if (isConstructor()) {
            return "CONSTRUCTOR";
        }
        return "METHOD: " + getName();
    }

    public DOMMethod(char[] cArr, int[] iArr, String str, int[] iArr2, int[] iArr3, int i10, int[] iArr4, boolean z10, String str2, int[] iArr5, String[] strArr, String[] strArr2, int[] iArr6, String[] strArr3, int[] iArr7, int[] iArr8) {
        super(cArr, iArr, str, iArr2, iArr3, i10, iArr4);
        this.fTypeParameters = CharOperation.NO_STRINGS;
        this.fDefaultValue = null;
        setMask(64, z10);
        this.fReturnType = str2;
        this.fReturnTypeRange = iArr5;
        this.fParameterTypes = strArr;
        this.fParameterNames = strArr2;
        this.fParameterRange = iArr6;
        this.fExceptionRange = iArr7;
        this.fExceptions = strArr3;
        setHasBody(true);
        this.fBodyRange = iArr8;
        setMask(2048, true);
    }

    public DOMMethod(char[] cArr, int[] iArr, String str, int[] iArr2, int i10, boolean z10, String str2, String[] strArr, String[] strArr2, String[] strArr3) {
        this(cArr, iArr, str, iArr2, new int[]{-1, -1}, i10, new int[]{-1, -1}, z10, str2, new int[]{-1, -1}, strArr, strArr2, new int[]{-1, -1}, strArr3, new int[]{-1, -1}, new int[]{-1, -1});
        setMask(2048, false);
    }
}
