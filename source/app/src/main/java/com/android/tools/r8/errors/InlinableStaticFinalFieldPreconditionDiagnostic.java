package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5244Gw;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.shaking.G3;
import java.util.Collection;
import java.util.List;
import java.util.function.Function;

public class InlinableStaticFinalFieldPreconditionDiagnostic implements Diagnostic {

    private final G3 f36058b;

    private final List f36059c;

    public InlinableStaticFinalFieldPreconditionDiagnostic(G3 g32, List<C4554l1> list) {
        this.f36058b = g32;
        this.f36059c = AT.a((Collection) list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4554l1) obj).v0();
            }
        });
    }

    @Override
    public String getDiagnosticMessage() {
        return C10656zq0.b("Rule precondition matches static final fields javac has inlined.", "Such rules are unsound as the shrinker cannot infer the inlining precisely.", "Consider adding !static to the rule.", "Matched fields are: ") + C10656zq0.a((Collection) AT.a((Collection) this.f36059c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5244Gw.a((FieldReference) obj);
            }
        }));
    }

    @Override
    public Origin getOrigin() {
        return this.f36058b.i();
    }

    @Override
    public Position getPosition() {
        return this.f36058b.f57278b;
    }
}
