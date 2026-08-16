package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public interface Diagnostic {
    String getDiagnosticMessage();

    Origin getOrigin();

    Position getPosition();
}
