package com.tonyodev.fetch2.exception;

import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public class FetchException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchException(@NotNull String message) {
        super(message);
        M.p(message, "message");
    }
}
