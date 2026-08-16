package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.function.Consumer;

public abstract class LX {

    public static final IX f41973a = new IX();

    public static final JX f41974b = new JX();

    public static final KX f41975c = new KX();

    public final void a(Consumer consumer) {
        if (this instanceof JX) {
            consumer.accept(KeepSpecProtos.ModifierPattern.newBuilder().setValue(true));
        } else if (this instanceof KX) {
            consumer.accept(KeepSpecProtos.ModifierPattern.newBuilder().setValue(false));
        }
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }
}
