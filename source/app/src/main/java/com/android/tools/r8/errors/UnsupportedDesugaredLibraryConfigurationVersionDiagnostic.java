package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class UnsupportedDesugaredLibraryConfigurationVersionDiagnostic implements Diagnostic {

    private final Origin f36083b;

    public UnsupportedDesugaredLibraryConfigurationVersionDiagnostic(Origin origin) {
        this.f36083b = origin;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Unsupported desugared library configuration version, please upgrade the D8/R8 compiler. See https://developer.android.com/studio/build/library-desugaring-versions. To learn more about library desugaring read https://developer.android.com/studio/build/library-desugaring.";
    }

    @Override
    public Origin getOrigin() {
        return this.f36083b;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
