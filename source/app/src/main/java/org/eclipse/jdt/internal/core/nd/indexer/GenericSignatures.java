package org.eclipse.jdt.internal.core.nd.indexer;

import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;

public class GenericSignatures {
    private static final char[][] EMPTY_CHAR_ARRAY_ARRAY = new char[0];

    public static SignatureWrapper getGenericSignature(IBinaryMethod iBinaryMethod) {
        char[] genericSignature = iBinaryMethod.getGenericSignature();
        if (genericSignature == null) {
            genericSignature = iBinaryMethod.getMethodDescriptor();
        }
        return new SignatureWrapper(genericSignature);
    }

    public static SignatureWrapper getGenericSignatureFor(IBinaryField iBinaryField) {
        char[] genericSignature = iBinaryField.getGenericSignature();
        if (genericSignature == null) {
            genericSignature = iBinaryField.getTypeName();
        }
        return new SignatureWrapper(genericSignature);
    }

    public static SignatureWrapper getGenericSignature(IBinaryType iBinaryType) {
        char[][] interfaceNames = iBinaryType.getInterfaceNames();
        if (interfaceNames == null) {
            interfaceNames = EMPTY_CHAR_ARRAY_ARRAY;
        }
        char[] genericSignature = iBinaryType.getGenericSignature();
        if (genericSignature == null) {
            int i10 = iBinaryType.getSuperclassName() != null ? 3 : 0;
            char[][] cArr = new char[(interfaceNames.length * 3) + i10];
            char[] cArr2 = new char[1];
            cArr2[0] = 'L';
            char[] cArr3 = new char[1];
            cArr3[0] = ';';
            if (iBinaryType.getSuperclassName() != null) {
                cArr[0] = cArr2;
                cArr[1] = iBinaryType.getSuperclassName();
                cArr[2] = cArr3;
            }
            for (int i11 = 0; i11 < interfaceNames.length; i11++) {
                int i12 = (i11 * 3) + i10;
                cArr[i12] = cArr2;
                cArr[i12 + 1] = interfaceNames[i11];
                cArr[i12 + 2] = cArr3;
            }
            genericSignature = CharArrayUtils.concat(cArr);
        }
        return new SignatureWrapper(genericSignature);
    }
}
