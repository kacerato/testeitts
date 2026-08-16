package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C6748cP {

    public static final C6748cP f47035b;

    public final QC f47036a;

    static {
        int i10 = QC.f43505c;
        f47035b = new C6748cP(C7119ef0.f47742j);
    }

    public C6748cP(QC qc2) {
        this.f47036a = qc2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6748cP.class != obj.getClass()) {
            return false;
        }
        return this.f47036a.equals(((C6748cP) obj).f47036a);
    }

    public final int hashCode() {
        return this.f47036a.hashCode();
    }

    public final String toString() {
        return "KeepOptions{" + ((String) this.f47036a.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Objects.toString((EnumC6582bP) obj);
            }
        }).collect(Collectors.joining(", "))) + VectorFormat.DEFAULT_SUFFIX;
    }
}
