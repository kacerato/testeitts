package com.android.tools.r8.internal;

public final class OQ {
    public static final void a(ML ml2) {
        int i10 = ml2.f42275b;
        if (i10 >= 1 && (i10 > 1 || ml2.f42276c >= 4)) {
            ML ml3 = ML.f42274e;
            if (ml2.compareTo(ml3) <= 0) {
                return;
            }
            throw new IllegalArgumentException(("kotlinx-metadata-jvm cannot write metadata for future compiler versions. Requested to write version " + ((Object) ml2) + ", but highest known version is " + ((Object) ml3)).toString());
        }
        throw new IllegalArgumentException(("This version of kotlinx-metadata-jvm doesn't support writing Kotlin metadata of version earlier than 1.4. Please change the version from " + ((Object) ml2) + " to at least [1, 4].").toString());
    }

    public static void a(String str, boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException(AbstractC4917Be0.a("This ", str, " cannot be written because it represents metadata read in lenient mode"));
        }
    }
}
