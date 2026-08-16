package com.android.tools.r8.synthesis;

import com.android.tools.r8.internal.InterfaceC8212lA;
import com.android.tools.r8.synthesis.S;
import java.nio.charset.StandardCharsets;

public class T extends S.b {

    public final boolean f58206d;

    public T(int i10, String str, boolean z10) {
        super(i10, str);
        this.f58206d = z10;
    }

    @Override
    public void a(InterfaceC8212lA interfaceC8212lA) {
        com.android.tools.r8.internal.F f10 = (com.android.tools.r8.internal.F) interfaceC8212lA;
        f10.a("class".getBytes(StandardCharsets.UTF_8));
        f10.a(this.f58206d ? (byte) 1 : (byte) 0);
    }

    @Override
    public boolean c() {
        return this instanceof U;
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public boolean e() {
        return false;
    }

    @Override
    public boolean f() {
        return this.f58206d;
    }

    @Override
    public final boolean g() {
        return false;
    }
}
