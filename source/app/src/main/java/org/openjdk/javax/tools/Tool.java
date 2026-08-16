package org.openjdk.javax.tools;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Set;
import org.openjdk.javax.lang.model.SourceVersion;

public interface Tool {
    Set<SourceVersion> getSourceVersions();

    default String name() {
        return "";
    }

    int run(InputStream inputStream, OutputStream outputStream, OutputStream outputStream2, String... strArr);
}
