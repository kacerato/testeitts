package org.eclipse.jdt.core.index;

import java.io.IOException;
import org.eclipse.jdt.internal.core.search.indexing.DefaultJavaIndexer;

public final class JavaIndexer {
    public static void generateIndexForJar(String str, String str2) throws IOException {
        new DefaultJavaIndexer().generateIndexForJar(str, str2);
    }
}
