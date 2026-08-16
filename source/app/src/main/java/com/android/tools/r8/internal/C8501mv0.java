package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.List;

public final class C8501mv0 {

    public static final int f50456f = 0;

    public List f50457a;

    public List f50458b;

    public List f50459c;

    public List f50460d;

    public List f50461e;

    static {
        new C8334lv0().a();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8501mv0)) {
            return false;
        }
        C8501mv0 c8501mv0 = (C8501mv0) obj;
        return Arrays.equals(new Object[]{this.f50457a, this.f50458b, this.f50459c, this.f50460d, this.f50461e}, new Object[]{c8501mv0.f50457a, c8501mv0.f50458b, c8501mv0.f50459c, c8501mv0.f50460d, c8501mv0.f50461e});
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f50457a, this.f50458b, this.f50459c, this.f50460d, this.f50461e});
    }
}
