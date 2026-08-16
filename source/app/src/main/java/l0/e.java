package L0;

import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "ModuleInstallIntentResponseCreator")
public class e extends I0.a {

    @NonNull
    public static final Parcelable.Creator<e> CREATOR = new k();

    @Nullable
    @c.InterfaceC0186c(getter = "getPendingIntent", id = 1)
    public final PendingIntent f11502b;

    @c.b
    @C0.a
    public e(@Nullable @c.e(id = 1) PendingIntent pendingIntent) {
        this.f11502b = pendingIntent;
    }

    @Nullable
    public PendingIntent n() {
        return this.f11502b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, n(), i10, false);
        I0.b.b(parcel, a10);
    }
}
