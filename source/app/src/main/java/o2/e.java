package o2;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

public final class e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new d((PendingIntent) parcel.readParcelable(AbstractC14478a.class.getClassLoader()), parcel.readInt() != 0);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new AbstractC14478a[i10];
    }
}
