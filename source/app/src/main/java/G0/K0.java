package G0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.BinderWrapper;

public final class K0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new BinderWrapper[i10];
    }
}
