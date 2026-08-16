package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToIntArray;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class JavadocContents {
    private static final int[] UNKNOWN_FORMAT = new int[0];
    private int childrenStart;
    private char[] content;
    private int[] fieldAnchorIndexes;
    private int fieldAnchorIndexesCount;
    private HashtableOfObjectToIntArray fieldDocRanges;
    private int fieldLastAnchorFoundIndex;
    private boolean hasComputedChildrenSections;
    private int indexOfAllMethodsBottom;
    private int indexOfAllMethodsTop;
    private int indexOfConstructorDetails;
    private int indexOfEndOfClassData;
    private int indexOfFieldDetails;
    private int indexOfFieldsBottom;
    private int indexOfMethodDetails;
    private int[] methodAnchorIndexes;
    private int methodAnchorIndexesCount;
    private HashtableOfObjectToIntArray methodDocRanges;
    private int methodLastAnchorFoundIndex;
    private int[] tempAnchorIndexes;
    private int tempAnchorIndexesCount;
    private int tempLastAnchorFoundIndex;
    private BinaryType type;
    private int[] typeDocRange;
    private int[] unknownFormatAnchorIndexes;
    private int unknownFormatAnchorIndexesCount;
    private int unknownFormatLastAnchorFoundIndex;

    public JavadocContents(BinaryType binaryType, String str) {
        this(str);
        this.type = binaryType;
    }

    private int[] computeChildRange(char[] cArr, int i10) throws JavaModelException {
        if (this.tempAnchorIndexesCount > 0) {
            for (int i11 = 0; i11 < this.tempAnchorIndexesCount; i11++) {
                int i12 = this.tempAnchorIndexes[i11];
                if (i12 != -1 && CharOperation.prefixEquals(cArr, this.content, false, i12)) {
                    this.tempAnchorIndexes[i11] = -1;
                    return computeChildRange(i12, cArr, i10);
                }
            }
        }
        int[] anchorIndex = getAnchorIndex(this.tempLastAnchorFoundIndex);
        while (true) {
            int i13 = anchorIndex[0];
            if (i13 == -1) {
                return null;
            }
            if (i13 >= i10 && i10 != -1) {
                return null;
            }
            int i14 = i13 + 1;
            int i15 = i13 + anchorIndex[1];
            this.tempLastAnchorFoundIndex = i15;
            if (CharOperation.prefixEquals(cArr, this.content, false, i15)) {
                return computeChildRange(i15, cArr, i10);
            }
            int[] iArr = this.tempAnchorIndexes;
            int length = iArr.length;
            int i16 = this.tempAnchorIndexesCount;
            if (length == i16) {
                int[] iArr2 = new int[i16 + 20];
                this.tempAnchorIndexes = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i16);
            }
            int[] iArr3 = this.tempAnchorIndexes;
            int i17 = this.tempAnchorIndexesCount;
            this.tempAnchorIndexesCount = i17 + 1;
            iArr3[i17] = i15;
            anchorIndex = getAnchorIndex(i14);
        }
    }

    private void computeChildrenSections() {
        int i10;
        int indexOf = CharOperation.indexOf(JavadocConstants.SEPARATOR_START, this.content, false, this.childrenStart);
        if (indexOf == -1) {
            indexOf = this.childrenStart;
        }
        int indexOf2 = CharOperation.indexOf(JavadocConstants.FIELD_DETAIL, this.content, false, indexOf);
        this.indexOfFieldDetails = indexOf2;
        if (indexOf2 != -1) {
            indexOf = indexOf2;
        }
        int indexOf3 = CharOperation.indexOf(JavadocConstants.CONSTRUCTOR_DETAIL, this.content, false, indexOf);
        this.indexOfConstructorDetails = indexOf3;
        if (indexOf3 != -1) {
            indexOf = indexOf3;
        }
        int indexOf4 = CharOperation.indexOf(JavadocConstants.METHOD_DETAIL, this.content, false, indexOf);
        this.indexOfMethodDetails = indexOf4;
        if (indexOf4 != -1) {
            indexOf = indexOf4;
        }
        int indexOf5 = CharOperation.indexOf(JavadocConstants.END_OF_CLASS_DATA, this.content, false, indexOf);
        this.indexOfEndOfClassData = indexOf5;
        int i11 = this.indexOfConstructorDetails;
        if (i11 != -1) {
            i10 = i11;
        } else {
            i10 = this.indexOfMethodDetails;
            if (i10 == -1) {
                i10 = indexOf5;
            }
        }
        this.indexOfFieldsBottom = i10;
        if (i11 == -1) {
            i11 = this.indexOfMethodDetails;
        }
        this.indexOfAllMethodsTop = i11;
        this.indexOfAllMethodsBottom = indexOf5;
        this.hasComputedChildrenSections = true;
    }

    private int[] computeFieldRange(IField iField) throws JavaModelException {
        if (!this.hasComputedChildrenSections) {
            computeChildrenSections();
        }
        StringBuffer stringBuffer = new StringBuffer(iField.getElementName());
        stringBuffer.append(JavadocConstants.ANCHOR_PREFIX_END);
        char[] charArray = String.valueOf(stringBuffer).toCharArray();
        if (this.indexOfFieldDetails == -1 || this.indexOfFieldsBottom == -1) {
            if (this.unknownFormatAnchorIndexes == null) {
                this.unknownFormatAnchorIndexes = new int[this.type.getChildren().length];
                this.unknownFormatAnchorIndexesCount = 0;
                this.unknownFormatLastAnchorFoundIndex = this.childrenStart;
            }
            this.tempAnchorIndexes = this.unknownFormatAnchorIndexes;
            this.tempAnchorIndexesCount = this.unknownFormatAnchorIndexesCount;
            this.tempLastAnchorFoundIndex = this.unknownFormatLastAnchorFoundIndex;
            int[] computeChildRange = computeChildRange(charArray, this.indexOfFieldsBottom);
            this.unknownFormatLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
            this.unknownFormatAnchorIndexesCount = this.tempAnchorIndexesCount;
            this.unknownFormatAnchorIndexes = this.tempAnchorIndexes;
            return computeChildRange;
        }
        if (this.fieldAnchorIndexes == null) {
            this.fieldAnchorIndexes = new int[this.type.getFields().length];
            this.fieldAnchorIndexesCount = 0;
            this.fieldLastAnchorFoundIndex = this.indexOfFieldDetails;
        }
        this.tempAnchorIndexes = this.fieldAnchorIndexes;
        this.tempAnchorIndexesCount = this.fieldAnchorIndexesCount;
        this.tempLastAnchorFoundIndex = this.fieldLastAnchorFoundIndex;
        int[] computeChildRange2 = computeChildRange(charArray, this.indexOfFieldsBottom);
        this.fieldLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
        this.fieldAnchorIndexesCount = this.tempAnchorIndexesCount;
        this.fieldAnchorIndexes = this.tempAnchorIndexes;
        return computeChildRange2;
    }

    private String computeMethodAnchorPrefixEnd(BinaryMethod binaryMethod) throws JavaModelException {
        String elementName;
        String signature;
        if (this.type.isMember()) {
            IMember iMember = this.type;
            StringBuffer stringBuffer = new StringBuffer();
            while (iMember != null) {
                stringBuffer.insert(0, iMember.getElementName());
                iMember = iMember.getDeclaringType();
                if (iMember != null) {
                    stringBuffer.insert(0, '.');
                }
            }
            elementName = stringBuffer.toString();
        } else {
            elementName = this.type.getElementName();
        }
        String elementName2 = binaryMethod.isConstructor() ? elementName : binaryMethod.getElementName();
        char[] genericSignature = ((IBinaryMethod) binaryMethod.getElementInfo()).getGenericSignature();
        if (genericSignature != null) {
            signature = Util.toAnchor(0, CharOperation.replaceOnCopy(genericSignature, '/', '.'), elementName2, Flags.isVarargs(binaryMethod.getFlags()));
            if (signature == null) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1009, binaryMethod));
            }
        } else {
            signature = Signature.toString(binaryMethod.getSignature().replace('/', '.'), elementName2, null, true, false, Flags.isVarargs(binaryMethod.getFlags()));
        }
        BinaryType binaryType = this.type;
        if (binaryType.isMember() && binaryMethod.isConstructor() && !Flags.isStatic(binaryType.getFlags())) {
            int indexOf = signature.indexOf(40);
            if (indexOf == -1) {
                return null;
            }
            int i10 = indexOf + 1;
            int indexOf2 = signature.indexOf(44, indexOf);
            signature = String.valueOf(signature.substring(0, i10)) + signature.substring(indexOf2 != -1 ? indexOf2 + 2 : signature.indexOf(41, indexOf));
        }
        return String.valueOf(signature) + JavadocConstants.ANCHOR_PREFIX_END;
    }

    private int[] computeMethodRange(IMethod iMethod) throws JavaModelException {
        int[] computeChildRange;
        if (!this.hasComputedChildrenSections) {
            computeChildrenSections();
        }
        char[] charArray = computeMethodAnchorPrefixEnd((BinaryMethod) iMethod).toCharArray();
        if (this.indexOfAllMethodsTop == -1 || this.indexOfAllMethodsBottom == -1) {
            if (this.unknownFormatAnchorIndexes == null) {
                this.unknownFormatAnchorIndexes = new int[this.type.getChildren().length];
                this.unknownFormatAnchorIndexesCount = 0;
                this.unknownFormatLastAnchorFoundIndex = this.childrenStart;
            }
            this.tempAnchorIndexes = this.unknownFormatAnchorIndexes;
            this.tempAnchorIndexesCount = this.unknownFormatAnchorIndexesCount;
            this.tempLastAnchorFoundIndex = this.unknownFormatLastAnchorFoundIndex;
            computeChildRange = computeChildRange(charArray, this.indexOfFieldsBottom);
            if (computeChildRange == null) {
                computeChildRange = computeChildRange(getJavadoc8Anchor(charArray), this.indexOfAllMethodsBottom);
            }
            this.unknownFormatLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
            this.unknownFormatAnchorIndexesCount = this.tempAnchorIndexesCount;
            this.unknownFormatAnchorIndexes = this.tempAnchorIndexes;
        } else {
            if (this.methodAnchorIndexes == null) {
                this.methodAnchorIndexes = new int[this.type.getFields().length];
                this.methodAnchorIndexesCount = 0;
                this.methodLastAnchorFoundIndex = this.indexOfAllMethodsTop;
            }
            this.tempAnchorIndexes = this.methodAnchorIndexes;
            this.tempAnchorIndexesCount = this.methodAnchorIndexesCount;
            this.tempLastAnchorFoundIndex = this.methodLastAnchorFoundIndex;
            computeChildRange = computeChildRange(charArray, this.indexOfAllMethodsBottom);
            if (computeChildRange == null) {
                computeChildRange = computeChildRange(getJavadoc8Anchor(charArray), this.indexOfAllMethodsBottom);
            }
            this.methodLastAnchorFoundIndex = this.tempLastAnchorFoundIndex;
            this.methodAnchorIndexesCount = this.tempAnchorIndexesCount;
            this.methodAnchorIndexes = this.tempAnchorIndexes;
        }
        return computeChildRange;
    }

    private void computeTypeRange() throws JavaModelException {
        int indexOf = CharOperation.indexOf(JavadocConstants.START_OF_CLASS_DATA, this.content, false);
        if (indexOf == -1) {
            this.typeDocRange = UNKNOWN_FORMAT;
            return;
        }
        int indexOf2 = CharOperation.indexOf(JavadocConstants.SEPARATOR_START, this.content, false, indexOf);
        if (indexOf2 == -1) {
            this.typeDocRange = UNKNOWN_FORMAT;
            return;
        }
        int indexOf3 = CharOperation.indexOf(JavadocConstants.NESTED_CLASS_SUMMARY, this.content, false, indexOf2);
        if (indexOf3 == -1 && this.type.isEnum()) {
            indexOf3 = CharOperation.indexOf(JavadocConstants.ENUM_CONSTANT_SUMMARY, this.content, false, indexOf2);
        }
        if (indexOf3 == -1 && this.type.isAnnotation() && (indexOf3 = CharOperation.indexOf(JavadocConstants.ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY, this.content, false, indexOf2)) == -1) {
            indexOf3 = CharOperation.indexOf(JavadocConstants.ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY, this.content, false, indexOf2);
        }
        if (indexOf3 == -1) {
            indexOf3 = CharOperation.indexOf(JavadocConstants.FIELD_SUMMARY, this.content, false, indexOf2);
        }
        if (indexOf3 == -1) {
            indexOf3 = CharOperation.indexOf(JavadocConstants.CONSTRUCTOR_SUMMARY, this.content, false, indexOf2);
        }
        if (indexOf3 == -1) {
            indexOf3 = CharOperation.indexOf(JavadocConstants.METHOD_SUMMARY, this.content, false, indexOf2);
        }
        if (indexOf3 == -1) {
            indexOf3 = CharOperation.indexOf(JavadocConstants.END_OF_CLASS_DATA, this.content, false, indexOf2);
        } else {
            this.childrenStart = indexOf3 + 1;
        }
        if (indexOf3 == -1) {
            this.typeDocRange = UNKNOWN_FORMAT;
            return;
        }
        int i10 = indexOf + JavadocConstants.START_OF_CLASS_DATA_LENGTH;
        int indexOf4 = CharOperation.indexOf(JavadocConstants.f102519P.toCharArray(), this.content, false, i10, indexOf3);
        int indexOf5 = CharOperation.indexOf(JavadocConstants.DIV_CLASS_BLOCK.toCharArray(), this.content, false, i10, indexOf3);
        if (indexOf4 == -1 || indexOf4 >= indexOf3) {
            indexOf4 = indexOf3;
        }
        if (indexOf5 == -1 || indexOf5 >= indexOf4) {
            indexOf5 = indexOf4;
        }
        if (indexOf5 != indexOf3) {
            i10 = indexOf5;
        }
        this.typeDocRange = new int[]{i10, indexOf3};
    }

    private int[] getAnchorIndex(int i10) {
        int indexOf = CharOperation.indexOf(JavadocConstants.ANCHOR_PREFIX_START, this.content, false, i10);
        if (indexOf != -1) {
            return new int[]{indexOf, JavadocConstants.ANCHOR_PREFIX_START_LENGTH};
        }
        if (indexOf == -1) {
            indexOf = CharOperation.indexOf(JavadocConstants.ANCHOR_PREFIX_START_2, this.content, false, i10);
        }
        return indexOf == -1 ? new int[]{-1, -1} : new int[]{indexOf, JavadocConstants.ANCHOR_PREFIX_START2_LENGTH};
    }

    private static char[] getJavadoc8Anchor(char[] cArr) {
        char[] cArr2 = new char[cArr.length];
        int i10 = 0;
        for (char c10 : cArr) {
            if (c10 != ' ') {
                if (c10 != ',') {
                    if (c10 == '[') {
                        int i11 = i10 + 1;
                        cArr2[i10] = ':';
                        i10 += 2;
                        cArr2[i11] = IIndexConstants.ANNOTATION_TYPE_SUFFIX;
                    } else if (c10 != ']') {
                        if (c10 != '(' && c10 != ')') {
                            cArr2[i10] = c10;
                            i10++;
                        }
                    }
                }
                cArr2[i10] = '-';
                i10++;
            }
        }
        return i10 != cArr.length ? CharOperation.subarray(cArr2, 0, i10) : cArr2;
    }

    public String getFieldDoc(IField iField) throws JavaModelException {
        int[] iArr;
        if (this.content == null) {
            return null;
        }
        synchronized (this) {
            try {
                HashtableOfObjectToIntArray hashtableOfObjectToIntArray = this.fieldDocRanges;
                if (hashtableOfObjectToIntArray == null) {
                    this.fieldDocRanges = new HashtableOfObjectToIntArray();
                    iArr = null;
                } else {
                    iArr = hashtableOfObjectToIntArray.get(iField);
                }
                if (iArr == null) {
                    iArr = computeFieldRange(iField);
                    this.fieldDocRanges.put(iField, iArr);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iArr == null) {
            return null;
        }
        if (iArr != UNKNOWN_FORMAT) {
            return String.valueOf(CharOperation.subarray(this.content, iArr[0], iArr[1]));
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1009, iField));
    }

    public String getMethodDoc(IMethod iMethod) throws JavaModelException {
        int[] iArr;
        if (this.content == null) {
            return null;
        }
        synchronized (this) {
            try {
                HashtableOfObjectToIntArray hashtableOfObjectToIntArray = this.methodDocRanges;
                if (hashtableOfObjectToIntArray == null) {
                    this.methodDocRanges = new HashtableOfObjectToIntArray();
                    iArr = null;
                } else {
                    iArr = hashtableOfObjectToIntArray.get(iMethod);
                }
                if (iArr == null) {
                    iArr = computeMethodRange(iMethod);
                    this.methodDocRanges.put(iMethod, iArr);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iArr == null) {
            return null;
        }
        if (iArr != UNKNOWN_FORMAT) {
            return String.valueOf(CharOperation.subarray(this.content, iArr[0], iArr[1]));
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1009, iMethod));
    }

    public String getModuleDoc() throws JavaModelException {
        int indexOf;
        char[] cArr = this.content;
        if (cArr == null || (indexOf = CharOperation.indexOf(JavadocConstants.MODULE_DESCRIPTION_START, cArr, false, 0)) == -1) {
            return null;
        }
        int indexOf2 = CharOperation.indexOf(JavadocConstants.BOTTOM_NAVBAR, this.content, false, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = this.content.length - 1;
        }
        return String.valueOf(CharOperation.subarray(this.content, indexOf, indexOf2));
    }

    public String getPackageDoc() throws JavaModelException {
        int indexOf;
        int indexOf2;
        char[] cArr = this.content;
        if (cArr == null) {
            return null;
        }
        int indexOf3 = CharOperation.indexOf(JavadocConstants.PACKAGE_DESCRIPTION_START2, cArr, false, 0);
        if (indexOf3 == -1) {
            indexOf3 = CharOperation.indexOf(JavadocConstants.PACKAGE_DESCRIPTION_START, this.content, false, 0);
        }
        if (indexOf3 != -1) {
            indexOf = CharOperation.indexOf(JavadocConstants.ANCHOR_SUFFIX, this.content, false, indexOf3);
            if (indexOf == -1) {
                return null;
            }
            int indexOf4 = CharOperation.indexOf(JavadocConstants.H2_PREFIX, this.content, false, indexOf);
            if (indexOf4 != -1 && (indexOf2 = CharOperation.indexOf(JavadocConstants.H2_SUFFIX, this.content, false, indexOf4)) != -1) {
                indexOf = JavadocConstants.H2_SUFFIX_LENGTH + indexOf2;
            }
        } else {
            indexOf = CharOperation.indexOf(JavadocConstants.PACKAGE_DESCRIPTION_START3, this.content, false, 0);
        }
        if (indexOf == -1) {
            return null;
        }
        int indexOf5 = CharOperation.indexOf(JavadocConstants.BOTTOM_NAVBAR, this.content, false, indexOf);
        if (indexOf5 == -1) {
            indexOf5 = this.content.length - 1;
        }
        int[] iArr = {indexOf, indexOf5};
        return String.valueOf(CharOperation.subarray(this.content, iArr[0], iArr[1]));
    }

    public String getTypeDoc() throws JavaModelException {
        if (this.content == null) {
            return null;
        }
        synchronized (this) {
            try {
                if (this.typeDocRange == null) {
                    computeTypeRange();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int[] iArr = this.typeDocRange;
        if (iArr == null) {
            return null;
        }
        if (iArr != UNKNOWN_FORMAT) {
            return String.valueOf(CharOperation.subarray(this.content, iArr[0], iArr[1]));
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1009, this.type));
    }

    public JavadocContents(String str) {
        this.hasComputedChildrenSections = false;
        this.content = str != null ? str.toCharArray() : null;
    }

    private int[] computeChildRange(int i10, char[] cArr, int i11) {
        if (i11 != -1) {
            int indexOf = CharOperation.indexOf(JavadocConstants.ANCHOR_SUFFIX, this.content, false, i10 + cArr.length);
            if (indexOf != -1) {
                int i12 = getAnchorIndex(indexOf)[0];
                int i13 = indexOf + JavadocConstants.ANCHOR_SUFFIX_LENGTH;
                if (i12 != -1) {
                    i11 = Math.min(i12, i11);
                }
                return new int[]{i13, i11};
            }
            return UNKNOWN_FORMAT;
        }
        return UNKNOWN_FORMAT;
    }
}
