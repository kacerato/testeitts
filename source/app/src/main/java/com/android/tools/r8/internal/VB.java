package com.android.tools.r8.internal;

import java.util.Collection;

public abstract class VB extends AbstractC8552nC implements InterfaceC7200f6 {
    @Override
    public final XB j() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public final XB values() {
        return f().keySet();
    }

    @Override
    public abstract VB f();

    @Override
    public final Collection values() {
        return f().keySet();
    }
}
