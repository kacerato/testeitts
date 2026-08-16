package com.android.tools.r8.internal;

import java.io.EOFException;
import java.io.IOException;

public abstract class AbstractC6325Zo0 {
    public static AbstractC6907dL a(C8240lL c8240lL) {
        boolean z10;
        try {
            try {
                c8240lL.u();
                z10 = false;
                try {
                    return (AbstractC6907dL) AbstractC8164ku0.f49834z.a(c8240lL);
                } catch (EOFException e10) {
                    e = e10;
                    if (z10) {
                        return C7240fL.f47942b;
                    }
                    throw new C8407mL(e);
                }
            } catch (EOFException e11) {
                e = e11;
                z10 = true;
            }
        } catch (GU e12) {
            throw new C8407mL(e12);
        } catch (IOException e13) {
            throw new C7073eL(e13);
        } catch (NumberFormatException e14) {
            throw new C8407mL(e14);
        }
    }
}
