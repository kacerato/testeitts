package com.google.ai.edge.litertlm;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class ToolException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToolException(@NotNull String message, @Nullable Throwable cause) {
        super(message, cause);
        M.p(message, "message");
    }

    public ToolException(String str, Throwable th2, int i10, C14026x c14026x) {
        this(str, (i10 & 2) != 0 ? null : th2);
    }
}
