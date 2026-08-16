package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.ClassReference;
import java.util.Collection;

public interface ClassConflictResolver {
    Origin resolveDuplicateClass(ClassReference classReference, Collection<Origin> collection, DiagnosticsHandler diagnosticsHandler);
}
