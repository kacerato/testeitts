package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;

public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new Parcelable.Creator<ParcelImpl>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelImpl[] newArray(int i10) {
            return new ParcelImpl[i10];
        }
    };
    private final VersionedParcelable mParcel;

    public ParcelImpl(VersionedParcelable versionedParcelable) {
        this.mParcel = versionedParcelable;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public <T extends VersionedParcelable> T getVersionedParcel() {
        return (T) this.mParcel;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        new VersionedParcelParcel(parcel).writeVersionedParcelable(this.mParcel);
    }

    public ParcelImpl(Parcel parcel) {
        this.mParcel = new VersionedParcelParcel(parcel).readVersionedParcelable();
    }
}
