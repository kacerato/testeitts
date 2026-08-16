package org.eclipse.jdt.internal.compiler.env;

import java.util.Arrays;
import org.eclipse.jdt.core.compiler.CharOperation;

public class EnumConstantSignature {
    char[] constName;
    char[] typeName;

    public EnumConstantSignature(char[] cArr, char[] cArr2) {
        this.typeName = cArr;
        this.constName = cArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EnumConstantSignature enumConstantSignature = (EnumConstantSignature) obj;
        if (Arrays.equals(this.constName, enumConstantSignature.constName)) {
            return Arrays.equals(this.typeName, enumConstantSignature.typeName);
        }
        return false;
    }

    public char[] getEnumConstantName() {
        return this.constName;
    }

    public char[] getTypeName() {
        return this.typeName;
    }

    public int hashCode() {
        return ((CharOperation.hashCode(this.constName) + 31) * 31) + CharOperation.hashCode(this.typeName);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.typeName);
        stringBuffer.append('.');
        stringBuffer.append(this.constName);
        return stringBuffer.toString();
    }
}
