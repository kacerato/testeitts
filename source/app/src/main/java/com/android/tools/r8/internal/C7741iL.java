package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.StringReader;

public final class C7741iL {
    public static AbstractC6907dL a(String str) {
        try {
            C8240lL c8240lL = new C8240lL(new StringReader(str));
            AbstractC6907dL a10 = a(c8240lL);
            a10.getClass();
            if (!(a10 instanceof C7240fL) && c8240lL.u() != 10) {
                throw new C8407mL("Did not consume the entire document.");
            }
            return a10;
        } catch (GU e10) {
            throw new C8407mL(e10);
        } catch (IOException e11) {
            throw new C7073eL(e11);
        } catch (NumberFormatException e12) {
            throw new C8407mL(e12);
        }
    }

    public static AbstractC6907dL a(C8240lL c8240lL) {
        boolean z10 = c8240lL.f49939b;
        c8240lL.f49939b = true;
        try {
            try {
                try {
                    return AbstractC6325Zo0.a(c8240lL);
                } catch (StackOverflowError e10) {
                    throw new C7574hL("Failed parsing JSON source: " + ((Object) c8240lL) + " to Json", e10);
                }
            } catch (OutOfMemoryError e11) {
                throw new C7574hL("Failed parsing JSON source: " + ((Object) c8240lL) + " to Json", e11);
            }
        } finally {
            c8240lL.f49939b = z10;
        }
    }
}
