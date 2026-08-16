package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public final class JL implements InterfaceC10432yW {
    public static C6909dM a(OL ol2, C6676by0 c6676by0) {
        C6909dM c6909dM = C6909dM.f47376h;
        C6742cM c6742cM = new C6742cM();
        String a10 = ol2.a();
        c6676by0.getClass();
        GJ.c(a10, TypedValues.Custom.S_STRING);
        int a11 = c6676by0.f46917a.a(a10);
        c6742cM.f47023c |= 1;
        c6742cM.f47024d = a11;
        String str = ol2.f42858b;
        GJ.c(str, TypedValues.Custom.S_STRING);
        int a12 = c6676by0.f46917a.a(str);
        c6742cM.f47023c |= 2;
        c6742cM.f47025e = a12;
        C6909dM c10 = c6742cM.c();
        if (c10.isInitialized()) {
            return c10;
        }
        throw new C6834cv0();
    }
}
