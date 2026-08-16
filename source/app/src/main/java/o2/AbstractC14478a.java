package o2;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

@SuppressLint({"RestrictedApi"})
public abstract class AbstractC14478a implements Parcelable {
    public static final Parcelable.Creator<AbstractC14478a> CREATOR = new e();

    public static AbstractC14478a d(PendingIntent pendingIntent, boolean z10) {
        return new d(pendingIntent, false);
    }

    public abstract PendingIntent b();

    public abstract boolean c();

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(b(), 0);
        parcel.writeInt(c() ? 1 : 0);
    }
}
