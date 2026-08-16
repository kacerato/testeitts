package com.android.tools.r8.profile.art.diagnostic;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class HumanReadableArtProfileParserErrorDiagnostic implements Diagnostic {

    private final String f56169b;

    private final int f56170c;

    private final Origin f56171d;

    public HumanReadableArtProfileParserErrorDiagnostic(String str, int i10, Origin origin) {
        this.f56169b = str;
        this.f56170c = i10;
        this.f56171d = origin;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Unable to parse rule at line " + this.f56170c + " from ART profile: " + this.f56169b;
    }

    @Override
    public Origin getOrigin() {
        return this.f56171d;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
