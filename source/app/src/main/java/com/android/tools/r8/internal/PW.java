package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class PW extends ArrayList {

    public final QW f43249b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PW(QW qw) {
        super(0);
        this.f43249b = qw;
    }

    @Override
    public final boolean add(Object obj) {
        this.f43249b.f43604l = obj;
        return super.add(obj);
    }
}
