package org.openjdk.tools.javac.file;

import java.nio.file.Path;
import java.nio.file.Paths;
import org.openjdk.javax.tools.StandardJavaFileManager;

public final class d implements StandardJavaFileManager.PathFactory {
    @Override
    public final Path getPath(String str, String[] strArr) {
        return Paths.get(str, strArr);
    }
}
