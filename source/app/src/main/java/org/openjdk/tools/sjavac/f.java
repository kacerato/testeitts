package org.openjdk.tools.sjavac;

import java.util.function.Consumer;

public final class f implements Consumer {
    @Override
    public final void accept(Object obj) {
        Log.error((String) obj);
    }
}
