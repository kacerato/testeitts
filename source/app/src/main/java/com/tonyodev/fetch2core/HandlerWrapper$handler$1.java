package com.tonyodev.fetch2core;

import Mf.a;
import android.os.Handler;
import android.os.HandlerThread;
import kotlin.jvm.internal.O;
import org.jetbrains.annotations.NotNull;

public final class HandlerWrapper$handler$1 extends O implements a<Handler> {
    final HandlerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerWrapper$handler$1(HandlerWrapper handlerWrapper) {
        super(0);
        this.this$0 = handlerWrapper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @NotNull
    public final Handler invoke() {
        HandlerThread handlerThread = new HandlerThread(this.this$0.getNamespace());
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }
}
