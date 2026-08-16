package com.google.android.gms.tasks;

import C0.a;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import v1.AbstractC15790k;
import v1.InterfaceC15784e;

@a
public class NativeOnCompleteListener implements InterfaceC15784e<Object> {

    public final long f63747a;

    @a
    public NativeOnCompleteListener(long j10) {
        this.f63747a = j10;
    }

    @a
    public static void b(@NonNull AbstractC15790k<Object> abstractC15790k, long j10) {
        abstractC15790k.f(new NativeOnCompleteListener(j10));
    }

    @Override
    @a
    public void a(@NonNull AbstractC15790k<Object> abstractC15790k) {
        Object obj;
        String str;
        Exception q10;
        if (abstractC15790k.v()) {
            obj = abstractC15790k.r();
            str = null;
        } else if (abstractC15790k.t() || (q10 = abstractC15790k.q()) == null) {
            obj = null;
            str = null;
        } else {
            str = q10.getMessage();
            obj = null;
        }
        nativeOnComplete(this.f63747a, obj, abstractC15790k.v(), abstractC15790k.t(), str);
    }

    @a
    public native void nativeOnComplete(long j10, @Nullable Object obj, boolean z10, boolean z11, @Nullable String str);
}
