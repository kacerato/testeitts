package com.android.tools.r8.internal;

import java.util.Map;
import java.util.regex.Pattern;

public abstract class AbstractC8995pt extends AbstractC9162qt {
    @Override
    public final boolean a(C9328rt c9328rt) {
        for (Map.Entry entry : c9328rt.b().entrySet()) {
            String property = System.getProperty("com.android.tools.r8.dump.filter.buildproperty." + ((String) entry.getKey()));
            if (property != null && !Pattern.matches(property, (CharSequence) entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean d() {
        return true;
    }
}
