package com.google.ai.edge.litertlm;

import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class LiteRtLmJniException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiteRtLmJniException(@NotNull String message) {
        super(message);
        M.p(message, "message");
    }
}
