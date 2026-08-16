package com.android.tools.r8.inspector;

import com.android.tools.r8.references.ClassReference;
import java.util.function.Consumer;

public interface ClassInspector {
    void forEachField(Consumer<FieldInspector> consumer);

    void forEachMethod(Consumer<MethodInspector> consumer);

    ClassReference getClassReference();

    String getSourceFile();
}
