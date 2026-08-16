package com.android.tools.r8.internal;

public final class C5735Ph implements InterfaceC10529z30 {

    public final Class f43336a;

    public C5735Ph(Class cls) {
        this.f43336a = cls;
    }

    @Override
    public final Object a() {
        try {
            return AbstractC6111Vv0.f45211a.a(this.f43336a);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to create instance of " + ((Object) this.f43336a) + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e10);
        }
    }
}
