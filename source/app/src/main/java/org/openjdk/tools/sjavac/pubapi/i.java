package org.openjdk.tools.sjavac.pubapi;

import java.util.function.Function;

public final class i implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((PubApiTypeParam) obj).asString();
    }
}
