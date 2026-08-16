package com.android.tools.r8.position;

import com.android.tools.r8.internal.C10037w60;

public interface Position {
    public static final Position UNKNOWN = new C10037w60();

    String getDescription();
}
