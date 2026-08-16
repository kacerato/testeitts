package com.google.android.gms.common.api;

import G0.C2601y;
import I0.c;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.apache.commons.math3.geometry.VectorFormat;

@C0.a
@c.a(creator = "ComplianceOptionsCreator")
public final class C11901h extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11901h> CREATOR;

    @NonNull
    public static final C11901h f61091f;

    @c.InterfaceC0186c(getter = "getCallerProductId", id = 1)
    public final int f61092b;

    @c.InterfaceC0186c(getter = "getDataOwnerProductId", id = 2)
    public final int f61093c;

    @c.InterfaceC0186c(getter = "getProcessingReason", id = 3)
    public final int f61094d;

    @c.InterfaceC0186c(defaultValue = "true", getter = "isUserData", id = 4)
    public final boolean f61095e;

    @C0.a
    public static final class a {

        public int f61096a = -1;

        public int f61097b = -1;

        public int f61098c = 0;

        public boolean f61099d = true;

        @NonNull
        @C0.a
        public C11901h a() {
            return new C11901h(this.f61096a, this.f61097b, this.f61098c, this.f61099d);
        }

        @NonNull
        @C0.a
        public a b(int i10) {
            this.f61096a = i10;
            return this;
        }

        @NonNull
        @C0.a
        public a c(int i10) {
            this.f61097b = i10;
            return this;
        }

        @NonNull
        @C0.a
        public a d(boolean z10) {
            this.f61099d = z10;
            return this;
        }

        @NonNull
        @C0.a
        public a e(int i10) {
            this.f61098c = i10;
            return this;
        }
    }

    static {
        a n10 = n();
        n10.b(-1);
        n10.c(-1);
        n10.e(0);
        n10.d(true);
        f61091f = n10.a();
        CREATOR = new K();
    }

    @c.b
    public C11901h(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @c.e(id = 3) int i12, @c.e(id = 4) boolean z10) {
        this.f61092b = i10;
        this.f61093c = i11;
        this.f61094d = i12;
        this.f61095e = z10;
    }

    @NonNull
    @C0.a
    public static a n() {
        return new a();
    }

    @NonNull
    @C0.a
    public static final a p(@NonNull Context context) {
        return n();
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C11901h)) {
            return false;
        }
        C11901h c11901h = (C11901h) obj;
        return this.f61092b == c11901h.f61092b && this.f61093c == c11901h.f61093c && this.f61094d == c11901h.f61094d && this.f61095e == c11901h.f61095e;
    }

    public final int hashCode() {
        return C2601y.c(Integer.valueOf(this.f61092b), Integer.valueOf(this.f61093c), Integer.valueOf(this.f61094d), Boolean.valueOf(this.f61095e));
    }

    @NonNull
    @C0.a
    public a t() {
        a aVar = new a();
        aVar.b(this.f61092b);
        aVar.c(this.f61093c);
        aVar.e(this.f61094d);
        aVar.d(this.f61095e);
        return aVar;
    }

    @NonNull
    public final String toString() {
        return "ComplianceOptions{callerProductId=" + this.f61092b + ", dataOwnerProductId=" + this.f61093c + ", processingReason=" + this.f61094d + ", isUserData=" + this.f61095e + VectorFormat.DEFAULT_SUFFIX;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f61092b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.F(parcel, 2, this.f61093c);
        I0.b.F(parcel, 3, this.f61094d);
        I0.b.g(parcel, 4, this.f61095e);
        I0.b.b(parcel, a10);
    }
}
