package org.openjdk.javax.tools;

import java.util.Objects;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;

public interface JavaFileObject extends FileObject {

    public enum Kind {
        SOURCE(".java"),
        CLASS(".class"),
        HTML(JavadocConstants.HTML_EXTENSION),
        OTHER("");

        public final String extension;

        Kind(String str) {
            Objects.requireNonNull(str);
            this.extension = str;
        }
    }

    Modifier getAccessLevel();

    Kind getKind();

    NestingKind getNestingKind();

    boolean isNameCompatible(String str, Kind kind);
}
