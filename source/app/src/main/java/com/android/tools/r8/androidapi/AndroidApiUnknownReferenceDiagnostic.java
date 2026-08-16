package com.android.tools.r8.androidapi;

import com.android.tools.r8.graph.J2;
import com.android.tools.r8.internal.AbstractC10525z2;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class AndroidApiUnknownReferenceDiagnostic extends AbstractC10525z2 {

    private final J2 f35589b;

    public AndroidApiUnknownReferenceDiagnostic(J2 j22) {
        this.f35589b = j22;
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f35589b.j0() + " cannot be found in the api database.";
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
