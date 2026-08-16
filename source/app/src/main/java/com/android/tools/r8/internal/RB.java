package com.android.tools.r8.internal;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.function.Function;

public class RB implements Diagnostic {

    public final com.android.tools.r8.graph.J2 f43840b;

    public final com.android.tools.r8.graph.H5 f43841c;

    public RB(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
        this.f43840b = d52.getReference();
        this.f43841c = h52;
    }

    public static String a(com.android.tools.r8.graph.M2 m22) {
        return "class";
    }

    @Override
    public final String getDiagnosticMessage() {
        return "Unexpected illegal access to non-public " + ((String) this.f43840b.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return RB.a((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return RB.a((C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return RB.a((com.android.tools.r8.graph.A2) obj);
            }
        })) + " in another feature split (accessed: " + this.f43840b.j0() + ", context: " + this.f43841c.r() + ").";
    }

    @Override
    public final Origin getOrigin() {
        return this.f43841c.f36317b.f36244d;
    }

    @Override
    public final Position getPosition() {
        return Position.UNKNOWN;
    }

    public static String a(C4554l1 c4554l1) {
        return "field";
    }

    public static String a(com.android.tools.r8.graph.A2 a22) {
        return "method";
    }
}
