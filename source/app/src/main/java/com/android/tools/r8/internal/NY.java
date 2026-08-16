package com.android.tools.r8.internal;

import java.util.Comparator;

public final class NY implements Comparator {

    public static final NY f42630b = new NY();

    @Override
    public final int compare(Object obj, Object obj2) {
        return ((MY) obj2).a() - ((MY) obj).a();
    }
}
