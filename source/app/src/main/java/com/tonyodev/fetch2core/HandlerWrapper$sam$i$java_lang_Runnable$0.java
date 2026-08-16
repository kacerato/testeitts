package com.tonyodev.fetch2core;

import Mf.a;
import kotlin.jvm.internal.M;

public final class HandlerWrapper$sam$i$java_lang_Runnable$0 implements Runnable {
    private final a function;

    public HandlerWrapper$sam$i$java_lang_Runnable$0(a aVar) {
        this.function = aVar;
    }

    @Override
    public final void run() {
        M.h(this.function.invoke(), "invoke(...)");
    }
}
