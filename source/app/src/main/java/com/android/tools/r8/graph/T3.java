package com.android.tools.r8.graph;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.lang.reflect.GenericSignatureFormatError;

public final class T3 implements Diagnostic {

    public final Origin f36822b;

    public final Position f36823c;

    public final String f36824d;

    public T3(Origin origin, Position position, String str) {
        this.f36822b = origin;
        this.f36823c = position;
        this.f36824d = str;
    }

    public static T3 a(String str, String str2, String str3, Origin origin, GenericSignatureFormatError genericSignatureFormatError) {
        return new T3(origin, Position.UNKNOWN, "Invalid signature '" + str + "' for " + str2 + " " + str3 + "." + System.lineSeparator() + "Signature is ignored and will not be present in the output." + System.lineSeparator() + "Parser error: " + genericSignatureFormatError.getMessage());
    }

    @Override
    public final String getDiagnosticMessage() {
        return this.f36824d;
    }

    @Override
    public final Origin getOrigin() {
        return this.f36822b;
    }

    @Override
    public final Position getPosition() {
        return this.f36823c;
    }
}
