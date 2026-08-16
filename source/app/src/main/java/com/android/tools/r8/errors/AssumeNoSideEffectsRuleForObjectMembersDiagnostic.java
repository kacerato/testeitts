package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C7598hX;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.MethodReference;
import java.util.ArrayList;
import java.util.Iterator;

public class AssumeNoSideEffectsRuleForObjectMembersDiagnostic implements Diagnostic {

    private final ArrayList f36024b;

    private final Origin f36025c;

    private final Position f36026d;

    @Override
    public String getDiagnosticMessage() {
        Iterator it = this.f36024b.iterator();
        StringBuilder sb2 = new StringBuilder("The -assumenosideeffects rule matches the following method(s) on java.lang.Object: ");
        sb2.append(C7598hX.a((MethodReference) it.next(), false, false));
        while (it.hasNext()) {
            MethodReference methodReference = (MethodReference) it.next();
            sb2.append(it.hasNext() ? ", " : " and ");
            sb2.append(C7598hX.a(methodReference, false, false));
        }
        sb2.append(". This is most likely not intended. Consider specifying the methods more precisely.");
        return sb2.toString();
    }

    @Override
    public Origin getOrigin() {
        return this.f36025c;
    }

    @Override
    public Position getPosition() {
        return this.f36026d;
    }

    private AssumeNoSideEffectsRuleForObjectMembersDiagnostic(ArrayList arrayList, Origin origin, Position position) {
        this.f36024b = arrayList;
        this.f36025c = origin;
        this.f36026d = position;
    }
}
