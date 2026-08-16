package com.google.android.gms.measurement.internal;

import B0.r;
import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;

public final class C12274d3 {
    public static String a(Context context) {
        try {
            return context.getResources().getResourcePackageName(r.b.f1276a);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }

    @Nullable
    public static final String b(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier(K2.p.f10763i, TypedValues.Custom.S_STRING, str2);
        if (identifier != 0) {
            try {
            } catch (Resources.NotFoundException unused) {
                return null;
            }
        }
        return resources.getString(identifier);
    }

    @Nullable
    public static final Boolean c(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier("google_analytics_force_disable_updates", "bool", str2);
        if (identifier != 0) {
            try {
            } catch (Resources.NotFoundException unused) {
                return null;
            }
        }
        return Boolean.valueOf(resources.getBoolean(identifier));
    }
}
