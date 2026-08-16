package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class R3 extends R2 {

    public final I50 f43790c;

    public final Consumer f43791d;

    public final String f43792e;

    public final S3 f43793f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R3(S3 s32, I50 i50, I50 i502, Consumer consumer, String str) {
        super(i50);
        this.f43793f = s32;
        this.f43790c = i502;
        this.f43791d = consumer;
        this.f43792e = str;
    }

    @Override
    public final void a() {
        this.f43791d.accept(this.f43793f.f44074h);
    }

    public final InterfaceC10210x80 b() {
        final InterfaceC10210x80 interfaceC10210x80 = (InterfaceC10210x80) this.f43793f.f44073g.apply(this.f43790c);
        HashMap hashMap = this.f43793f.f53952b;
        Objects.requireNonNull(interfaceC10210x80);
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InterfaceC10210x80.this.a((String) obj, obj2);
            }
        });
        return interfaceC10210x80;
    }

    @Override
    public final void a(Object obj, String str) {
        InterfaceC10210x80 b10 = b();
        String str2 = this.f43792e;
        ArrayList arrayList = this.f43793f.f44074h;
        Objects.requireNonNull(arrayList);
        if (b10.a(str2, new HU0(arrayList), obj)) {
            return;
        }
        super.a(obj, this.f43792e);
        throw null;
    }

    @Override
    public final Q2 a(String str, String str2) {
        InterfaceC10210x80 b10 = b();
        String str3 = this.f43792e;
        ArrayList arrayList = this.f43793f.f44074h;
        Objects.requireNonNull(arrayList);
        Q2 a10 = b10.a(str3, (Consumer) new HU0(arrayList), str2);
        if (a10 != null) {
            return a10;
        }
        super.a(this.f43792e, str2);
        throw null;
    }

    @Override
    public final void a(String str, String str2, String str3) {
        InterfaceC10210x80 b10 = b();
        String str4 = this.f43792e;
        ArrayList arrayList = this.f43793f.f44074h;
        Objects.requireNonNull(arrayList);
        if (b10.a(str4, str2, str3, new HU0(arrayList))) {
            return;
        }
        super.a(this.f43792e, str2, str3);
        throw null;
    }

    @Override
    public final Q2 a(String str) {
        InterfaceC10210x80 b10 = b();
        String str2 = this.f43792e;
        ArrayList arrayList = this.f43793f.f44074h;
        Objects.requireNonNull(arrayList);
        Q2 a10 = b10.a(new HU0(arrayList), str2);
        if (a10 != null) {
            return a10;
        }
        super.a(this.f43792e);
        throw null;
    }
}
