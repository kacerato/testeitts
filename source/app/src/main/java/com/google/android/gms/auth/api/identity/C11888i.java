package com.google.android.gms.auth.api.identity;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import e1.C12981e;
import e1.C12987k;
import e1.C12996u;

public final class C11888i {
    @NonNull
    public static InterfaceC11880a a(@NonNull Activity activity) {
        return new C12981e((Activity) G0.A.r(activity), new p(null));
    }

    @NonNull
    public static InterfaceC11880a b(@NonNull Context context) {
        return new C12981e((Context) G0.A.r(context), new p(null));
    }

    @NonNull
    public static InterfaceC11885f c(@NonNull Activity activity) {
        return new C12987k((Activity) G0.A.r(activity), new z());
    }

    @NonNull
    public static InterfaceC11885f d(@NonNull Context context) {
        return new C12987k((Context) G0.A.r(context), new z());
    }

    @NonNull
    public static InterfaceC11892m e(@NonNull Activity activity) {
        return new C12996u((Activity) G0.A.r(activity), new M());
    }

    @NonNull
    public static InterfaceC11892m f(@NonNull Context context) {
        return new C12996u((Context) G0.A.r(context), new M());
    }
}
