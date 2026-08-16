package com.android.tools.r8.retrace;

import java.util.List;
import java.util.function.Consumer;

public interface RetraceStackFrameResult<T> {
    void forEach(Consumer<T> consumer);

    T get(int i10);

    List<T> getResult();

    boolean isEmpty();

    int size();
}
