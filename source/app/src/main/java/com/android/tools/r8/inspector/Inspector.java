package com.android.tools.r8.inspector;

import java.util.function.Consumer;

public interface Inspector {
    void forEachClass(Consumer<ClassInspector> consumer);
}
