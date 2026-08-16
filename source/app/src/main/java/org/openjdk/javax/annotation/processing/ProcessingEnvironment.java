package org.openjdk.javax.annotation.processing;

import java.util.Locale;
import java.util.Map;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.Types;

public interface ProcessingEnvironment {
    Elements getElementUtils();

    Filer getFiler();

    Locale getLocale();

    Messager getMessager();

    Map<String, String> getOptions();

    SourceVersion getSourceVersion();

    Types getTypeUtils();
}
