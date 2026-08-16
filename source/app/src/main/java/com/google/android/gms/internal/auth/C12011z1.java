package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.B1;
import com.google.android.gms.internal.auth.C12011z1;

public class C12011z1<MessageType extends B1<MessageType, BuilderType>, BuilderType extends C12011z1<MessageType, BuilderType>> extends U0<MessageType, BuilderType> {

    public final B1 f61880b;

    public B1 f61881c;

    public C12011z1(MessageType messagetype) {
        this.f61880b = messagetype;
        if (messagetype.l()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f61881c = messagetype.c();
    }

    @Override
    public final InterfaceC11925d2 R1() {
        throw null;
    }

    @Override
    public final C12011z1 clone() {
        C12011z1 c12011z1 = (C12011z1) this.f61880b.m(5, null, null);
        c12011z1.f61881c = Q1();
        return c12011z1;
    }

    @Override
    public MessageType Q1() {
        if (!this.f61881c.l()) {
            return (MessageType) this.f61881c;
        }
        this.f61881c.h();
        return (MessageType) this.f61881c;
    }
}
