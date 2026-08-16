package org.eclipse.jdt.internal.compiler.codegen;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class VerificationTypeInfo {
    public static final int ITEM_DOUBLE = 3;
    public static final int ITEM_FLOAT = 2;
    public static final int ITEM_INTEGER = 1;
    public static final int ITEM_LONG = 4;
    public static final int ITEM_NULL = 5;
    public static final int ITEM_OBJECT = 7;
    public static final int ITEM_TOP = 0;
    public static final int ITEM_UNINITIALIZED = 8;
    public static final int ITEM_UNINITIALIZED_THIS = 6;
    private char[] constantPoolName;

    private int f102479id;
    public int offset;
    public int tag;

    private VerificationTypeInfo() {
    }

    public char[] constantPoolName() {
        return this.constantPoolName;
    }

    public VerificationTypeInfo duplicate() {
        VerificationTypeInfo verificationTypeInfo = new VerificationTypeInfo();
        verificationTypeInfo.f102479id = this.f102479id;
        verificationTypeInfo.tag = this.tag;
        verificationTypeInfo.constantPoolName = this.constantPoolName;
        verificationTypeInfo.offset = this.offset;
        return verificationTypeInfo;
    }

    public boolean equals(Object obj) {
        if (obj instanceof VerificationTypeInfo) {
            VerificationTypeInfo verificationTypeInfo = (VerificationTypeInfo) obj;
            if (verificationTypeInfo.tag == this.tag && CharOperation.equals(verificationTypeInfo.constantPoolName(), constantPoolName())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.tag + this.f102479id + this.constantPoolName.length + this.offset;
    }

    public int id() {
        return this.f102479id;
    }

    public char[] readableName() {
        return this.constantPoolName;
    }

    public void replaceWithElementType() {
        char[] cArr = this.constantPoolName;
        if (cArr[1] == 'L') {
            this.constantPoolName = CharOperation.subarray(cArr, 2, cArr.length - 1);
            return;
        }
        char[] subarray = CharOperation.subarray(cArr, 1, cArr.length);
        this.constantPoolName = subarray;
        if (subarray.length == 1) {
            char c10 = subarray[0];
            if (c10 == 'F') {
                this.f102479id = 9;
                return;
            }
            if (c10 == 'N') {
                this.f102479id = 12;
                return;
            }
            if (c10 == 'S') {
                this.f102479id = 4;
                return;
            }
            if (c10 == 'V') {
                this.f102479id = 6;
                return;
            }
            if (c10 == 'Z') {
                this.f102479id = 5;
                return;
            }
            if (c10 == 'I') {
                this.f102479id = 10;
                return;
            }
            if (c10 == 'J') {
                this.f102479id = 7;
                return;
            }
            switch (c10) {
                case 'B':
                    this.f102479id = 3;
                    return;
                case 'C':
                    this.f102479id = 2;
                    return;
                case 'D':
                    this.f102479id = 8;
                    return;
                default:
                    return;
            }
        }
    }

    public void setBinding(TypeBinding typeBinding) {
        this.constantPoolName = typeBinding.constantPoolName();
        int i10 = typeBinding.f102482id;
        this.f102479id = i10;
        switch (i10) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                this.tag = 1;
                return;
            case 6:
            case 11:
            default:
                this.tag = 7;
                return;
            case 7:
                this.tag = 4;
                return;
            case 8:
                this.tag = 3;
                return;
            case 9:
                this.tag = 2;
                return;
            case 12:
                this.tag = 5;
                return;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        switch (this.tag) {
            case 0:
                stringBuffer.append("top");
                break;
            case 1:
                stringBuffer.append('I');
                break;
            case 2:
                stringBuffer.append('F');
                break;
            case 3:
                stringBuffer.append('D');
                break;
            case 4:
                stringBuffer.append('J');
                break;
            case 5:
                stringBuffer.append("null");
                break;
            case 6:
                stringBuffer.append("uninitialized_this(");
                stringBuffer.append(readableName());
                stringBuffer.append(")");
                break;
            case 7:
                stringBuffer.append(readableName());
                break;
            case 8:
                stringBuffer.append("uninitialized(");
                stringBuffer.append(readableName());
                stringBuffer.append(")");
                break;
        }
        return String.valueOf(stringBuffer);
    }

    public VerificationTypeInfo(int i10, char[] cArr) {
        this(i10, 7, cArr);
    }

    public VerificationTypeInfo(int i10, int i11, char[] cArr) {
        this.f102479id = i10;
        this.tag = i11;
        this.constantPoolName = cArr;
    }

    public VerificationTypeInfo(int i10, TypeBinding typeBinding) {
        this(typeBinding);
        this.tag = i10;
    }

    public VerificationTypeInfo(TypeBinding typeBinding) {
        int i10 = typeBinding.f102482id;
        this.f102479id = i10;
        switch (i10) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                this.tag = 1;
                return;
            case 6:
            case 11:
            default:
                this.tag = 7;
                this.constantPoolName = typeBinding.constantPoolName();
                return;
            case 7:
                this.tag = 4;
                return;
            case 8:
                this.tag = 3;
                return;
            case 9:
                this.tag = 2;
                return;
            case 12:
                this.tag = 5;
                return;
        }
    }
}
