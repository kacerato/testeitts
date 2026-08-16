package com.android.tools.r8.internal;

import java.util.Map;
import org.objectweb.asm.Opcodes;

public final class C8437ma extends DX {

    public final String f50330c;

    public final Map f50331d;

    public C8437ma(String str, Map map) {
        super(Opcodes.ASM9, null);
        this.f50330c = str;
        this.f50331d = map;
    }

    @Override
    public final void b(int i10, XQ xq) {
        this.f50331d.put(Integer.valueOf(i10), this.f50330c);
    }
}
