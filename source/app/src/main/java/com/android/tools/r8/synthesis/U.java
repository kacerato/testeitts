package com.android.tools.r8.synthesis;

import android.hardware.Camera;
import com.android.tools.r8.internal.InterfaceC8212lA;
import java.nio.charset.StandardCharsets;
import java.util.logging.Logger;

public final class U extends T {

    public final boolean f58209e;

    public U(int i10, String str, boolean z10) {
        super(i10, str, false);
        this.f58209e = z10;
    }

    @Override
    public final void a(InterfaceC8212lA interfaceC8212lA) {
        com.android.tools.r8.internal.F f10 = (com.android.tools.r8.internal.F) interfaceC8212lA;
        f10.a((b().isEmpty() ? Logger.GLOBAL_LOGGER_NAME : Camera.Parameters.FOCUS_MODE_FIXED).toString().getBytes(StandardCharsets.UTF_8));
        f10.a(this.f58209e ? (byte) 1 : (byte) 0);
    }

    @Override
    public final boolean d() {
        return b().isEmpty();
    }

    @Override
    public final boolean e() {
        return this.f58209e;
    }

    @Override
    public final boolean f() {
        return false;
    }
}
