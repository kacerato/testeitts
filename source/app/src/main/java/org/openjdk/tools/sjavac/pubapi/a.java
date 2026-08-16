package org.openjdk.tools.sjavac.pubapi;

import java.util.function.Function;

public final class a implements Function {
    @Override
    public final Object apply(Object obj) {
        return TypeDesc.encodeAsString((TypeDesc) obj);
    }
}
