package org.eclipse.jdt.internal.compiler.classfmt;

import java.util.Arrays;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.core.JavaElement;

public class ElementValuePairInfo implements IBinaryElementValuePair {
    static final ElementValuePairInfo[] NoMembers = new ElementValuePairInfo[0];
    private char[] name;
    private Object value;

    public ElementValuePairInfo(char[] cArr, Object obj) {
        this.name = cArr;
        this.value = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ElementValuePairInfo elementValuePairInfo = (ElementValuePairInfo) obj;
        if (!Arrays.equals(this.name, elementValuePairInfo.name)) {
            return false;
        }
        Object obj2 = this.value;
        if (obj2 == null) {
            if (elementValuePairInfo.value != null) {
                return false;
            }
        } else if (!obj2.equals(elementValuePairInfo.value)) {
            return false;
        }
        return true;
    }

    @Override
    public char[] getName() {
        return this.name;
    }

    @Override
    public Object getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = (CharOperation.hashCode(this.name) + 31) * 31;
        Object obj = this.value;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.name);
        stringBuffer.append('=');
        Object obj = this.value;
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
            int length = objArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(objArr[i10]);
            }
            stringBuffer.append(JavaElement.JEM_ANNOTATION);
        } else {
            stringBuffer.append(obj);
        }
        return stringBuffer.toString();
    }
}
