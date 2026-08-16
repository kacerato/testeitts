package com.google.android.gms.common.images;

import G0.C2601y;
import android.net.Uri;
import androidx.annotation.Nullable;

public final class f {

    public final Uri f61356a;

    public f(Uri uri) {
        this.f61356a = uri;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            return C2601y.b(((f) obj).f61356a, this.f61356a);
        }
        return false;
    }

    public final int hashCode() {
        return C2601y.c(this.f61356a);
    }
}
