package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public abstract class UnsupportedFeatureDiagnostic implements Diagnostic {

    private final String f36084b;

    private final C2 f36085c;

    private final Origin f36086d;

    private final Position f36087e;

    public UnsupportedFeatureDiagnostic(String str, C2 c22, Origin origin, Position position) {
        this.f36084b = str;
        this.f36085c = c22;
        this.f36086d = origin;
        this.f36087e = position;
    }

    public static String makeMessage(C2 c22, String str, String str2) {
        String str3;
        if (c22 == null) {
            str3 = str + " are not supported at any API level known by the compiler";
        } else {
            str3 = str + " are only supported starting with " + c22.e() + " (--min-api " + c22.d() + ")";
        }
        if (str2 == null) {
            return str3;
        }
        return str3 + ": " + str2;
    }

    public String getFeatureDescriptor() {
        return this.f36084b;
    }

    @Override
    public Origin getOrigin() {
        return this.f36086d;
    }

    @Override
    public Position getPosition() {
        return this.f36087e;
    }

    public int getSupportedApiLevel() {
        C2 c22 = this.f36085c;
        if (c22 == null) {
            return -1;
        }
        return c22.d();
    }
}
