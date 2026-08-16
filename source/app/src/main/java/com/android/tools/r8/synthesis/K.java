package com.android.tools.r8.synthesis;

import com.android.tools.r8.internal.C6072Vd;
import com.android.tools.r8.internal.C8874p8;
import com.android.tools.r8.internal.K4;
import com.android.tools.r8.synthesis.S;
import java.nio.charset.StandardCharsets;

public final class K extends K4 {

    public static final boolean f58093g = true;

    public final S.b f58094d;

    public final String f58095e;

    public final S f58096f;

    public K(S.b bVar, String str, S s10) {
        super("com.android.tools.r8.SynthesizedClassV2");
        this.f58094d = bVar;
        this.f58095e = str;
        this.f58096f = s10;
    }

    @Override
    public final K4 a(C6072Vd c6072Vd, int i10, int i11) {
        S.b bVar;
        short c10 = c6072Vd.c(i10);
        int c11 = c6072Vd.c(i10 + 2);
        int i12 = i10 + 4;
        byte[] bArr = new byte[c11];
        int i13 = 0;
        while (i13 < c11) {
            bArr[i13] = (byte) (c6072Vd.f45107b[i12] & 255);
            i13++;
            i12++;
        }
        if (!f58093g && c10 < 0) {
            throw new AssertionError();
        }
        S s10 = this.f58096f;
        if (c10 > 0) {
            if (c10 <= s10.f58172Y.size()) {
                bVar = (S.b) s10.f58172Y.get(c10 - 1);
                return new K(bVar, new String(bArr, StandardCharsets.UTF_8), this.f58096f);
            }
        } else {
            s10.getClass();
        }
        bVar = null;
        return new K(bVar, new String(bArr, StandardCharsets.UTF_8), this.f58096f);
    }

    @Override
    public final C8874p8 a() {
        int i10;
        if (!f58093g && ((i10 = this.f58094d.f58202b) < 0 || i10 > 32767)) {
            throw new AssertionError();
        }
        C8874p8 c8874p8 = new C8874p8();
        c8874p8.d(this.f58094d.f58202b);
        byte[] bytes = this.f58095e.getBytes(StandardCharsets.UTF_8);
        c8874p8.d(bytes.length);
        c8874p8.a(bytes, 0, bytes.length);
        return c8874p8;
    }
}
