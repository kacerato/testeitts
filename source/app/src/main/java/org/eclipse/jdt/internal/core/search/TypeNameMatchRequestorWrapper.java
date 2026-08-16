package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.TypeNameMatchRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;

public class TypeNameMatchRequestorWrapper extends NameMatchRequestorWrapper implements IRestrictedAccessTypeRequestor {
    TypeNameMatchRequestor requestor;

    public TypeNameMatchRequestorWrapper(TypeNameMatchRequestor typeNameMatchRequestor, IJavaSearchScope iJavaSearchScope) {
        super(iJavaSearchScope);
        this.requestor = typeNameMatchRequestor;
    }

    public void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str, AccessRestriction accessRestriction) {
        IType type = getType(i10, cArr, cArr2, cArr3, str, accessRestriction);
        if (type != null) {
            IJavaSearchScope iJavaSearchScope = this.scope;
            if (!(iJavaSearchScope instanceof HierarchyScope) || ((HierarchyScope) iJavaSearchScope).enclosesFineGrained(type)) {
                JavaSearchTypeNameMatch javaSearchTypeNameMatch = new JavaSearchTypeNameMatch(type, i10);
                if (accessRestriction != null) {
                    int problemId = accessRestriction.getProblemId();
                    if (problemId == 16777496) {
                        javaSearchTypeNameMatch.setAccessibility(2);
                    } else if (problemId == 16777523) {
                        javaSearchTypeNameMatch.setAccessibility(1);
                    }
                }
                this.requestor.acceptTypeNameMatch(javaSearchTypeNameMatch);
            }
        }
    }
}
