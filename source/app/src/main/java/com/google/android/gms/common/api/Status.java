package com.google.android.gms.common.api;

import B0.C2318c;
import G0.C2601y;
import I0.c;
import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;

@c.a(creator = "StatusCreator")
public final class Status extends I0.a implements u, ReflectedParcelable {

    @c.InterfaceC0186c(getter = "getStatusCode", id = 1)
    public final int f61046b;

    @Nullable
    @c.InterfaceC0186c(getter = "getStatusMessage", id = 2)
    public final String f61047c;

    @Nullable
    @c.InterfaceC0186c(getter = "getPendingIntent", id = 3)
    public final PendingIntent f61048d;

    @Nullable
    @c.InterfaceC0186c(getter = "getConnectionResult", id = 4)
    public final C2318c f61049e;

    @G0.F
    @NonNull
    @C0.a
    public static final Status f61038f = new Status(-1);

    @G0.F
    @NonNull
    @C0.a
    public static final Status f61039g = new Status(0);

    @G0.F
    @NonNull
    @C0.a
    public static final Status f61040h = new Status(14);

    @G0.F
    @NonNull
    @C0.a
    public static final Status f61041i = new Status(8);

    @G0.F
    @NonNull
    @C0.a
    public static final Status f61042j = new Status(15);

    @G0.F
    @NonNull
    @C0.a
    public static final Status f61043k = new Status(16);

    @G0.F
    @NonNull
    public static final Status f61045m = new Status(17);

    @NonNull
    @C0.a
    public static final Status f61044l = new Status(18);

    @NonNull
    public static final Parcelable.Creator<Status> CREATOR = new M();

    @c.b
    public Status(@c.e(id = 1) int i10, @Nullable @c.e(id = 2) String str, @Nullable @c.e(id = 3) PendingIntent pendingIntent, @Nullable @c.e(id = 4) C2318c c2318c) {
        this.f61046b = i10;
        this.f61047c = str;
        this.f61048d = pendingIntent;
        this.f61049e = c2318c;
    }

    @NonNull
    public final String A0() {
        String str = this.f61047c;
        return str != null ? str : C11900g.a(this.f61046b);
    }

    public int b0() {
        return this.f61046b;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f61046b == status.f61046b && C2601y.b(this.f61047c, status.f61047c) && C2601y.b(this.f61048d, status.f61048d) && C2601y.b(this.f61049e, status.f61049e);
    }

    @Override
    @NonNull
    public Status getStatus() {
        return this;
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(this.f61046b), this.f61047c, this.f61048d, this.f61049e);
    }

    @Nullable
    public C2318c n() {
        return this.f61049e;
    }

    @Nullable
    public String n0() {
        return this.f61047c;
    }

    @Nullable
    public PendingIntent t() {
        return this.f61048d;
    }

    @NonNull
    public String toString() {
        C2601y.a d10 = C2601y.d(this);
        d10.a("statusCode", A0());
        d10.a(MediaStore.Video.VideoColumns.RESOLUTION, this.f61048d);
        return d10.toString();
    }

    public boolean u0() {
        return this.f61048d != null;
    }

    public boolean v0() {
        return this.f61046b == 16;
    }

    public boolean w0() {
        return this.f61046b == 14;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, b0());
        I0.b.Y(parcel, 2, n0(), false);
        I0.b.S(parcel, 3, this.f61048d, i10, false);
        I0.b.S(parcel, 4, n(), i10, false);
        I0.b.b(parcel, a10);
    }

    public boolean x0() {
        return this.f61046b <= 0;
    }

    public void y0(@NonNull Activity activity, int i10) throws IntentSender.SendIntentException {
        if (u0()) {
            Bundle bundle = T0.v.u() ? y.a(ActivityOptions.makeBasic(), 1).toBundle() : null;
            PendingIntent pendingIntent = this.f61048d;
            G0.A.r(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0, bundle);
        }
    }

    public void z0(@NonNull ActivityResultLauncher<IntentSenderRequest> activityResultLauncher) {
        if (u0()) {
            PendingIntent pendingIntent = this.f61048d;
            G0.A.r(pendingIntent);
            activityResultLauncher.launch(new IntentSenderRequest.Builder(pendingIntent.getIntentSender()).build());
        }
    }

    public Status(int i10) {
        this(i10, (String) null);
    }

    public Status(@NonNull C2318c c2318c, @NonNull String str) {
        this(c2318c, str, 17);
    }

    public Status(int i10, @Nullable String str) {
        this(i10, str, (PendingIntent) null);
    }

    @C0.a
    @Deprecated
    public Status(@NonNull C2318c c2318c, @NonNull String str, int i10) {
        this(i10, str, c2318c.b0(), c2318c);
    }

    public Status(int i10, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(i10, str, pendingIntent, null);
    }
}
