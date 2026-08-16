package com.android.tools.r8.graph;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.R3;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public final class C4349a4 implements Diagnostic {

    public final Origin f37044b;

    public final Position f37045c;

    public final String f37046d;

    public C4349a4(Origin origin, Position position, String str) {
        this.f37044b = origin;
        this.f37045c = position;
        this.f37046d = str;
    }

    public static C4349a4 a(String str, String str2, String str3, Origin origin, R3.a aVar) {
        String str4;
        String lineSeparator = System.lineSeparator();
        aVar.getClass();
        int i10 = O3.f36676a[aVar.ordinal()];
        if (i10 == 1) {
            str4 = "The applied generic arguments have different count than the expected formals";
        } else if (i10 == 2) {
            str4 = "The generic signature has a different number of interfaces than the class";
        } else if (i10 == 3) {
            str4 = "The generic super type is not the same as the class super type";
        } else {
            if (i10 != 4) {
                if (R3.a.f36770h || aVar == R3.a.f36768f) {
                    throw new C5417Jv0("Should not throw an error for a valid signature");
                }
                throw new AssertionError();
            }
            str4 = "A type variable is not in scope";
        }
        return new C4349a4(origin, Position.UNKNOWN, "Invalid signature '" + str + "' for " + str2 + " " + str3 + "." + lineSeparator + "Validation error: " + str4 + "." + System.lineSeparator() + "Signature is ignored and will not be present in the output.");
    }

    @Override
    public final String getDiagnosticMessage() {
        return this.f37046d;
    }

    @Override
    public final Origin getOrigin() {
        return this.f37044b;
    }

    @Override
    public final Position getPosition() {
        return this.f37045c;
    }
}
