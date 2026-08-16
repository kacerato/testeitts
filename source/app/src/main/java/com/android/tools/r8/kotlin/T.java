package com.android.tools.r8.kotlin;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.io.PrintWriter;
import java.io.StringWriter;

public final class T implements Diagnostic {

    public final Origin f55174b;

    public final Position f55175c;

    public final String f55176d;

    public T(Origin origin, Position position, String str) {
        this.f55174b = origin;
        this.f55175c = position;
        this.f55176d = str;
    }

    public static T a(com.android.tools.r8.graph.H2 h22, String str) {
        return new T(h22.f36244d, Position.UNKNOWN, "The companion object " + str + " could not be found in class " + h22.b1());
    }

    @Override
    public final String getDiagnosticMessage() {
        return this.f55176d;
    }

    @Override
    public final Origin getOrigin() {
        return this.f55174b;
    }

    @Override
    public final Position getPosition() {
        return this.f55175c;
    }

    public static T a(String str) {
        return new T(Origin.unknown(), Position.UNKNOWN, "The classifier " + str + " is unknown and cannot be parsed");
    }

    public static T a(com.android.tools.r8.graph.M2 m22, Throwable th2) {
        Origin unknown = Origin.unknown();
        Position position = Position.UNKNOWN;
        String j02 = m22.j0();
        String str = C10656zq0.f54547c;
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        return new T(unknown, position, "Unexpected error during rewriting of Kotlin metadata for class '" + j02 + "':" + str + stringWriter.toString());
    }
}
