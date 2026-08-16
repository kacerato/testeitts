package org.openjdk.javax.annotation.processing;

import java.io.IOException;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;

public interface Filer {
    JavaFileObject createClassFile(CharSequence charSequence, Element... elementArr) throws IOException;

    FileObject createResource(JavaFileManager.Location location, CharSequence charSequence, CharSequence charSequence2, Element... elementArr) throws IOException;

    JavaFileObject createSourceFile(CharSequence charSequence, Element... elementArr) throws IOException;

    FileObject getResource(JavaFileManager.Location location, CharSequence charSequence, CharSequence charSequence2) throws IOException;
}
