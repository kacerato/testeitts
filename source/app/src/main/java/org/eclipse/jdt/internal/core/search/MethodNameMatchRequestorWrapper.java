package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.MethodNameMatchRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;

public class MethodNameMatchRequestorWrapper extends NameMatchRequestorWrapper implements IRestrictedAccessMethodRequestor {
    MethodNameMatchRequestor requestor;

    public MethodNameMatchRequestorWrapper(MethodNameMatchRequestor methodNameMatchRequestor, IJavaSearchScope iJavaSearchScope) {
        super(iJavaSearchScope);
        this.requestor = methodNameMatchRequestor;
    }

    @Override
    public void acceptMethod(char[] cArr, int i10, char[] cArr2, char[] cArr3, int i11, char[] cArr4, char[] cArr5, char[][] cArr6, char[][] cArr7, char[] cArr8, int i12, String str, AccessRestriction accessRestriction, int i13) {
        IType type = getType(i11, cArr4, cArr3, (cArr2 == null || cArr2.length <= 0) ? CharOperation.NO_CHAR_CHAR : CharOperation.splitOn('.', cArr2), str, accessRestriction);
        if (type == null) {
            return;
        }
        IJavaSearchScope iJavaSearchScope = this.scope;
        if (!(iJavaSearchScope instanceof HierarchyScope) || ((HierarchyScope) iJavaSearchScope).enclosesFineGrained(type)) {
            char[][] cArr9 = cArr6 == null ? CharOperation.NO_CHAR_CHAR : cArr6;
            String[] strArr = CharOperation.NO_STRINGS;
            if (cArr5 != null) {
                char[][] parameterTypes = Signature.getParameterTypes(cArr5);
                if (parameterTypes.length > 0) {
                    for (char[] cArr10 : parameterTypes) {
                        CharOperation.replace(cArr10, '/', '.');
                    }
                }
                strArr = CharOperation.toStrings(parameterTypes);
            } else if (cArr9.length > 0) {
                int length = cArr9.length;
                String[] strArr2 = new String[length];
                for (int i14 = 0; i14 < length; i14++) {
                    strArr2[i14] = Signature.createTypeSignature(cArr9[i14], false);
                }
                strArr = strArr2;
            }
            this.requestor.acceptMethodNameMatch(new JavaSearchMethodNameMatch(type.getMethod(new String(cArr), strArr), i12));
        }
    }
}
