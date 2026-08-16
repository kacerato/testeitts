package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;

public final class C9708u8 {

    public static final C9708u8 f52785b = new C9708u8(Collections.EMPTY_MAP);

    public static final boolean f52786c = true;

    public final Map f52787a;

    public C9708u8(Map map) {
        if (!f52786c && !map.values().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.isNull((C9374s8) obj);
            }
        })) {
            throw new AssertionError();
        }
        this.f52787a = map;
    }
}
