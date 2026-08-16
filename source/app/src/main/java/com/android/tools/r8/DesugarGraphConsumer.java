package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;

public interface DesugarGraphConsumer {
    void accept(Origin origin, Origin origin2);

    default void acceptProgramNode(Origin origin) {
    }

    void finished();
}
