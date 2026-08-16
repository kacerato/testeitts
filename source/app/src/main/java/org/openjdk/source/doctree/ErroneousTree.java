package org.openjdk.source.doctree;

import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileObject;

public interface ErroneousTree extends TextTree {
    Diagnostic<JavaFileObject> getDiagnostic();
}
