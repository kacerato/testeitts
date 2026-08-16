package com.android.tools.r8.diagnostic;

import com.android.tools.r8.Diagnostic;
import java.util.Collection;

public interface MissingDefinitionsDiagnostic extends Diagnostic {
    Collection<MissingDefinitionInfo> getMissingDefinitions();
}
